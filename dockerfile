#this will work on a 4090
FROM nvidia/cuda:12.0.1-base-ubuntu22.04	

WORKDIR /

RUN apt update && apt install -y build-essential
RUN apt update && apt install -y gcc software-properties-common
RUN apt update && apt install ffmpeg x264 libsm6 libxext6  -y

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install python3.10 
RUN apt update
RUN apt install -y python3-pip
RUN ln -s /usr/bin/python3 /usr/bin/python