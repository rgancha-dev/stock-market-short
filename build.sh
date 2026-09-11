#!/bin/bash
set -e

# Build script to create final_short.mp4
# Requires: ffmpeg
# Expects: slide1.png ... slide6.png, voice.mp3, music.mp3

# Convert slides to mp4 segments with durations matching the original plan
ffmpeg -y -loop 1 -i slide1.png -c:v libx264 -t 3 -pix_fmt yuv420p -vf "scale=1080:1920" slide1.mp4
ffmpeg -y -loop 1 -i slide2.png -c:v libx264 -t 9 -pix_fmt yuv420p -vf "scale=1080:1920" slide2.mp4
ffmpeg -y -loop 1 -i slide3.png -c:v libx264 -t 13 -pix_fmt yuv420p -vf "scale=1080:1920" slide3.mp4
ffmpeg -y -loop 1 -i slide4.png -c:v libx264 -t 10 -pix_fmt yuv420p -vf "scale=1080:1920" slide4.mp4
ffmpeg -y -loop 1 -i slide5.png -c:v libx264 -t 10 -pix_fmt yuv420p -vf "scale=1080:1920" slide5.mp4
ffmpeg -y -loop 1 -i slide6.png -c:v libx264 -t 10 -pix_fmt yuv420p -vf "scale=1080:1920" slide6.mp4

# Concatenate
cat > list.txt <<EOF
file 'slide1.mp4'
file 'slide2.mp4'
file 'slide3.mp4'
file 'slide4.mp4'
file 'slide5.mp4'
file 'slide6.mp4'
EOF

ffmpeg -y -f concat -safe 0 -i list.txt -c copy temp_video.mp4

# Mix voice + music
# music.mp3 should exist (put your chosen background music file as music.mp3)
ffmpeg -y -i temp_video.mp4 -i voice.mp3 -i music.mp3 -filter_complex "[2:a]volume=0.2[a2];[1:a]volume=1.0[a1];[a1][a2]amix=inputs=2:duration=first:dropout_transition=2[aout]" -map 0:v -map "[aout]" -c:v copy -c:a aac -shortest final_short.mp4

# Optional: burn captions (requires ffmpeg with libass)
ffmpeg -y -i final_short.mp4 -vf "subtitles=captions.srt:force_style='FontName=Noto Sans Devanagari,Fontsize=48,PrimaryColour=&H00FFFFFF'" -c:a copy final_with_subs.mp4

echo "Built final_short.mp4 and final_with_subs.mp4"
