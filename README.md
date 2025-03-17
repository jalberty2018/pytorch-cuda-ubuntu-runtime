# pytorch-cuda-image-runtime

A lightweight runtime Docker image for PyTorch with CUDA support.

## Base Image

This image is built on top of PyTorch’s official Docker images, ensuring compatibility with CUDA and cuDNN.

## Available Images

### Image 2.4.1

- Base Image: pytorch/pytorch:2.4.1-cuda12.4-cudnn9-runtime
- Custom Build: ls250824/pytorch-cuda-ubuntu-runtime:05102024

### Image 2.5.1

- Base Image: pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime
- Custom Build: ls250824/pytorch-cuda-ubuntu-runtime:19012025

## Usage

### Pulling the Image

To pull a specific version of the image, use the following command:

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:<date>
```

Replace <date> with the corresponding version date (e.g., 19012025 for 2.5.1).

### Building the Image

To build the image locally, run:

```bash
python3 build-docker.py pytorch-cuda-ubuntu-runtime
```

## Additional Notes

- Use nvidia-smi inside the container to verify CUDA support.
