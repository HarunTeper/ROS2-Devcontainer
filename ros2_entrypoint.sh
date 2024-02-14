
# installation of ros2 humble
mkdir ros2_humble
cd ros2_humble
mkdir src
vcs import --input https://raw.githubusercontent.com/ros2/ros2/humble/ros2.repos src
sudo apt -y upgrade
sudo rosdep init
rosdep update
rosdep install --rosdistro humble --from-paths src --ignore-src -y --skip-keys "fastcdr rti-connext-dds-6.0.1 urdfdom_headers"
colcon build --symlink-install
echo ". /workspace/local/ros2_humble/install/setup.sh" >> ~/.bashrc

# source ros2 humble and go to the workspace
. /workspace/local/ros2_humble/install/setup.sh
cd ..

# # installation of other ros2 packages
# cd packages
# colcon build --symlink-install