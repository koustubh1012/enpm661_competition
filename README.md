# ENPM661 Competition

This repository contains the source code and configuration files for the ENPM661 competition project. The project is built using ROS 2 Jazzy and leverages various dependencies to simulate and control turtlebot4.

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

## Installation and Launching Gazebo

### Native ROS-jazzy install
1. Clone the repository into your working directory:
   ```bash
   https://github.com/koustubh1012/enpm661_competition.git

2. Build the package using Colcon build
    ```bash
    colcon build --event-handlers console_cohesion+

3. Source the overlay and underlay

    ```bash
    source /opt/ros/jazzy/setup.bash
    source install/setup.bash

4. Launch the Gazebo setup using the launch file
    ```bash
    ros2 launch enpm661_competition turtlebot4_comp.launch.py

### Docker



## Autonomous Navigation

1. Write your script to navigate turtlebot4 through the maze. Make sure to modify CMakeLists.txt file accordingly
