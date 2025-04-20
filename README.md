# ENPM661 Competition

This repository contains the source code and configuration files for the ENPM661 competition project. The project is built using ROS 2 Jazzy and leverages various dependencies to simulate and control turtlebot4.

## Running on Docker

If you don't have ROS2 Jazzy installed on your local machine, you can use this docker cintainer to test your code 

1. Download docker image

    ```bash
    docker pull ghcr.io/koustubh1012/enpm661_competition:latest

2. Run the docker image
    ```bash
    xhost +local:docker  # Allow Docker to access X server
    docker run -it   --env DISPLAY=$DISPLAY   --volume /tmp/.X11-unix:/tmp/.X11-unix:rw   --privileged   ghcr.io/koustubh1012/enpm661_competition:latest   /bin/bash

3. Build and run the ROS2 package
    ```bash
    cd ~/ros2_ws/
    colcon build
    source /opt/ros/jazzy/setup.bash
    source install/setup.bash
    ros2 launch enpm661_competition turtlebot4_gz.launch.py

## Dependencies

The project depends on the following ROS 2 packages:

- `ament_cmake`
- `geometry_msgs`
- `ros_gz_interfaces`
- `rclcpp`
- `nav_msgs`
- `tf2`
- `sensor_msgs`

Ensure these dependencies are installed in your ROS 2 environment.

## Installation and Launching Gazebo on ROS2 Jazzy

If you have ROS2 Jazzy installed, you can directly clone, build and run the simulation

1. Clone the repository into your ROS 2 workspace:
   ```bash
   https://github.com/koustubh1012/enpm661_competition.git

2. Build rhe package using Colcon build
    ```bash
    colcon build

3. Source the overlay and underlay

    ```bash
    source /opt/ros/jazzy/setup.bash
    source install/setup/bash

4. Launch the Gazebo setup using the launch file
    ```bash
    ros2 launch enpm661_competition turtlebot4_gz.launch.py

## Autonomous Navigation

1. Write your script to navigate turtlebot4 through the maze. Make sure to modify CMakeLists.txt file accordingly
