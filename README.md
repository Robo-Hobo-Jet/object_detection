# Object detection

Currently the object detection utilizing YoloV8 is employed (https://nvidia-isaac-ros.github.io/v/release-3.2/repositories_and_packages/isaac_ros_object_detection/isaac_ros_yolov8/index.html). 

# Prerequisites

1. If you did not yet install the realsense library on the host you have to execute install_host.sh on the host.
2. You have to execute the "setup_yolo_v8_assets.sh" in the docker container to download the assets for the package, such as the model parameters.

# Usage

You can build and start the container in the ".devcontainer" folder via "docker compose up --build". In the docker-compose.yml the entrypoint is defined for the container. The default is the "entrypoint_yolov8.sh", which assumes that the realsense camera is already running and publishes the necessary topics. If you want to use it standalone you can use the "entrypoint_yolov8_standalone.sh" script as entrypoint.