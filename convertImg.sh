#!/usr/bin/env bash
set -x

cp LightningDartLogo.svg www/assets/images

cd www/assets/images
# 1024 png
ICON=LightningDartLogo.png
## https://cloudconvert.com/svg-to-png
## convert -background none ld.svg $ICON -- does not work!

convert $ICON -define icon:auto-resize=64,48,32,16 favicon.ico
convert $ICON -resize 120 LightningDartLogo-120.png
convert $ICON -resize 60 LightningDartLogo-60.png
convert $ICON -resize 48 LightningDartLogo-48.png
convert $ICON -resize 32 LightningDartLogo-32.png
convert $ICON -resize 16 LightningDartLogo-16.png

cd -

