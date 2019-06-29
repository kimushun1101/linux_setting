#!/bin/bash -eu
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
curl -sL "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xF42ED6FBAB17C654" | sudo apt-key add
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install ros-melodic-desktop-full
apt-cache search ros-melodic

sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
source ~/.zshrc
source /opt/ros/melodic/setup.zsh

sudo apt-get -y install python-rosinstall

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin_make
echo "source ~/catkin_ws/devel/setup.zsh" >> ~/.zshrc
source ~/.zshrc
