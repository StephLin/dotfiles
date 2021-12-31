#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update
sudo apt install -y ros-melodic-desktop-full

cat << EOF >> ~/.zshrc 
# ROS
source /opt/ros/melodic/setup.zsh
export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_IP=127.0.0.1
EOF

sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update
