# Use the official PyTorch runtime image with CUDA support
FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime AS base

# Set non-interactive mode and timezone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Set workspace
WORKDIR /workspace

# Install dependencies
RUN apt-get update && apt-get --no-install-recommends install -y \
    openssh-server openssh-client \
    git git-lfs libgl1 libglx-mesa0 ffmpeg \
    tmux wget vim nano mc htop curl lshw pciutils nvtop p7zip-full lsof jq \
    build-essential make cmake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Ensure python and pip commands are available
RUN ln -s /usr/bin/python3 /usr/bin/python && ln -s /usr/bin/pip3 /usr/bin/pip