#!/bin/bash
# Create a simple thumbnail (1280x720) for the Short preview
FONT="/usr/share/fonts/truetype/noto/NotoSansDevanagari-Regular.ttf"
convert -size 1280x720 xc:"#FF3B30" -font "$FONT" -fill white -gravity center -pointsize 120 -annotate +0+0 "Stock Market\nKya Hai?" thumbnail.png

echo "thumbnail.png created"
