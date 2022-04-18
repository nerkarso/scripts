# !/bin/bash

## Usage
# chmod +x image-to-text.sh
# ./image-to-text.sh

## Requirements
# - [tesseract](https://github.com/tesseract-ocr/tesseract)

## Instructions
# 1. Store all the .jpg images in 1 folder
# 2. Run this script

for file in *.jpg;
  do tesseract "$file" "text/${file%%.*}";
done
