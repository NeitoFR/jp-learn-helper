FROM nvidia/cuda:12.9.0-cudnn-devel-ubuntu24.04

RUN apt update && apt install -y python3-full python3-pip git ffmpeg

RUN python3 -m venv /venv
    

RUN /venv/bin/pip install --no-cache-dir git+https://github.com/openai/whisper.git faster-whisper

# # Create a script to verify GPU and cuDNN availability
# RUN echo '#!/bin/bash\npython3 -c "import torch; print(\"CUDA available:\", torch.cuda.is_available()); print(\"GPU count:\", torch.cuda.device_count()); print(\"GPU name:\", torch.cuda.get_device_name(0) if torch.cuda.is_available() else \"No GPU\"); import ctypes; print(\"cuDNN version:\", ctypes.cdll.LoadLibrary(\"libcudnn.so.8\").cudnnGetVersion())"' > /verify_gpu.sh \
#     && chmod +x /verify_gpu.sh

# # Set entrypoint to verify GPU and then run bash
# ENTRYPOINT ["/bin/bash", "-c", "/verify_gpu.sh && bash"]

# # Set environment variables
# ENV DEBIAN_FRONTEND=noninteractive
# ENV PYTHONUNBUFFERED=1

# # Install Python and dependencies
# RUN apt-get update && apt-get install -y \
#     python3.10 \
#     python3-pip \
#     ffmpeg \
#     git \
#     build-essential \
#     && rm -rf /var/lib/apt/lists/*

# # Create symbolic link for python
# RUN ln -s /usr/bin/python3.10 /usr/bin/python

# # Upgrade pip and install wheel
# RUN pip3 install --no-cache-dir --upgrade pip wheel setuptools

# # Install Whisper with CUDA support
# RUN pip3 install --no-cache-dir \
#     torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 \
#     && pip3 install --no-cache-dir git+https://github.com/openai/whisper.git

# # Set working directory
# WORKDIR /downloads

# # Create a script to verify GPU availability
# RUN echo '#!/bin/bash\npython3 -c "import torch; print(\"CUDA available:\", torch.cuda.is_available()); print(\"GPU count:\", torch.cuda.device_count()); print(\"GPU name:\", torch.cuda.get_device_name(0) if torch.cuda.is_available() else \"No GPU\")"' > /verify_gpu.sh \
#     && chmod +x /verify_gpu.sh

# # Set entrypoint to verify GPU and then run bash
# ENTRYPOINT ["/bin/bash", "-c", "/verify_gpu.sh && bash"]
