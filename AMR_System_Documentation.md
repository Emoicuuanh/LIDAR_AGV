# Tài liệu hệ thống AMR – Lưu đồ tổng quan

## 1. Sơ đồ khởi động hệ thống (`amr_startup.launch`)

```mermaid
graph TD
    START([amr_startup.launch]) --> HW[Hardware Layer]
    START --> NAV[Navigation Layer]
    START --> MISSION[Mission Layer]
    START --> SAFETY[Safety Layer]
    START --> UI[UI / Peripheral Layer]

    HW --> HW1[arduino_bridge\nĐọc encoder, IMU, IO]
    HW --> HW2[amr_bringup\nVelocity mux, Joystick]
    HW --> HW3[robot_pose_publisher\nPublish /robot_pose]
    HW --> HW4[reset_arduino\nWatchdog Arduino]

    NAV --> NAV1[lidar_signal_new\nDriver Lidar]
    NAV --> NAV2[laser_filter\nLọc điểm Lidar]
    NAV --> NAV3[move_base\nNavigation Stack]
    NAV --> NAV4[slam_manager\nQuản lý bản đồ/localization]
    NAV --> NAV5[qr_localization\nLocalization bằng QR]

    MISSION --> M1[control_system\nRobot state machine]
    MISSION --> M2[moving_control\nĐiều khiển di chuyển]
    MISSION --> M3[mission_manager\nQuản lý mission]
    MISSION --> M4[trigger_mission_server\nKích hoạt mission]
    MISSION --> M5[trigger_mission_by_name\nXử lý trigger]

    SAFETY --> S1[safety_tof_sensor\nCảm biến TOF]
    SAFETY --> S2[scan_safety\nAn toàn từ Lidar]

    UI --> UI1[sound_control\nÂm thanh]
    UI --> UI2[led_control\nĐèn LED]
    UI --> UI3[qr_tracker\nTheo dõi QR]
    UI --> UI4[log_odom\nGhi log odometry]
    UI --> UI5[mirror_detect\nPhát hiện gương]
    UI --> UI6[traffic_control\nKiểm soát giao thông]
```

---

## 2. Kiến trúc điều khiển vận tốc

```mermaid
graph LR
    MB[move_base\ncmd_vel] -->|navigation| AMUX
    MTP[moving_control\nmtp_cmd_vel] -->|move_to_point| AMUX

    AMUX[auto_cmd_vel_mux\nChọn nguồn tự động] --> SMOOTHER_A{use_smoother_vel?}
    SMOOTHER_A -->|YES| VS_A[yocs_velocity_smoother\nauto]
    SMOOTHER_A -->|NO| FMUX

    VS_A -->|smoothed| FMUX

    JOY[Joystick\nteleop_joy_cmd_vel] --> SMOOTHER_J{use_smoother_joystick?}
    SMOOTHER_J -->|YES| VS_J[yocs_velocity_smoother\njoystick]
    SMOOTHER_J -->|NO| FMUX

    VS_J -->|smoothed| FMUX

    SAFETY_VEL[safety_cmd_vel] -->|ưu tiên cao| FMUX
    RETRY[retry_docking_cmd_vel] -->|ưu tiên cao nhất| FMUX

    FMUX[final_cmd_vel_mux\nChọn nguồn cuối cùng] -->|output| MOTOR[Động cơ\nKeya Servo]
```

**Thứ tự ưu tiên (cao → thấp):**
1. `retry_docking_cmd_vel` – xử lý lỗi docking
2. `safety_cmd_vel` – dừng khẩn cấp
3. `teleop_joy` – joystick thủ công
4. `auto` – điều hướng tự động

---

## 3. Luồng thực thi Mission

```mermaid
sequenceDiagram
    participant SERVER as Server/HMI
    participant TMS as trigger_mission_server
    participant TMN as trigger_mission_by_name
    participant DB as MongoDB
    participant MM as mission_manager
    participant MC as moving_control / docking / ...

    SERVER->>TMS: Action goal (START)
    TMS->>DB: Đọc queue mission
    DB-->>TMS: Tên mission đầu tiên
    TMS->>TMN: publish tên_mission
    TMN->>TMN: sleep 3s
    TMN->>DB: emptyQueueMission()
    TMN->>DB: newMissionQueue(tên_mission)
    TMN->>MM: publish START

    MM->>DB: getQueueMission(vị_trí_hiện_tại)
    DB-->>MM: Danh sách actions
    loop Từng action
        MM->>MM: Kiểm tra cần undocking?
        alt Cần undocking
            MM->>MC: Send undocking goal
            MC-->>MM: SUCCEEDED
        end
        MM->>MC: Send action goal
        MC-->>MM: Feedback mỗi 5s
        MC-->>MM: SUCCEEDED / FAILED
    end
    MM->>DB: recordMissionLog SUCCEEDED
    MM->>DB: deleteQueueMission()
```

---

## 4. State Machine – Mission Manager

