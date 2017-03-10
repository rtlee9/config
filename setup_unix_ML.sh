# install Miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -P ~
zsh ~/Miniconda3-latest-Linux-x86_64.sh
git checkout ML

# setup Python 3 env and install basic packages
conda create -n py3 anaconda python=3
source activate py3
conda install pytorch -c soumith
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp36-cp36m-linux_x86_64.whl
