# !/bin/bash

## Usage
# chmod +x download-powtoon.sh
# ./download-powtoon.sh

## Requirements
# - ffmpeg

## Instructions
#  1. Publish your Powtoon animation
#  2. Go to the published page
#  3. Open your browser DevTools
#  4. Go to the Network tab
#  5. Inspect where the Powtoon is being streamed from
#    (If the Powtoon is playing from a canvas, then wait for 10-30 min
#     until the video is ready and then inspect the URL again)
#  6. Copy the URL
#  7. Seek the video till the end to load all the segments
#  8. Memorize the last segment number in `.../a.mp4/seg-17...`, in this case that is 17
#  9. Go back to the script and add that number to `VIDEO_SEG_COUNT` variable
# 10. Also replace after wget `https://...ts` with the URL you've copied
# 11. Then replace the number in `seg-1-v1-a1.ts` with the index like this `seg-$i-v1-a1.ts`
# 12. At last, run the script

# Create a new folder
mkdir powtoon
cd powtoon

# Download all the video segments
VIDEO_SEG_COUNT=REPLACE_ME

for i in {1..$VIDEO_SEG_COUNT}
do
  wget "https://.../a.mp4/seg-$i-v1-a1.ts" -O `printf %02d $i`.ts
done

# Combine all the .ts segments into a single .ts file
cat *.ts > all.ts

# Convert .ts to .mp4
ffmpeg -i all.ts out.mp4
