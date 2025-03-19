# PyTorch CUDA Image Runtime

A lightweight runtime Docker base image for PyTorch with CUDA support.

## Base Image

This image is built on top of PyTorch’s official Docker images, ensuring compatibility with CUDA and cuDNN.

## Available Images

### Image 2.4.1

Base Image: pytorch/pytorch:2.4.1-cuda12.4-cudnn9-runtime

#### Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:05102024
```

### Image 2.5.1

Base Image: pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime

#### Custom Build: 

```bash
docker pull ls250824/pytorch-cuda-ubuntu-runtime:19012025
```

## Building the Docker Image

You can build and push the image to Docker Hub using the `build-docker.py` script.

### Build Script Options

| Option         | Description                                         | Default                |
|----------------|-----------------------------------------------------|------------------------|
| `--username`   | Docker Hub username                                 | Current user           |
| `--tag`        | Tag to use for the image                            | Today's date           |
| `--latest`     | If specified, also tags and pushes as `latest`      | Not enabled by default |

### Build & Push Command

Run the following command to clone the repository and build the image:

```bash
git clone https://github.com/jalberty2018/pytorch-cuda-ubuntu-runtime.git

python3 pytorch-cuda-ubuntu-runtime/build-docker.py \
--username=<your_dockerhub_username> \
--tag=<custom_tag> \ 
pytorch-cuda-ubuntu-runtime
```

Note: If you want to push the image with the latest tag, add the --latest flag at the end.
