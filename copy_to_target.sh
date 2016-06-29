#!/usr/bin/env bash
set -e
set -x

# recreate assets
gulp sass
gulp min

# cp LightningDartLogo.svg www/assets/images
# convertImg.sh

# copy to target folder - sorry hardcoded
TARGET=/Users/jorg/Documents/BizPlatform/lightning/lightning-dart

# save/update scripts
mkdir -p www/assets/scripts
cp ${TARGET}/lib/assets/scripts/* www/assets/scripts/
cp ${TARGET}/lib/assets/scripts/* material/scripts/

# save/update charted
cp ${TARGET}/lib/assets/styles/charted* www/assets/styles/
cp ${TARGET}/lib/assets/styles/charted* material/styles/


rm -R ${TARGET}/lib/assets
cp -R www/assets ${TARGET}/lib

# delete not used css in target
rm ${TARGET}/lib/assets/styles/salesforce-lightning*

cp www/assets/images/*.ico ${TARGET}/web
cp LightningDartLogo*.svg ${TARGET}/web

# additional targets
TARGET=/Users/jorg/Documents/Accorto/www/accorto.com
cp -R www/assets ${TARGET}
