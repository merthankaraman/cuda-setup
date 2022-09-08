source ~/.bashrc
sudo apt install gcc-$MAX_GCC_VERSION g++-$MAX_GCC_VERSION -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-$MAX_GCC_VERSION $MAX_GCC_VERSION
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-$MAX_GCC_VERSION $MAX_GCC_VERSION

sudo update-alternatives --set g++ /usr/bin/g++-$MAX_GCC_VERSION
sudo update-alternatives --set gcc /usr/bin/gcc-$MAX_GCC_VERSION
cuda-cv

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_CUDA=ON \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D CUDA_ARCH_BIN=7.5 \
-D WITH_CUBLAS=1 \
-D OPENCV_EXTRA_MODULES_PATH=~/installers/opencv_contrib/modules \
-D PYTHON_EXECUTABLE=~/.virtualenvs/$env_name/bin/python \
-D BUILD_EXAMPLES=OFF \
-D HAVE_opencv_python3=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D INSTALL_PYTHON_EXAMPLES=ON \
\
-D BUILD_TIFF=OFF \
-D WITH_FFMPEG=OFF \
-D WITH_GSTREAMER=OFF \
-D WITH_TBB=OFF \
-D BUILD_TBB=OFF \
-D WITH_EIGEN=OFF \
-D WITH_V4L=ON \
-D WITH_LIBV4L=OFF \
-D WITH_VTK=OFF \
-D WITH_QT=OFF \
-D WITH_OPENGL=OFF \
-D OPENCV_ENABLE_NONFREE=OFF \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D OPENCV_DNN_CUDA=ON \
-D WITH_CUDNN=ON \
..