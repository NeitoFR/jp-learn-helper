FROM python:3.10-slim

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Whisper
RUN pip install --no-cache-dir git+https://github.com/openai/whisper.git

# Set working directory
WORKDIR /downloads

# # Copy transcription script
# COPY transcribe.sh /app/transcribe.sh
# RUN chmod +x /app/transcribe.sh

# # Set entrypoint
# ENTRYPOINT ["/app/transcribe.sh"]
