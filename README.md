# Docker TensorFlow with python 3.6 and GPU support

[![docker](https://img.shields.io/docker/automated/samuelcolvin/tensorflow-gpu-py36.svg)](https://hub.docker.com/r/samuelcolvin/tensorflow-gpu-py36/)

To pull

    docker pull samuelcolvin/tensorflow-gpu-py36
    
 
To test (with `nvidia-docker` installed)

    nvidia-docker run --rm -v $PWD/test.py:/run.py samuelcolvin/tensorflow-gpu-py36 python /run.py
