https://github.com/yt-dlp/yt-dlp?tab=readme-ov-file
https://github.com/SYSTRAN/faster-whisper

# Command example

`yt-dlp -o "%(title)s.%(ext)s" -x https://www.youtube.com/watch?v=drTGtJEvRCA&list=PLbsmSVzhiwvA8VNMAW_cuDqujRQULBjFd`

`whisper --model medium --language japanese `

`time /venv/bin/python3 -c "from faster_whisper import WhisperModel; model = WhisperModel('large-v3', device='cuda, compute_type='float16'); segments, _ = model.transcribe('audio.opus', language='ja'); print('\n'.join([segment.text for segment in segments]))"`

# Install python from PPA

```sh
apt update
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt updated
apt install python3.12
apt install python3-pip
```

# Benchmark

URL of the tested video : `https://www.youtube.com/watch?v=drTGtJEvRCA&list=PLbsmSVzhiwvA8VNMAW_cuDqujRQULBjFd`
Time = 3:55 / 235 seconds
Language = Japanese

## Machines Specs

- PC CPU = i9-13900K/32GB DDR5
- PC GPU = RTX 4090/24GB VRAM
- Server = Ryzen 7 5700U/32GB DDR4
- MBPro M1 = M1 Pro/32BG RAM

## Results

| Engine         | Model    | Machine | Time | Command                                                                                                                                                                                                                      |
| :------------- | :------- | :------ | :--- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Whisper        | medium   | PC CPU  | 0    | truc                                                                                                                                                                                                                         |
| Whisper        | medium   | PC GPU  | 0    | truc                                                                                                                                                                                                                         |
| Whisper        | medium   | MBPro   | 7:00 | /venv/bin/python -m whisper --model medium --language Japanese audio.opus                                                                                                                                                    |
| Whisper        | medium   | Server  | 0    | truc                                                                                                                                                                                                                         |
| Whisper        | large-v3 | PC CPU  | 0    | truc                                                                                                                                                                                                                         |
| Whisper        | large-v3 | PC GPU  | 0    | truc                                                                                                                                                                                                                         |
| Whisper        | large-v3 | MBPro   | N/A  | /venv/bin/python -m whisper --model large --language Japanese audio.opus                                                                                                                                                     |
| Whisper        | large-v3 | Server  | 0    | truc                                                                                                                                                                                                                         |
| faster-whisper | medium   | PC CPU  | 0    | truc                                                                                                                                                                                                                         |
| faster-whisper | medium   | PC GPU  | 0    | truc                                                                                                                                                                                                                         |
| faster-whisper | medium   | MBPro   | 3:10 | time /venv/bin/python3 -c "from faster*whisper import WhisperModel; model = WhisperModel('medium'); segments, * = model.transcribe('audio.opus', language='ja'); print('\n'.join([segment.text for segment in segments]))"   |
| faster-whisper | medium   | Server  | 0    | truc                                                                                                                                                                                                                         |
| faster-whisper | large-v3 | PC CPU  | 0    | truc                                                                                                                                                                                                                         |
| faster-whisper | large-v3 | PC GPU  | 0    | truc                                                                                                                                                                                                                         |
| faster-whisper | large-v3 | MBPro   | N/A  | time /venv/bin/python3 -c "from faster*whisper import WhisperModel; model = WhisperModel('large-v3'); segments, * = model.transcribe('audio.opus', language='ja'); print('\n'.join([segment.text for segment in segments]))" |
| faster-whisper | large-v3 | Server  | 0    | truc                                                                                                                                                                                                                         |

## Notes

### MacBookPro

#### Whisper

root@0a6defed1adb:/downloads# time /venv/bin/python -m whisper --model medium --language Japanese audio.opus
/venv/lib/python3.12/site-packages/whisper/transcribe.py:132: UserWarning: FP16 is not supported on CPU; using FP32 instead
warnings.warn("FP16 is not supported on CPU; using FP32 instead")
real 7m2.725s
user 21m26.984s
sys 1m42.045s
real 6m46.220s
user 20m47.402s
sys 1m36.188s

Cant manage to make large model run..

#### faster-whisper

`time /venv/bin/python3 -c "from faster_whisper import WhisperModel; model = WhisperModel('medium'); segments, _ = model.transcribe('audio.opus', language='ja'); print('\n'.join([segment.text for segment in segments]))"`

real 3m29.739s
user 11m20.090s
sys 0m27.116s
real 3m2.302s
user 11m7.031s
sys 0m22.684s

### PC