```mermaid
stateDiagram-v2
    [*] --> INIT

    INIT --> SEND_ACTION_GOAL : Đọc DB thành công
    INIT --> ROBOT_NOT_IN_POSE : Robot sai vị trí
    INIT --> SERVER_DATA_ERROR : JSON lỗi

    SEND_ACTION_GOAL --> UNDOCKING : Cần undocking
    SEND_ACTION_GOAL --> WAIT_RESULT : Gửi goal thành công
    SEND_ACTION_GOAL --> MISSING_ACTION_DATA : Thiếu data
    SEND_ACTION_GOAL --> DUPLICATE_MARKER : Marker trùng
    SEND_ACTION_GOAL --> MARKER_DIR_WRONG : Sai hướng marker

    UNDOCKING --> SEND_ACTION_GOAL : Undocking OK
    UNDOCKING --> UNDOCKING_ERROR : Undocking FAIL
    UNDOCKING --> UNDOCKING_DISCONNECTED : Timeout 5s
    UNDOCKING --> PAUSED : pause_req

    WAIT_RESULT --> SEND_ACTION_GOAL : Action SUCCEEDED còn action tiếp
    WAIT_RESULT --> INIT : Action SUCCEEDED hết mission
    WAIT_RESULT --> ACTION_EXEC_ERROR : Action FAILED
    WAIT_RESULT --> ERROR : Timeout 5s
    WAIT_RESULT --> PAUSED : pause_req

    PAUSED --> WAIT_RESULT : resume_req
    PAUSED --> UNDOCKING : resume_req khi đang undocking

    ERROR --> SEND_ACTION_GOAL : reset_error
    ACTION_EXEC_ERROR --> SEND_ACTION_GOAL : reset_error
    UNDOCKING_ERROR --> UNDOCKING : reset_error
    UNDOCKING_DISCONNECTED --> SEND_ACTION_GOAL : reset_error
    ROBOT_NOT_IN_POSE --> INIT : reset_error
    SERVER_DATA_ERROR --> INIT : reset_error
    MISSING_ACTION_DATA --> INIT : reset_error
    DUPLICATE_MARKER --> INIT : reset_error
    MARKER_DIR_WRONG --> INIT : reset_error
```

---

## 5. State Machine – QR Label Tracker

```mermaid
stateDiagram-v2
    [*] --> INIT
    INIT --> NORMAL : Khởi tạo xong

    NORMAL --> ERROR : lost_qr_at_goal == True
    ERROR --> NORMAL : reset_req + QR đọc được trong 0.2s + QR trong 0.5m của path

    NORMAL --> NORMAL_BYPASS : Robot MANUAL hoặc mission WAITING
    NORMAL_BYPASS --> NORMAL : Robot AUTO và mission RUNNING
```

**Ghi chú:** Kiểm tra `robot_is_on_label()` đang bị tắt bởi `if False and ...` trong code

---

## 6. Sơ đồ Localization & Bản đồ

```mermaid
graph TD
    LIDAR[Lidar\n/scan] --> SLAM[slam_manager\nCartographer / AMCL]
    QR[QR Reader\n/data_gls621] --> QR_LOC[qr_localization\nCorrect pose từ QR]
    ODOM[Arduino Encoder\n/odom] --> SLAM
    IMU[IMU\n/imu] --> SLAM

    SLAM -->|/map| MB[move_base]
    QR_LOC -->|/initialpose| SLAM
    QR_LOC -->|/robot_pose| QR_TRACKER[qr_label_tracker]

    MB -->|/tf map to odom to base| ROBOT_POSE[robot_pose_publisher\n/robot_pose]
    ROBOT_POSE --> MM[mission_manager]
    ROBOT_POSE --> QR_TRACKER
```

---

## 7. Sơ đồ các Topic chính

```mermaid
graph LR
    subgraph SENSOR [Cảm biến]
        S1[/scan - Lidar/]
        S2[/data_gls621 - QR/]
        S3[/odom - Encoder/]
        S4[/standard_io - IO/]
    end

    subgraph NAVIGATION [Điều hướng]
        N1[move_base]
        N2[slam_manager]
        N3[qr_localization]
    end

    subgraph CONTROL [Điều khiển]
        C1[control_system]
        C2[moving_control]
        C3[final_cmd_vel_mux]
        C4[Động cơ]
    end

    subgraph MISSION [Mission]
        M1[mission_manager]
        M2[docking_charger]
        M3[qr_label_tracker]
    end

    S1 --> N1
    S1 --> N2
    S2 --> N3
    S2 --> M3
    S3 --> N1
    S3 --> N2

    N1 -->|cmd_vel| C3
    N3 -->|initialpose| N2
    N2 -->|tf map to odom| N1

    C1 -->|robot_status| M1
    C1 -->|robot_status| M3
    M1 -->|module_status| M3
    M1 -->|module_status| C1
    M1 -->|goal| C2
    M1 -->|goal| M2

    C2 -->|mtp_cmd_vel| C3
    M2 -->|retry_docking_cmd_vel| C3
    C3 -->|final output| C4

    S4 --> C1
    S4 --> M1
```

---

## 8. Tóm tắt các Package chính

| Package | Vai trò | Giao tiếp chính |
|---------|---------|----------------|
| `amr_bringup` | Velocity mux, joystick, hardware init | `/final_cmd_vel_mux/output` |
| `move_base` | Path planning + local planner NEO | `cmd_vel`, `/map`, `/tf` |
| `slam_manager` | Quản lý Cartographer/AMCL, chuyển map | `/map`, `/tf` |
| `qr_localization` | Hiệu chỉnh vị trí bằng QR | `/initialpose`, `/robot_pose` |
| `qr_label_tracker` | Giám sát robot có bám theo QR không | Module status |
| `control_system` | State machine tổng của robot AUTO/MANUAL/ERROR | `robot_status` |
| `moving_control` | Action server di chuyển theo waypoint | `mtp_cmd_vel` |
| `mission_manager` | Điều phối toàn bộ mission từ DB | Action server |
| `docking_charger` | Tự động dock sạc | Action server |
| `trigger_mission_*` | Kích hoạt mission theo tên | MongoDB, `request_start_mission` |
| `yocs_velocity_smoother` | Làm mượt vận tốc tránh giật | Nodelet |
| `safety_tof_sensor` | Cảm biến TOF an toàn | `safety_cmd_vel` |
