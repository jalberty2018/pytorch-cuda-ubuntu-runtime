# Use the official PyTorch runtime image with CUDA support
FROM pytorch/pytorch:2.9.0-cuda12.8-cudnn9-runtime

# Set non-interactive mode and timezone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Set workspace
WORKDIR /workspace

# Install dependencies
RUN apt-get update && apt-get --no-install-recommends install -y \
    openssh-server openssh-client \
    git git-lfs libgl1 libglx-mesa0 ffmpeg \
    tmux wget vim nano mc htop curl lshw pciutils nvtop p7zip-full lsof jq ncdu unzip \
    build-essential make cmake apt-utils ninja-build pkg-config libcairo2-dev && \
	apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Test
RUN python -c "import torch, torchvision, torchaudio, triton; \
print(f'Torch: {torch.__version__}\\nTorchvision: {torchvision.__version__}\\nTorchaudio: {torchaudio.__version__}\\nTriton: {triton.__version__}\\nCUDA available: {torch.cuda.is_available()}\\nCUDA version: {torch.version.cuda}')"