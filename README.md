# Installing ROS Melodic on elementaryOS 5.1 (Hera)
This repo details the installation process of ROS Melodic on elementaryOS 5.1 (Hera). I couldn't find a comprehensive guide online so I decided to create one myself.

### Overview

[elementaryOS](https://elementary.io) is an awesome Linux distro and I have been using it for about a month now. I'm running the latest release - 5.1 codenamed Hera. [Read their blog](https://blog.elementary.io/introducing-elementary-os-5-1-hera) for details on new features. Check out [their Github](https://github.com/elementary/) too, you can contribute to the OS and actually report bugs and request new features! The latest release is based on Ubuntu 18.04 (Bionic LTS). so really any guide to installing ROS on Ubuntu 18.04 should work but there are a couple of changes you should change and know and this repo should serve as a guide/tutorial to get ROS Melodic up and running in elementaryOS.

### What you will need

* elementaryOS 5.1 - Download/purchase it from their [website](https://elementary.io) 
* Python3

### Installing ROS Melodic

The official ROS guide for Ubuntu mostly holds but with a few changes. 

* Clone this repo with `git clone git@github.com:vikasnataraja/Installing-ROS-Melodic-on-elementaryOS-5.1-Hera.git`
* Go into the folder,  run `./install-ros-elementaryos.sh`. You might need to add `sudo`.
* The bash script after running should show the message: "Installation Complete!"

### What's next?

If you're new to ROS, it might be better to start with the tutorials here: [ROS Tutorials](http://wiki.ros.org/ROS/Tutorials). They cover most of the basic topics from creating a package, building a package to navigating the file system. Give it a try!
