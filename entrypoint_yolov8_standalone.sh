source /opt/ros/humble/setup.bash
source /opt/ros_ws/install/setup.bash
ros2 launch isaac_ros_examples isaac_ros_examples.launch.py launch_fragments:=realsense_mono_rect,yolov8    model_file_path:=${ISAAC_ROS_WS}/isaac_ros_assets/models/yolov8/yolov8s.onnx engine_file_path:=${ISAAC_ROS_WS}/isaac_ros_assets/models/yolov8/yolov8s.plan &
ros2 run isaac_ros_yolov8 isaac_ros_yolov8_visualizer.py &
ros2 run image_transport republish raw compressed   --ros-args   -r in:=/yolov8_processed_image   -r out:=/yolov8_processed_image   -p compressed.jpeg_quality:=80

#ros2 launch object_detection yolov8.launch.py model_file_path:=${ISAAC_ROS_WS}/isaac_ros_assets/models/yolov8/yolov8s.onnx engine_file_path:=${ISAAC_ROS_WS}/isaac_ros_assets/models/yolov8/yolov8s.plan