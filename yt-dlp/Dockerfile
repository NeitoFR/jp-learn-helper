FROM python:3.10.17

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

RUN pip install yt-dlp

# ENTRYPOINT ["bash"]