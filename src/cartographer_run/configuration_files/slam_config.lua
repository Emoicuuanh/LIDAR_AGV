-- Dùng để tạo map

include "map_builder.lua"
include "trajectory_builder.lua"

options = {
  map_builder = MAP_BUILDER,
  trajectory_builder = TRAJECTORY_BUILDER,
  map_frame = "map",
  tracking_frame = "base_footprint",
  published_frame = "odom",
  odom_frame = "odom",
  provide_odom_frame = false,
  publish_frame_projected_to_2d = true,
  use_odometry = true,
  use_nav_sat = false,
  use_landmarks = false,
  num_laser_scans = 1,
  num_multi_echo_laser_scans = 0,
  num_subdivisions_per_laser_scan = 16,
  num_point_clouds = 0,
  lookup_transform_timeout_sec = 0.2,
  submap_publish_period_sec = 0.3,
  pose_publish_period_sec = 5e-3,
  trajectory_publish_period_sec = 0.1,
  rangefinder_sampling_ratio = 1.,
  odometry_sampling_ratio = 1.,
  fixed_frame_pose_sampling_ratio = 1.,
  imu_sampling_ratio = .5,
  landmarks_sampling_ratio = 1.,
}

MAP_BUILDER.use_trajectory_builder_2d = true
MAP_BUILDER.num_background_threads = 3
TRAJECTORY_BUILDER_2D.use_imu_data = false

-- TRAJECTORY_BUILDER_2D.submaps.num_range_data = 200
TRAJECTORY_BUILDER_2D.submaps.grid_options_2d.resolution = 0.05
TRAJECTORY_BUILDER_2D.submaps.num_range_data =
  1.0 * TRAJECTORY_BUILDER_2D.submaps.num_range_data
TRAJECTORY_BUILDER_2D.max_range = 30.
TRAJECTORY_BUILDER_2D.missing_data_ray_length = 5.

TRAJECTORY_BUILDER_2D.voxel_filter_size = 0.05
TRAJECTORY_BUILDER_2D.adaptive_voxel_filter.min_num_points = 100

TRAJECTORY_BUILDER_2D.motion_filter.max_time_seconds = 5.0
TRAJECTORY_BUILDER_2D.motion_filter.max_distance_meters = 0.1
TRAJECTORY_BUILDER_2D.num_accumulated_range_data =
  options.num_laser_scans * options.num_subdivisions_per_laser_scan

TRAJECTORY_BUILDER_2D.use_online_correlative_scan_matching = true
TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.linear_search_window = .05
TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.angular_search_window = math.rad(4.)

TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 2e2
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 4e2

POSE_GRAPH.optimization_problem.huber_scale = 5

-- ============================================================
-- 🔧 CONSTRAINT BUILDER - Giảm số lượng inter constraints
-- ============================================================
POSE_GRAPH.constraint_builder.min_score = .65  -- Tăng từ 0.6 → chỉ chấp nhận match tốt hơn

-- ⭐ QUAN TRỌNG: Giảm tỉ lệ sampling để giảm số lượng constraints
POSE_GRAPH.constraint_builder.sampling_ratio = 0.1  -- Giảm từ 0.3 → chỉ sample 10% nodes
-- Với sampling_ratio = 0.1, nếu có 1000 nodes thì chỉ tạo ~100 constraints thay vì 300

-- ⭐ QUAN TRỌNG: Giảm phạm vi tìm kiếm loop closure
POSE_GRAPH.constraint_builder.max_constraint_distance = 10.0  -- Giảm từ 15m → chỉ tìm trong 10m
-- Giảm vùng tìm kiếm → ít match → ít constraint

-- Global localization với min score cao hơn
POSE_GRAPH.constraint_builder.global_localization_min_score = 0.7

-- ============================================================
-- 🔍 FAST CORRELATIVE SCAN MATCHER - Thu hẹp vùng tìm kiếm
-- ============================================================
POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.linear_search_window = 5.0  -- Giảm từ 7m
POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.angular_search_window = math.rad(20.)  -- Giảm từ 30 độ
POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher.branch_and_bound_depth = 7

-- ============================================================
-- 🎯 CERES SCAN MATCHER - Tối ưu hóa chính xác
-- ============================================================
POSE_GRAPH.constraint_builder.ceres_scan_matcher.occupied_space_weight = 20.
POSE_GRAPH.constraint_builder.ceres_scan_matcher.translation_weight = 10.
POSE_GRAPH.constraint_builder.ceres_scan_matcher.rotation_weight = 1.

-- ============================================================
-- 🔄 OPTIMIZATION PROBLEM - Weights cho các loại constraints
-- ============================================================
POSE_GRAPH.optimization_problem.local_slam_pose_translation_weight = 1e5
POSE_GRAPH.optimization_problem.local_slam_pose_rotation_weight = 1e4
POSE_GRAPH.optimization_problem.odometry_translation_weight = 1e5
POSE_GRAPH.optimization_problem.odometry_rotation_weight = 1e1

-- Loop closure weights - tăng để inter constraints có trọng số hợp lý
-- POSE_GRAPH.optimization_problem.loop_closure_translation_weight = 1.5e4  -- Tăng từ 1.1e4
-- POSE_GRAPH.optimization_problem.loop_closure_rotation_weight = 1.2e5    -- Tăng từ 1e5

-- ============================================================
-- ⚡ OPTIMIZATION FREQUENCY
-- ============================================================
POSE_GRAPH.optimize_every_n_nodes = 120  -- Tăng từ 90 → giảm tần suất optimization

return options