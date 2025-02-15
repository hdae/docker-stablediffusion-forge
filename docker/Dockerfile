FROM nvidia/cuda:12.8.0-cudnn-devel-ubuntu24.04

WORKDIR /

RUN apt-get update && \
    apt-get install -y \
    git \
    gosu \
    wget \
    zstd \
    libglu1-mesa-dev \
    libglib2.0-0 \
    libgoogle-perftools-dev && \
    rm -rf /var/lib/apt/lists/* && \
    wget -O python.tar.zst https://github.com/astral-sh/python-build-standalone/releases/download/20250212/cpython-3.10.16+20250212-x86_64_v3-unknown-linux-gnu-pgo+lto-full.tar.zst && \
    tar -xf python.tar.zst && \
    rm python.tar.zst

COPY ./entrypoint.sh /
COPY ./start.sh /
RUN chmod +x /entrypoint.sh && \
    chmod +x /start.sh

USER ubuntu
WORKDIR /home/ubuntu
RUN git clone --depth=1 https://github.com/lllyasviel/stable-diffusion-webui-forge /home/ubuntu/forge && \
    cd /home/ubuntu/forge
    #  && \
    # git fetch --depth 1 origin f11456e2d38d6b7f8432cd6952fb2f10fc2081b3 && \
    # git checkout f11456e2d38d6b7f8432cd6952fb2f10fc2081b3

USER root
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "bash", "/start.sh" ]
