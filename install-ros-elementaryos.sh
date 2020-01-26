### Add the correct deb package, in this case bionic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'

### Check to make sure it's been added
vim etc/apt/sources.list.d/ros-latest.list

### Set up keys
echo "Setting up keys"
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

### Update Debian package index
sudo apt update

### Install ROS - choose ONLY ONE OF THESE versions:

# To install only ROS, rqt, rviz and some generic libraries:
# echo "Installing ros-melodic-desktop, not desktop-full"
# sudo apt install ros-melodic-desktop

# To install bare bones ROS only:
# echo "Installing ros-melodic barebones"
# sudo apt install ros-melodic-ros-base

# I am installing the full desktop version with support for advanced libraries like 2D and 3D perception:
echo "Installing ros-melodic-desktop-full"
sudo apt install ros-melodic-desktop-full

# Make sure you have rosdep installed with python3:

sudo -H pip install -U rosdep

# Update ROSDEP:

rosdep update

# After the previous step you should see some aliasing messages like this:
# rosdep detected OS: [elementary] aliasing it to: [ubuntu]

# Once the cache has been updated, we can move on to setting up the environment:
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

# Source the file:
source ~/.bashrc

echo "ROS Installtion Complete!Test your ROS installation by typing "echo $ROS_DISTRO""
