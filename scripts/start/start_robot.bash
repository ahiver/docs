#!/bin/bash

# Start camera ROS node
cd $USB_CAM_DIR
source devel/setup.bash
roslaunch usb_cam usb_cam-test.launch

# Start MavRos node for Flight Controller mavlink telemetry
rosrun mavros mavros_node _fcu_url:=${FCU_DEVICE}:${FCU_BAUD_RATE}