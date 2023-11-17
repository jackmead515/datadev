# DataDev

This is my personal and professional activity log, programming resources, examples, todo list,
etc, etc, etc for how I am going to become a data scientist.

Why don't I just use Trello? Or Notion? Or something else? Become I'm a programmer and I want to.

## Links

[Todo List](TODO.md)

[Learning Resources](RESOURCES.md)

[Projects](PROJECTS.md)

## Startup Juypter

jupyter notebook --no-browser --NotebookApp.allow_origin='*' --port=8080
ssh -NfL localhost:8080:localhost:8080 remoteuser@remotehost
pkill ssh

## Install Nvidia, CUDA, and cuDNN

https://www.tensorflow.org/install/source#tested_build_configurations
https://developer.nvidia.com/cuda-gpus#compute
https://docs.nvidia.com/cuda/cuda-toolkit-release-notes/index.html
https://gist.github.com/standaloneSA/99788f30466516dbcc00338b36ad5acf
https://developer.nvidia.com/cuda-11-8-0-download-archive


```
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt search nvidia-driver

sudo apt install nvidia-driver-XXX

sudo reboot now

wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_495.29.05_linux.run

sudo sh ./cuda_11.5.0_495.29.05_linux.run

if [ -d "/usr/local/cuda-11.5/bin/" ]; then
    export PATH=/usr/local/cuda-11.5/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-11.5/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi

sudo reboot now

echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda_learn.list

sudo apt-key adv --fetch-keys  http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

sudo apt update

sudo apt install libcudnn8

sudo reboot now

nvcc --version

nvidia-smi

```
