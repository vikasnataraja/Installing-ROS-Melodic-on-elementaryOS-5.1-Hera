# Installing-ROS-Melodic-on-elementaryOS-5.1-Hera
This repo details the installation process of ROS Melodic on elementaryOS 5.1 (Hera). I couldn't find a comprehensive guide online so I decided to create on myself.

### Overview

[elementaryOS](https://elementary.io) is an awesome Linux distro and I have been using it for about a month now. I'm running the latest release - 5.1 codenamed Hera. [Read their blog](https://blog.elementary.io/introducing-elementary-os-5-1-hera) for details on new features. Check out [their Github](https://github.com/elementary/) too, you can contribute to the OS and actually request new features! The latest release is based on Ubuntu 18.04 (Bionic LTS) so really any guide to installing ROS on Ubuntu 18.04 should work but there are a couple of changes and this repo should serve as a guide/tutorial to get ROS Melodic up and running.

### What you will need

* elementaryOS 5.1 - Download/purchase it from their [website](https://elementary.io) 
* Python3



### Installing ROS Melodic

The official ROS guide for Ubuntu mostly holds but with a few changes. Here are the commands you need to run (I will make a bash script soon to replace this):

```bash
### Add the correct deb package, in this case bionic
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'

### Check to make sure it's been added
vim etc/apt/sources.list.d/ros-latest.list

### Set up keys
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

### Update Debian package index
sudo apt update
```

Install ROS - choose **ONLY ONE OF THESE** versions:

* To install only ROS, rqt, rviz and some generic libraries:

`sudo apt install ros-melodic-desktop`

* To install bare bones ROS only:

`sudo apt install ros-melodic-ros-base`

* I am installing the full desktop version with support for advanced libraries like 2D and 3D perception:

`sudo apt install ros-melodic-desktop-full`

Make sure you have rosdep installed with python3:

`sudo -H pip install -U rosdep`

Update ROSDEP:

`rosdep update`

After the previous step you should see some aliasing messages like this:

> > rosdep detected OS: [elementary] aliasing it to: [ubuntu]

Once the cache has been updated, we can move on to setting up the environment:

`echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc`

Source the file:

`source ~/.bashrc`