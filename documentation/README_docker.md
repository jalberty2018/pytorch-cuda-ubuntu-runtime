# PyTorch CUDA Runtime Image

A lightweight runtime Docker base image for PyTorch with CUDA support.

## Base Image

This image is built on top of PyTorch’s official Docker images, ensuring compatibility with CUDA and cuDNN.

- [Nvidia CUDA](https://hub.docker.com/r/nvidia/cuda/tags?name=12)
- [Pytorch.org](https://pytorch.org)
- [Triton](https://triton-lang.org/main/index.html)

## Setup latest image

| Component | Version              |
|-----------|----------------------|
| OS        | `Ubuntu 22.04 x86_64` |
| Python    | `3.11.x`             |
| PyTorch   | `2.9.0`              |
| CUDA      | `13.0`             |
| Triton    | `3.5.0`               |

## Available Images

### Image 2.4.1

Base Image: pytorch/pytorch:2.4.1-cuda12.4-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:05102024
```

### Image 2.5.1

Base Image: pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:19012025
```

### Image 2.6.0

Base Image: pytorch/pytorch:2.6.0-cuda12.6-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:26042025
```

### Image 2.7.0

Base Image: pytorch/pytorch:2.7.0-cuda12.6-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:02062025
```

### Image 2.7.1

Base Image: pytorch/pytorch:2.7.1-cuda12.6-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:01072025
```

Base Image: pytorch/pytorch:2.7.1-cuda12.8-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:05072025
```

### Image 2.8.0

Base Image: pytorch/pytorch:2.8.0-cuda12.9-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:22082025
```

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:01102025
```

### Image 2.9.0

Base Image: pytorch/pytorch:2.9.0-cuda13.0-cudnn9-runtime

Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:05112025