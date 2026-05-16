#include "MapAsImageProvider.h"

MapAsImageProvider::MapAsImageProvider(ros::NodeHandle nh, int32_t thresh_occ,
                                       uint16_t tile_width,
                                       uint16_t tile_height,
                                       bool robot_indicator, bool full_map,
                                       bool map_tile)
{
  node_handle = nh;
  print_robot_indicator = robot_indicator;
  enable_full_map_publisher = full_map;
  enable_map_tile_publisher = map_tile;
  thresh_occupancy = thresh_occ;
  image_transport_ = new image_transport::ImageTransport(node_handle);
  if (enable_full_map_publisher)
  {
    image_transport_publisher_full_ =
        image_transport_->advertise("/map_image/full", 1, true);
    cv_img_full_.header.frame_id = "map_image";
    cv_img_full_.encoding = sensor_msgs::image_encodings::MONO8;
    cv_img_full_.image =
        cv::Mat(INITIAL_MAP_SIZE_Y, INITIAL_MAP_SIZE_X, CV_8U, 127);
    lastMapUpdate = ros::Time::now();
    fullMapDelay = ros::Duration(INITIAL_FULL_MAP_DELAY);
  }
  if (enable_map_tile_publisher)
  {
    image_transport_publisher_tile_ =
        image_transport_->advertise("/map_image/tile", 1);
    cv_img_tile_.header.frame_id = "map_image";
    cv_img_tile_.encoding = sensor_msgs::image_encodings::MONO8;
    cv_img_tile_.image = cv::Mat(tile_height, tile_width, CV_8U, 127);
    lastTileUpdate = ros::Time::now();
    mapTileDelay = ros::Duration(INITIAL_TILE_DELAY);
  }

  map_sub_ =
      node_handle.subscribe("/map", 1, &MapAsImageProvider::mapUpdate, this);

  robot_position_x = 0;
  robot_position_y = 0;

  currentMap.info.resolution = 1;
  setScale(DEFAULT_MAP_SCALE);

  ROS_INFO("Map to Image node started.");
}

MapAsImageProvider::~MapAsImageProvider() { delete image_transport_; }

void MapAsImageProvider::setScale(float scale)
{
  ROS_INFO("New scale is %f", scale);
  map_scale = scale;
  spacing = (int)round(map_scale / currentMap.info.resolution);
}

void MapAsImageProvider::publishFullMap(bool force)
{
  if (enable_full_map_publisher)
  {
    if (force)
    {
      cv_img_full_.header.stamp = ros::Time::now();
      tmp_image_data = *cv_img_full_.toImageMsg();
      image_transport_publisher_full_.publish(tmp_image_data);
      lastMapUpdate = ros::Time::now();
    }
    else if (lastMapUpdate + fullMapDelay < ros::Time::now())
    {
      cv_img_full_.header.stamp = ros::Time::now();
      tmp_image_data = *cv_img_full_.toImageMsg();
      image_transport_publisher_full_.publish(tmp_image_data);
      lastMapUpdate = ros::Time::now();
    }
  }
}

void MapAsImageProvider::publishMapTile(bool force)
{
  if (enable_map_tile_publisher)
  {
    if (force)
    {
      tileUpdate();
      image_transport_publisher_tile_.publish(cv_img_tile_.toImageMsg());
      lastTileUpdate = ros::Time::now();
    }
    else if (lastTileUpdate + mapTileDelay < ros::Time::now())
    {
      tileUpdate();
      image_transport_publisher_tile_.publish(cv_img_tile_.toImageMsg());
      lastTileUpdate = ros::Time::now();
    }
  }
}

void MapAsImageProvider::updateRobotPosition(float x, float y, float theta)
{
  robot_position_x = x;
  robot_position_y = y;
  robot_orientation_theta = theta;
}

/**
 * Hàm callback xử lý việc chuyển đổi dữ liệu từ topic /map (OccupancyGrid) thành ảnh
 * @param map: Con trỏ đến dữ liệu OccupancyGrid từ topic /map
 */
