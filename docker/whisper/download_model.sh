#!/bin/bash
/venv/binpython3 -c "import whisper; \
print('Downloading Whisper medium model...'); \
whisper.load_model('medium'); \
print('Downloading Whisper large model...'); \
whisper.load_model('large'); \
print('Models downloaded successfully!')"