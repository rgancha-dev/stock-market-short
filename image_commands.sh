#!/bin/bash

# ImageMagick slide generation (1080x1920)
# Change FONT to a Devanagari-capable font on your system
FONT="/usr/share/fonts/truetype/noto/NotoSansDevanagari-Regular.ttf"

# Slide 1 (0-3s)
convert -size 1080x1920 xc:"#0B1220" -font "$FONT" -fill white -gravity center -pointsize 110 -annotate +0-120 "Stock Market\nKya Hai?" slide1.png

# Slide 2 (3-12s)
convert -size 1080x1920 xc:"#071A2B" -font "$FONT" -fill white -gravity center -pointsize 48 -annotate +0-0 "Hisse = Company ka ownership.\nJab aap share kharidte ho, aap chhote owner ban jaate ho." slide2.png

# Slide 3 (12-25s)
convert -size 1080x1920 xc:"#082533" -font "$FONT" -fill white -gravity center -pointsize 52 -annotate +0-160 "Shares ki keemat demand-supply,\ncompany ki kamai aur news se badhti ya girti hai." -pointsize 44 -annotate +0+220 "Achha perform → price ↑  •  Kharab → price ↓" slide3.png

# Slide 4 (25-35s)
convert -size 1080x1920 xc:"#2B0F1F" -font "$FONT" -fill white -gravity center -pointsize 56 -annotate +0-120 "Risk vs Reward" -pointsize 40 -annotate +0+80 "Profit ho sakta hai, lekin loss ka bhi chance.\nResearch karo aur long-term socho." slide4.png

# Slide 5 (35-45s)
convert -size 1080x1920 xc:"#10304A" -font "$FONT" -fill white -gravity center -pointsize 58 -annotate +0-140 "Example" -pointsize 48 -annotate +0-20 "₹100 → ₹150 = Profit" -pointsize 36 -annotate +0+160 "Tip: SIP aur diversified portfolio se risk kam hota hai." slide5.png

# Slide 6 (45-55s)
convert -size 1080x1920 xc:"#8A2BE2" -font "$FONT" -fill white -gravity center -pointsize 72 -annotate +0-60 "Follow for more!" -pointsize 44 -annotate +0+120 "Like & Share" slide6.png

echo "Slides generated: slide1.png ... slide6.png"
