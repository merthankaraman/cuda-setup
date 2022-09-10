sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install cuda -y
#sudo apt-get install nvidia-cuda-toolkit -y
#echo 'export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}' >> ~/.bashrc
source ~/.bashrc
nvcc --version
sudo apt-get install build-essential cmake unzip pkg-config -y
sudo apt-get install gcc-7 g++-7 -y
sudo apt-get install libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev -y

sudo apt-get install libjpeg-dev libpng-dev libtiff-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libopenblas-dev libatlas-base-dev liblapack-dev gfortran -y
sudo apt-get install libhdf5-serial-dev -y
sudo apt-get install python3-dev python3-tk python-imaging-tk -y
sudo apt-get install libgtk-3-dev -y


mkdir ~/installers
cd ~/installers/

echo "# NVIDIA CUDA Toolkit" >> ~/.bashrc
echo "export PATH=/usr/local/cuda-10.0/bin:$PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc
source ~/.bashrc

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential cmake unzip pkg-config -y
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev -y
sudo apt-get install libgtk-3-dev -y

wget -O opencv.zip https://github.com/opencv/opencv/archive/$cv_version.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/$cv_version.zip
unzip -q opencv.zip && unzip -q opencv_contrib.zip
mv opencv-$cv_version opencv && mv opencv_contrib-$cv_version opencv_contrib
rm -R opencv_contrib.zip opencv.zip

printf "\n\nYou must go this website and login then download files: \nhttps://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.2.0.53/11.3_04222021/Ubuntu20_04-x64/libcudnn8_8.2.0.53-1+cuda11.3_amd64.deb\nhttps://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.2.0.53/11.3_04222021/Ubuntu20_04-x64/libcudnn8-dev_8.2.0.53-1+cuda11.3_amd64.deb\nhttps://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.2.0.53/11.3_04222021/Ubuntu20_04-x64/libcudnn8-samples_8.2.0.53-1+cuda11.3_amd64.deb\n\n"
printf "\n\nAfter downloading please run this command \nsudo dpkg -i libcudnn8_8.2.0.53-1+cuda11.3_amd64.deb\nsudo dpkg -i libcudnn8-dev_8.2.0.53-1+cuda11.3_amd64.deb\nsudo dpkg -i libcudnn8-samples_8.2.0.53-1+cuda11.3_amd64.deb\n\n"
