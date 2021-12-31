#!/usr/bin/env bash

sudo systemctl --now enable docker

if [$? -ne 0]; then
    echo Cannot enable docker. Abort.
    exit 1
fi

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

echo
echo You can use the following command to test if nvidia-docker is installed:
echo
echo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
