source ~/.bashrc
cuda-cv
cd ~/installers/opencv/build
make -j$(nproc)
sudo make install
sudo ldconfig

ln -s /usr/local/lib/python3.8/site-packages/cv2/python-3.8/$(ls /usr/local/lib/python3.8/site-packages/cv2/python-3.8) ~/.virtualenvs/$env_name/lib/python3.8/site-packages/cv2.so
sudo update-alternatives --auto gcc
sudo update-alternatives --auto g++