# SALLI

This is the SALLI repo.

This branch contains the SW packages derived and implemented during Houria Ben Cheikh's bachelor's thesis.

## Prerequisites

- Ubuntu 20.04 (updated: `sudo apt update && sudo apt upgrade`)
- Nvidia Graphics Card
- Nvidia Graphics Driver installed *(check useful resources)*
- Git installed (`sudo apt-get install git`)
- Ssh key installed *(check useful resources)*

### Useful tools and resources
- Update Nvidia Graphichs Driver: https://www.cyberciti.biz/faq/ubuntu-linux-install-nvidia-driver-latest-proprietary-driver/
- Install ssh-keys for GitHub: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
- Remarkable (Markdown Editor): https://remarkableapp.github.io/linux.html
- VS Code: https://code.visualstudio.com/docs/setup/linux
- ROS installation manual: http://wiki.ros.org/melodic/Installation/Ubuntu
- AirSim Documentation: https://microsoft.github.io/AirSim/ 
- AirSim GitHub page: https://github.com/microsoft/AirSim
- AirSim ROS wrapper documentation: https://microsoft.github.io/AirSim/airsim_ros_pkgs/ 

## Getting started

**1) Clone this branch:** (if the ssh-key has been installed):

```
git clone -b Houria git@github.com:LopezBejarAlvaro/SALLI.git

```

**2) Run the install system script:**

```
cd SALLI
./scripts/install_system.sh
```

This script will: 

- Download a pre-built AirSim simulation environment
- Install ROS 
- Build AirSim


**3) Build the catkin workspace:**

```
cd catkin_ws
catkin_make_isolated
```

If you have multiple versions of gcc installed and gcc-8 is not your default gcc version, the build will fail (as described in the AirSim ROS wrapper documentation). Either uninstall other gcc version or use update alternatives to select the default gcc version. 

<u>Setting up update alternatives for gcc:</u>

Install alternatives (**example if you already have gcc-7 installed**):

```
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 20

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 20

sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
sudo update-alternatives --set cc /usr/bin/gcc

sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
sudo update-alternatives --set c++ /usr/bin/g++
```

Configure alternatives:

```
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
```

**4) Source the catkin workspace:** (path depends on where you cloned the repository) and add it to the bashrc:

```
echo "source ${HOME}/SALLI/catkin_ws/devel_isolated/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

## Running the simulation

Copy the `settings.json` file from the `settings` folder to `~/Documents/AirSim/settings.json`. These are the settings (sensor config etc.) that AirSim will use. 
Also `--settings` can be used to indicate a diferent path where the .json file is found.

Run the pre-built downloaded environment using one of the following options:

- To run the simulation full screen:
```
./SALLI/Blocks/LinuxNoEditor/Blocks.sh --settings ~/SALLI/settings/settings.json
```
- Does not open a new window showing the simulation:
```
./SALLI/Blocks/LinuxNoEditor/Blocks.sh -ArgumentList "-RenderOffScreen" --settings ~/SALLI/settings/settings.json
```
- Run the simulation on a window:
```
./SALLI/Blocks/LinuxNoEditor/Blocks.sh -windowed --settings ~/SALLI/settings/settings.json
```

If you want to run the simulation in the custom Bertrandt warehouse environment, download the pre built binaries from GitHub.

Go to https://github.com/LopezBejarAlvaro/SALLI/releases and choose e.g. release v0.0.1. Depending on the system you are using download either `"Warehouse_Simulation_Linux.zip"` or `"Warehouse_Simulation_Windows.zip"`. Extract the binaries to the 'SALLI' folder. 
 

##### Controlling the drone manually

Its best to create a python virtual environment to install python packages:

```
cd SALLI/scripts/drone-manual-control
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
./requirements.sh
python airsim-drone-control.py #Now the drone can be controlled with the keyboard
``` 

## Running the ROS nodes

Start the AirSim ROS interface using the following commands:

```
roslaunch airsim_ros_pkgs airsim_node_salli.launch # if your simulation runs on the localhost
roslaunch airsim_ros_pkgs airsim_node_salli.launch host:="192.168.0.97" # if your simulation runs an a different machine in the network
```


