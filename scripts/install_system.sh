


sudo apt-get install wget

if [ -d "Blocks" ]; then
  echo "Blocks environment already downloaded, skipping..."
else
  echo "Downloading blocks environment..."
  wget https://github.com/microsoft/AirSim/releases/download/v1.8.0-linux/Blocks.zip
  unzip Blocks.zip
  rm Blocks.zip
fi

echo "Setting up AirSim..."
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 4EB27DB2A3B88B8B
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 6AF7F09730B3F0A4
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
sudo apt-get update

./AirSim/setup.sh
echo "Building AirSim..."
./AirSim/build.sh


echo "Installing ROS Noetic..."

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full -y
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo apt install python3-rosdep -y
sudo rosdep init
rosdep update

echo "Installing AirSim ROS wrapper dependencies..."
sudo apt-get install ros-noetic-tf2-sensor-msgs ros-noetic-tf2-geometry-msgs ros-noetic-mavros* -y
sudo apt install python3-pip
pip install "git+https://github.com/catkin/catkin_tools.git#egg=catkin_tools"
#sudo apt-get install gcc-8 g++-8
sudo apt-get install python3.8-venv



