# cuda-setup
 Setup scripts to setup cuda

# Install packages
```sh
cv_version="4.6.0"
bash install_packeges.sh
```
# Create env
'''sh
env_name="opencv_cuda"
bash create_env.sh
'''

# First step Cmake
'''sh
MAX_GCC_VERSION=9
env_name="opencv_cuda"
bash cv2_make.sh
'''

# Make and install
'''sh
bash install_rest.sh
'''