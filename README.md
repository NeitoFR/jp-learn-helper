https://github.com/yt-dlp/yt-dlp?tab=readme-ov-file
https://github.com/SYSTRAN/faster-whisper

# Command example

`yt-dlp -o "%(title)s.%(ext)s" -x https://www.youtube.com/watch?v=drTGtJEvRCA&list=PLbsmSVzhiwvA8VNMAW_cuDqujRQULBjFd`

`whisper --model medium --language japanese `

`time python3 -c "from faster_whisper import WhisperModel; model = WhisperModel('large-v3', device='cuda', compute_type='float16'); segments, _ = model.transcribe('audio.opus', language='ja'); print('\n'.join([segment.text for segment in segments]))"`

# Install python from PPA

```sh
apt update
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt updated
apt install python3.12
apt install python3-pip
```