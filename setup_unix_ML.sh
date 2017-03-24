# install Miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -P ~
zsh ~/Miniconda3-latest-Linux-x86_64.sh
git checkout ML

# instal pip3
sudo apt-get install python3-pip
pip3 install --upgrade

# install CUDA
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run -O ~/cuda.sh
sudo sh ~/cuda.sh

# setup Python 3 env and install basic packages
conda create -n py3 anaconda python=3
source activate py3
conda install pytorch torchvision -c soumith
sudo apt-get install python-qt4
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp36-cp36m-linux_x86_64.whl
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64
