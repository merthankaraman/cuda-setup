# cuda-setup
 Setup scripts to setup cuda

# Download Repository
```bash
sudo apt update -y
sudo apt install git -y
cd ~
git clone https://github.com/merthankaraman/cuda-setup.git
```
# Install packages
```bash
cd ~/cuda-setup/
cv_version="4.6.0"
bash install_packeges.sh
```
# Create env
```bash
cd ~/cuda-setup/
env_name="opencv_cuda"
bash create_env.sh
```

# First step Cmake
```bash
cd ~/cuda-setup/
MAX_GCC_VERSION=9
env_name="opencv_cuda"
bash cv2_make.sh
```

# Make and install
```bash
cd ~/cuda-setup/
bash install_rest.sh
```
