FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        software-properties-common \
        python3-pip \
 && add-apt-repository -y ppa:jonathonf/python-3.6 \
 && apt-get update \
 && apt-get install -y python3.6 python3.6-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

LABEL maintainer 's@muelcolvin.com'

# pip has to be installed before setuptools, setuptools has to be installed before tensorflow
RUN python3.6 -m pip install --no-cache-dir -U pip
RUN python3.6 -m pip install --no-cache-dir -U setuptools
RUN python3.6 -m pip install --no-cache-dir ipython requests tensorflow-gpu==1.3.0rc0
RUN ln -s /usr/bin/python3.6 /usr/bin/python

CMD ["ipython"]
