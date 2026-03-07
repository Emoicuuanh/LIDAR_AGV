; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ArduinoIO.msg.html

(cl:defclass <ArduinoIO> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (EMG
    :reader EMG
    :initarg :EMG
    :type cl:boolean
    :initform cl:nil)
   (Start_1
    :reader Start_1
    :initarg :Start_1
    :type cl:boolean
    :initform cl:nil)
   (Start_2
    :reader Start_2
    :initarg :Start_2
    :type cl:boolean
    :initform cl:nil)
   (Stop_1
    :reader Stop_1
    :initarg :Stop_1
    :type cl:boolean
    :initform cl:nil)
   (Stop_2
    :reader Stop_2
    :initarg :Stop_2
    :type cl:boolean
    :initform cl:nil)
   (Remote_A
    :reader Remote_A
    :initarg :Remote_A
    :type cl:boolean
    :initform cl:nil)
   (Remote_B
    :reader Remote_B
    :initarg :Remote_B
    :type cl:boolean
    :initform cl:nil)
   (Motor1_En
    :reader Motor1_En
    :initarg :Motor1_En
    :type cl:boolean
    :initform cl:nil)
   (Motor1_Break
    :reader Motor1_Break
    :initarg :Motor1_Break
    :type cl:boolean
    :initform cl:nil)
   (Motor1_Dir
    :reader Motor1_Dir
    :initarg :Motor1_Dir
    :type cl:boolean
    :initform cl:nil)
   (Motor2_En
    :reader Motor2_En
    :initarg :Motor2_En
    :type cl:boolean
    :initform cl:nil)
   (Motor2_Break
    :reader Motor2_Break
    :initarg :Motor2_Break
    :type cl:boolean
    :initform cl:nil)
   (Motor2_Dir
    :reader Motor2_Dir
    :initarg :Motor2_Dir
    :type cl:boolean
    :initform cl:nil)
   (Bumper_1
    :reader Bumper_1
    :initarg :Bumper_1
    :type cl:boolean
    :initform cl:nil)
   (Bumper_2
    :reader Bumper_2
    :initarg :Bumper_2
    :type cl:boolean
    :initform cl:nil)
   (lift_max
    :reader lift_max
    :initarg :lift_max
    :type cl:boolean
    :initform cl:nil)
   (lift_min
    :reader lift_min
    :initarg :lift_min
    :type cl:boolean
    :initform cl:nil)
   (auto_man_sw
    :reader auto_man_sw
    :initarg :auto_man_sw
    :type cl:boolean
    :initform cl:nil)
   (Release_motor
    :reader Release_motor
    :initarg :Release_motor
    :type cl:boolean
    :initform cl:nil)
   (Battery_1
    :reader Battery_1
    :initarg :Battery_1
    :type cl:float
    :initform 0.0)
   (Battery_2
    :reader Battery_2
    :initarg :Battery_2
    :type cl:float
    :initform 0.0)
   (Battery_3
    :reader Battery_3
    :initarg :Battery_3
    :type cl:float
    :initform 0.0)
   (Battery_4
    :reader Battery_4
    :initarg :Battery_4
    :type cl:float
    :initform 0.0)
   (Charging
    :reader Charging
    :initarg :Charging
    :type cl:boolean
    :initform cl:nil)
   (Encoder_Left
    :reader Encoder_Left
    :initarg :Encoder_Left
    :type cl:integer
    :initform 0)
   (Encoder_Right
    :reader Encoder_Right
    :initarg :Encoder_Right
    :type cl:integer
    :initform 0)
   (Safety_1
    :reader Safety_1
    :initarg :Safety_1
    :type cl:fixnum
    :initform 0)
   (Safety_2
    :reader Safety_2
    :initarg :Safety_2
    :type cl:fixnum
    :initform 0)
   (Safety_3
    :reader Safety_3
    :initarg :Safety_3
    :type cl:fixnum
    :initform 0)
   (Safety_4
    :reader Safety_4
    :initarg :Safety_4
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArduinoIO (<ArduinoIO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArduinoIO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArduinoIO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ArduinoIO> is deprecated: use agv_msgs-msg:ArduinoIO instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'EMG-val :lambda-list '(m))
(cl:defmethod EMG-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:EMG-val is deprecated.  Use agv_msgs-msg:EMG instead.")
  (EMG m))

(cl:ensure-generic-function 'Start_1-val :lambda-list '(m))
(cl:defmethod Start_1-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Start_1-val is deprecated.  Use agv_msgs-msg:Start_1 instead.")
  (Start_1 m))

(cl:ensure-generic-function 'Start_2-val :lambda-list '(m))
(cl:defmethod Start_2-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Start_2-val is deprecated.  Use agv_msgs-msg:Start_2 instead.")
  (Start_2 m))

(cl:ensure-generic-function 'Stop_1-val :lambda-list '(m))
(cl:defmethod Stop_1-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Stop_1-val is deprecated.  Use agv_msgs-msg:Stop_1 instead.")
  (Stop_1 m))

(cl:ensure-generic-function 'Stop_2-val :lambda-list '(m))
(cl:defmethod Stop_2-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Stop_2-val is deprecated.  Use agv_msgs-msg:Stop_2 instead.")
  (Stop_2 m))

(cl:ensure-generic-function 'Remote_A-val :lambda-list '(m))
(cl:defmethod Remote_A-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Remote_A-val is deprecated.  Use agv_msgs-msg:Remote_A instead.")
  (Remote_A m))

(cl:ensure-generic-function 'Remote_B-val :lambda-list '(m))
(cl:defmethod Remote_B-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Remote_B-val is deprecated.  Use agv_msgs-msg:Remote_B instead.")
  (Remote_B m))

(cl:ensure-generic-function 'Motor1_En-val :lambda-list '(m))
(cl:defmethod Motor1_En-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Motor1_En-val is deprecated.  Use agv_msgs-msg:Motor1_En instead.")
  (Motor1_En m))

(cl:ensure-generic-function 'Motor1_Break-val :lambda-list '(m))
(cl:defmethod Motor1_Break-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Motor1_Break-val is deprecated.  Use agv_msgs-msg:Motor1_Break instead.")
  (Motor1_Break m))

(cl:ensure-generic-function 'Motor1_Dir-val :lambda-list '(m))
(cl:defmethod Motor1_Dir-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Motor1_Dir-val is deprecated.  Use agv_msgs-msg:Motor1_Dir instead.")
  (Motor1_Dir m))

(cl:ensure-generic-function 'Motor2_En-val :lambda-list '(m))
(cl:defmethod Motor2_En-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Motor2_En-val is deprecated.  Use agv_msgs-msg:Motor2_En instead.")
  (Motor2_En m))

(cl:ensure-generic-function 'Motor2_Break-val :lambda-list '(m))
(cl:defmethod Motor2_Break-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Motor2_Break-val is deprecated.  Use agv_msgs-msg:Motor2_Break instead.")
  (Motor2_Break m))

(cl:ensure-generic-function 'Motor2_Dir-val :lambda-list '(m))
(cl:defmethod Motor2_Dir-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Motor2_Dir-val is deprecated.  Use agv_msgs-msg:Motor2_Dir instead.")
  (Motor2_Dir m))

(cl:ensure-generic-function 'Bumper_1-val :lambda-list '(m))
(cl:defmethod Bumper_1-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Bumper_1-val is deprecated.  Use agv_msgs-msg:Bumper_1 instead.")
  (Bumper_1 m))

(cl:ensure-generic-function 'Bumper_2-val :lambda-list '(m))
(cl:defmethod Bumper_2-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Bumper_2-val is deprecated.  Use agv_msgs-msg:Bumper_2 instead.")
  (Bumper_2 m))

(cl:ensure-generic-function 'lift_max-val :lambda-list '(m))
(cl:defmethod lift_max-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:lift_max-val is deprecated.  Use agv_msgs-msg:lift_max instead.")
  (lift_max m))

(cl:ensure-generic-function 'lift_min-val :lambda-list '(m))
(cl:defmethod lift_min-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:lift_min-val is deprecated.  Use agv_msgs-msg:lift_min instead.")
  (lift_min m))

(cl:ensure-generic-function 'auto_man_sw-val :lambda-list '(m))
(cl:defmethod auto_man_sw-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:auto_man_sw-val is deprecated.  Use agv_msgs-msg:auto_man_sw instead.")
  (auto_man_sw m))

(cl:ensure-generic-function 'Release_motor-val :lambda-list '(m))
(cl:defmethod Release_motor-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Release_motor-val is deprecated.  Use agv_msgs-msg:Release_motor instead.")
  (Release_motor m))

(cl:ensure-generic-function 'Battery_1-val :lambda-list '(m))
(cl:defmethod Battery_1-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Battery_1-val is deprecated.  Use agv_msgs-msg:Battery_1 instead.")
  (Battery_1 m))

(cl:ensure-generic-function 'Battery_2-val :lambda-list '(m))
(cl:defmethod Battery_2-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Battery_2-val is deprecated.  Use agv_msgs-msg:Battery_2 instead.")
  (Battery_2 m))

(cl:ensure-generic-function 'Battery_3-val :lambda-list '(m))
(cl:defmethod Battery_3-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Battery_3-val is deprecated.  Use agv_msgs-msg:Battery_3 instead.")
  (Battery_3 m))

(cl:ensure-generic-function 'Battery_4-val :lambda-list '(m))
(cl:defmethod Battery_4-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Battery_4-val is deprecated.  Use agv_msgs-msg:Battery_4 instead.")
  (Battery_4 m))

(cl:ensure-generic-function 'Charging-val :lambda-list '(m))
(cl:defmethod Charging-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Charging-val is deprecated.  Use agv_msgs-msg:Charging instead.")
  (Charging m))

(cl:ensure-generic-function 'Encoder_Left-val :lambda-list '(m))
(cl:defmethod Encoder_Left-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Encoder_Left-val is deprecated.  Use agv_msgs-msg:Encoder_Left instead.")
  (Encoder_Left m))

(cl:ensure-generic-function 'Encoder_Right-val :lambda-list '(m))
(cl:defmethod Encoder_Right-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Encoder_Right-val is deprecated.  Use agv_msgs-msg:Encoder_Right instead.")
  (Encoder_Right m))

(cl:ensure-generic-function 'Safety_1-val :lambda-list '(m))
(cl:defmethod Safety_1-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Safety_1-val is deprecated.  Use agv_msgs-msg:Safety_1 instead.")
  (Safety_1 m))

(cl:ensure-generic-function 'Safety_2-val :lambda-list '(m))
(cl:defmethod Safety_2-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Safety_2-val is deprecated.  Use agv_msgs-msg:Safety_2 instead.")
  (Safety_2 m))

(cl:ensure-generic-function 'Safety_3-val :lambda-list '(m))
(cl:defmethod Safety_3-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Safety_3-val is deprecated.  Use agv_msgs-msg:Safety_3 instead.")
  (Safety_3 m))

(cl:ensure-generic-function 'Safety_4-val :lambda-list '(m))
(cl:defmethod Safety_4-val ((m <ArduinoIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Safety_4-val is deprecated.  Use agv_msgs-msg:Safety_4 instead.")
  (Safety_4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArduinoIO>) ostream)
  "Serializes a message object of type '<ArduinoIO>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'EMG) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Start_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Start_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Stop_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Stop_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Remote_A) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Remote_B) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor1_En) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor1_Break) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor1_Dir) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor2_En) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor2_Break) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Motor2_Dir) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Bumper_1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Bumper_2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lift_max) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lift_min) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_man_sw) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Release_motor) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Battery_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Battery_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Battery_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Battery_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Charging) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Encoder_Left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Encoder_Right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_4)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArduinoIO>) istream)
  "Deserializes a message object of type '<ArduinoIO>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'EMG) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Start_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Start_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Stop_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Stop_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Remote_A) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Remote_B) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor1_En) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor1_Break) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor1_Dir) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor2_En) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor2_Break) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Motor2_Dir) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Bumper_1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Bumper_2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lift_max) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lift_min) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_man_sw) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Release_motor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'Charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Encoder_Left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Encoder_Right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Safety_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Safety_4)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArduinoIO>)))
  "Returns string type for a message object of type '<ArduinoIO>"
  "agv_msgs/ArduinoIO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArduinoIO)))
  "Returns string type for a message object of type 'ArduinoIO"
  "agv_msgs/ArduinoIO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArduinoIO>)))
  "Returns md5sum for a message object of type '<ArduinoIO>"
  "675bff81b91834773820b3bad7d42153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArduinoIO)))
  "Returns md5sum for a message object of type 'ArduinoIO"
  "675bff81b91834773820b3bad7d42153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArduinoIO>)))
  "Returns full string definition for message of type '<ArduinoIO>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool EMG~%bool Start_1~%bool Start_2~%bool Stop_1~%bool Stop_2~%bool Remote_A~%bool Remote_B~%bool Motor1_En~%bool Motor1_Break~%bool Motor1_Dir~%bool Motor2_En~%bool Motor2_Break~%bool Motor2_Dir~%bool Bumper_1~%bool Bumper_2~%bool lift_max~%bool lift_min~%bool auto_man_sw~%bool Release_motor~%float32 Battery_1~%float32 Battery_2~%float32 Battery_3~%float32 Battery_4~%bool Charging~%int32 Encoder_Left~%int32 Encoder_Right~%uint16 Safety_1~%uint16 Safety_2~%uint16 Safety_3~%uint16 Safety_4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArduinoIO)))
  "Returns full string definition for message of type 'ArduinoIO"
  (cl:format cl:nil "std_msgs/Header header~%~%bool EMG~%bool Start_1~%bool Start_2~%bool Stop_1~%bool Stop_2~%bool Remote_A~%bool Remote_B~%bool Motor1_En~%bool Motor1_Break~%bool Motor1_Dir~%bool Motor2_En~%bool Motor2_Break~%bool Motor2_Dir~%bool Bumper_1~%bool Bumper_2~%bool lift_max~%bool lift_min~%bool auto_man_sw~%bool Release_motor~%float32 Battery_1~%float32 Battery_2~%float32 Battery_3~%float32 Battery_4~%bool Charging~%int32 Encoder_Left~%int32 Encoder_Right~%uint16 Safety_1~%uint16 Safety_2~%uint16 Safety_3~%uint16 Safety_4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArduinoIO>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
     1
     4
     4
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArduinoIO>))
  "Converts a ROS message object to a list"
  (cl:list 'ArduinoIO
    (cl:cons ':header (header msg))
    (cl:cons ':EMG (EMG msg))
    (cl:cons ':Start_1 (Start_1 msg))
    (cl:cons ':Start_2 (Start_2 msg))
    (cl:cons ':Stop_1 (Stop_1 msg))
    (cl:cons ':Stop_2 (Stop_2 msg))
    (cl:cons ':Remote_A (Remote_A msg))
    (cl:cons ':Remote_B (Remote_B msg))
    (cl:cons ':Motor1_En (Motor1_En msg))
    (cl:cons ':Motor1_Break (Motor1_Break msg))
    (cl:cons ':Motor1_Dir (Motor1_Dir msg))
    (cl:cons ':Motor2_En (Motor2_En msg))
    (cl:cons ':Motor2_Break (Motor2_Break msg))
    (cl:cons ':Motor2_Dir (Motor2_Dir msg))
    (cl:cons ':Bumper_1 (Bumper_1 msg))
    (cl:cons ':Bumper_2 (Bumper_2 msg))
    (cl:cons ':lift_max (lift_max msg))
    (cl:cons ':lift_min (lift_min msg))
    (cl:cons ':auto_man_sw (auto_man_sw msg))
    (cl:cons ':Release_motor (Release_motor msg))
    (cl:cons ':Battery_1 (Battery_1 msg))
    (cl:cons ':Battery_2 (Battery_2 msg))
    (cl:cons ':Battery_3 (Battery_3 msg))
    (cl:cons ':Battery_4 (Battery_4 msg))
    (cl:cons ':Charging (Charging msg))
    (cl:cons ':Encoder_Left (Encoder_Left msg))
    (cl:cons ':Encoder_Right (Encoder_Right msg))
    (cl:cons ':Safety_1 (Safety_1 msg))
    (cl:cons ':Safety_2 (Safety_2 msg))
    (cl:cons ':Safety_3 (Safety_3 msg))
    (cl:cons ':Safety_4 (Safety_4 msg))
))
