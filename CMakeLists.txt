cmake_minimum_required(VERSION 3.8)
project(mission_server_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/MissionState.msg"
  "msg/MissionProgress.msg"
  "msg/RouteInfo.msg"
  "srv/LoadRoute.srv"
  "srv/ListRoutes.srv"
  "srv/ReturnHome.srv"
  "action/RunMission.action"
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
