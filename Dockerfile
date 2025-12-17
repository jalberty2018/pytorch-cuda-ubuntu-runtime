# Use the official PyTorch runtime image with CUDA support
FROM pytorch/pytorch:2.9.1-cuda12.8-cudnn9-runtime

# Set non-interactive mode and timezone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Set workspace
WORKDIR /workspace

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-server openssh-client \
    git git-lfs \
    libgl1 libglx-mesa0 libegl1 libgles2 \
    libx11-6 libxext6 libxrender1 libxfixes3 libxi6 libxcursor1 \
    libfontconfig1 libfreetype6 \
    ffmpeg \
    tmux wget vim nano mc htop curl lshw pciutils nvtop p7zip-full lsof jq ncdu unzip \
    build-essential make cmake apt-utils ninja-build pkg-config libcairo2-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Tests
RUN python -c "import torch, torchvision, torchaudio, triton; \
print(f'Torch: {torch.__version__}\\nTorchvision: {torchvision.__version__}\\nTorchaudio: {torchaudio.__version__}\\nTriton: {triton.__version__}\\nCUDA available: {torch.cuda.is_available()}\\nCUDA version: {torch.version.cuda}')"

RUN ldconfig -p | grep -E 'libEGL\.so\.1|libGL\.so\.1' || true
