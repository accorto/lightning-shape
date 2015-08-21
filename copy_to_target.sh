#!/usr/bin/env bash
set -e
set -x

# recreate assets
gulp sass

# copy to target folder - sorry hardcoded
TARGET=/Users/jorg/Documents/BizPlatform/lightning/lightning-dart

rm -R ${TARGET}/lib/assets
cp -R www/assets ${TARGET}/lib

# delete not used css in target
rm ${TARGET}/lib/assets/styles/salesforce-lightning*

cp LightningDartLogo.svg ${TARGET}


# copy to GitHubPages
TARGET=/Users/jorg/Documents/Accorto/gh-pages/lightning-dart

cp www/assets/styles/lightningdart.css ${TARGET}
cp LightningDartLogo.svg ${TARGET}

