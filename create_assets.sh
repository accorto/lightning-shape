#!/usr/bin/env bash
set -e
set -x

# recreate assets
gulp sass

TARGET=/Users/jorg/Documents/BizPlatform/lightning/lightning-dart/lib

rm -R ${TARGET}/assets
cp -R www/assets ${TARGET}

