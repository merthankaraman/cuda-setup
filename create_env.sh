source ~/.bashrc
cd ~/installers/

wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/installers/get-pip.py ~/.cache/pip

echo "# virtualenv and virtualenv wrapper" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
mkvirtualenv $env_name -p python3
echo "alias cuda-cv='source ~/.virtualenvs/$env_name/bin/activate'" >> ~/.bashrc
source ~/.bashrc

pip install numpy
mkdir ~/installers/opencv/build
cd ~/installers/opencv/build