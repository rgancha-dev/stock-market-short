# Stock Market Short — "Stock Market Kya Hai?"

This repository contains all scripts and assets to build a vertical YouTube Short (1080x1920) in Hindi explaining "Stock Market Kya Hai?".

What I created (defaults I used)
- Voice: gTTS (synthetic Hindi) — make_voice.py will produce voice.mp3
- Background music: suggested free track from YouTube Audio Library (link below)
- I did NOT upload built video binaries. Use build.sh to produce final_short.mp4 locally.

Files included
- make_voice.py        — generate voice.mp3 using gTTS
- captions.srt         — subtitles for the short
- voice-prompts.txt    — human-friendly single-line prompts (one per slide)
- image_commands.sh    — ImageMagick commands to create slide1.png … slide6.png
- build.sh             — ffmpeg steps to convert slides, concat, mix voice+music, and burn captions
- thumbnail_command.sh — ImageMagick command to make a thumbnail
- README.md            — this file

Suggested free background music
- YouTube Audio Library: https://studio.youtube.com/ (search "Calm, upbeat" or pick any royalty-free short loop)

How to build (quick)
1. Install dependencies:
   - python3, pip, ffmpeg, ImageMagick
   - pip install gTTS
2. Create slides:
   - edit image_commands.sh to point FONT to a Devanagari font on your system (example: /usr/share/fonts/truetype/noto/NotoSansDevanagari-Regular.ttf)
   - run: bash image_commands.sh
3. Generate voice (gTTS):
   - python3 make_voice.py  # produces voice.mp3
4. Prepare background music file named music.mp3 in the repo root (or edit build.sh to use another filename)
5. Build the short:
   - bash build.sh
6. Result: final_short.mp4 (and final_with_subs.mp4 if you burn captions)

If you want me to upload the built video (final_short.mp4) to this repository, reply and I will add it.

License
- MIT

Enjoy — @copilot
