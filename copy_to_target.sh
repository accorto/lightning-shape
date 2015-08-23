#!/usr/bin/env bash
set -e
set -x

# recreate assets
gulp sass

# cp LightningDartLogo.svg www/assets/images
# convertImg.sh

# copy to target folder - sorry hardcoded
TARGET=/Users/jorg/Documents/BizPlatform/lightning/lightning-dart

rm -R ${TARGET}/lib/assets
cp -R www/assets ${TARGET}/lib
cp LightningDartLogo.svg ${TARGET}

# delete not used css in target
rm ${TARGET}/lib/assets/styles/salesforce-lightning*


# copy to GitHubPages
GITHUB=/Users/jorg/Documents/Accorto/gh-pages/lightning-dart/

cp -R ${TARGET}/lib/assets/* ${GITHUB}
cp www/assets/images/*.ico ${GITHUB}
cp LightningDartLogo.svg ${GITHUB}

