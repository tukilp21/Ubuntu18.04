#!/bin/bash

# Unset PYTHONPATH and source ROS setup file
unset PYTHONPATH
source /opt/ros/melodic/setup.bash

# Source the catkin workspace setup file
source ~/catkin_ws/devel/setup.bash

# Launch the simulation
roslaunch penguinpi_gazebo ECE4078.launch &

# Wait for 3 seconds
sleep 3

# Open a new terminal tab and run the scene manager script with repeated unset and source commands
gnome-terminal --tab -- bash -c "unset PYTHONPATH; source /opt/ros/melodic/setup.bash; source ~/catkin_ws/devel/setup.bash; rosrun penguinpi_gazebo scene_manager.py -l map1.txt; exec bash"

