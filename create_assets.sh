#!/usr/bin/env bash
set -e
set -x

# recreate assets
gulp sass

TARGET=/Users/jorg/Documents/BizPlatform/lightning/lightning-dart

rm -R ${TARGET}/lib/assets
cp -R www/assets ${TARGET}/lib

cp LightningDartLogo.svg ${TARGET}
