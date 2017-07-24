# Docker TensorFlow with python 3.6 and GPU support


To pull

    docker pull samuelcolvin/tensorflow-gpu-py36
    
 
To test (with `nvidia-docker` installed)

    nvidia-docker run --rm -v $PWD/test.py:/test.py tensorflow-gpu-py36 python /test.py