void MapAsImageProvider::mapUpdate(const nav_msgs::OccupancyGridConstPtr& map)
{
  // Kiểm tra kích thước map có hợp lệ không (tối thiểu 3x3)
  if ((map->info.width < 3) || (map->info.height < 3))
  {
    ROS_WARN(
        "Map size is only x: %d,  y: %d . Not running map to image conversion",
        map->info.width, map->info.height);
    return;
  }

  // Sao chép dữ liệu map vào biến currentMap để lưu trữ
  currentMap.header = map->header;
  currentMap.info = map->info;
  currentMap.data = map->data;

  // Chỉ xử lý khi chức năng publish full map được bật
  if (enable_full_map_publisher)
  {
    // Thay đổi kích thước ảnh CV nếu không khớp với kích thước map
    if ((cv_img_full_.image.rows != map->info.height) ||
        (cv_img_full_.image.cols != map->info.width))
    {
      cv_img_full_.image = cv::Mat(map->info.height, map->info.width, CV_8U);
    }

    // Cần lật trục Y vì:
    // - Trong ảnh: Y bắt đầu từ trên xuống (top = 0)
    // - Trong map: Y bắt đầu từ dưới lên (bottom = 0)
    int size_y_rev = cv_img_full_.image.rows - 1;
    for (int y = size_y_rev; y >= 0; --y)
    {
      // Tính chỉ số cho hàng y trong map (không lật)
      int idx_map_y = cv_img_full_.image.cols * y;
      // Tính chỉ số cho hàng y trong ảnh (đã lật)
      int idx_img_y =
          cv_img_full_.image.cols * (cv_img_full_.image.rows - y - 1);

      // Duyệt qua từng cột x
      for (int x = 0; x < cv_img_full_.image.cols; ++x)
      {
        int map_idx = idx_map_y + x;
        int idx = idx_img_y + x;

        // Lấy giá trị occupancy từ map data
        int8_t val = currentMap.data[idx_map_y + x];

        // Chuyển đổi giá trị occupancy thành pixel value:
        if (val == -1)
        {
          // Vùng chưa khám phá -> màu xám (158)
          cv_img_full_.image.data[idx] = 158;  // Unknown (gray)
        }
        else
        {
          // Công thức chuyển đổi: 255 - (val * 255 / 100)
          // val = 0 (free) -> pixel = 255 (trắng)
          // val = 100 (occupied) -> pixel = 0 (đen)
          // val = 50 -> pixel = 127 (xám)
          cv_img_full_.image.data[idx] = static_cast<uint8_t>(255 - (val * 255 / 100));
        }
      }
    }

    // Publish ảnh đã chuyển đổi ngay lập tức
    publishFullMap(true);
  }
}

int8_t MapAsImageProvider::getCellOccupancy(float x, float y)
{
  int32_t grid_x =
      (x - (int)currentMap.info.origin.position.x) / currentMap.info.resolution;
  int32_t grid_y =
      (y - (int)currentMap.info.origin.position.y) / currentMap.info.resolution;
  if (grid_x >= 0 && grid_x < currentMap.info.width && grid_y >= 0 &&
      grid_y < currentMap.info.height)
  {
    return currentMap.data[grid_y * currentMap.info.width + grid_x];
  }
  else
  {
    return -1;
  }
}

void MapAsImageProvider::tileUpdate()
{
  if (enable_map_tile_publisher)
  {
    int8_t currentPoint;
    for (int x = 0; x < cv_img_tile_.image.cols; x++)
    {
      for (int y = 0; y < cv_img_tile_.image.rows; y++)
      {
        int idx = (cv_img_tile_.image.rows - y) * cv_img_tile_.image.cols + x;
        if (map_scale > currentMap.info.resolution)
        {
          int tmpPoint;
          currentPoint = -1;
          for (int dx = 0; dx < spacing; dx++)
          {
            for (int dy = 0; dy < spacing; dy++)
            {

              tmpPoint = getCellOccupancy(
                  robot_position_x +
                      ((x - cv_img_tile_.image.cols / 2) * map_scale +
                       dx * currentMap.info.resolution),
                  robot_position_y +
                      ((y - cv_img_tile_.image.rows / 2) * map_scale +
                       dy * currentMap.info.resolution));
              if (tmpPoint > currentPoint)
              {
                currentPoint = tmpPoint;
              }
            }
          }
        }
        else
        {
          currentPoint = getCellOccupancy(
              robot_position_x +
                  ((x - cv_img_tile_.image.cols / 2) * map_scale),
              robot_position_y +
                  ((y - cv_img_tile_.image.rows / 2) * map_scale));
        }
        switch (currentPoint)
        {
        case -1:
          cv_img_tile_.image.data[idx] = 127;
          break;
        case 0:
          cv_img_tile_.image.data[idx] = 255;
          break;
        case 100:
          cv_img_tile_.image.data[idx] = 0;
          break;
        }
      }
    }
  }

  if (print_robot_indicator)
  {
    int im_x_center = cv_img_tile_.image.cols / 2;
    int im_y_center = cv_img_tile_.image.rows / 2;
    cv::Point arrow_tip(im_x_center + 15 * cos(robot_orientation_theta),
                        im_y_center - 15 * sin(robot_orientation_theta));
    cv::Point arrow_base(im_x_center - 15 * cos(robot_orientation_theta),
                         im_y_center + 15 * sin(robot_orientation_theta));
    cv::arrowedLine(cv_img_tile_.image, arrow_base, arrow_tip,
                    cv::Scalar(100, 100, 100), 2, 8, 0, 0.2);
  }
}
