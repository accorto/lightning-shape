#!/usr/bin/env bash
set -e
set -x

# copy current version of slds

## from node module
# npm install @salesforce-ux/design-system --save
# npm install @salesforce-ux/design-tokens --save
# npm install @salesforce-ux/icons --save

# npm outdated
# npm update --save
# npm install
# npm ls --depth 0

#├── @salesforce-ux/design-system@0.12.1
#├── @salesforce-ux/design-tokens@1.3.1
#├── @salesforce-ux/icons@3.3.0

# save ldart
cp -R www/scss/ldart material/scss
cp www/scss/lightningdart.scss material/scss


SLDS=node_modules/@salesforce-ux/design-system

## Copy to target - assets
rm -R www/assets
cp -R ${SLDS}/assets www

## Copy to target - scss
rm -R www/scss
cp -R ${SLDS}/scss www

#TOKENS=node_modules/@salesforce-ux/design-tokens
#cp -R ${TOKENS}/dist www/scss
#mv www/scss/dist www/scss/tokens
#sed -i "" "s|@salesforce-ux/design-tokens/dist|tokens|g" www/scss/_design-tokens.scss


## delete not used icon files
#cd www/assets/icons
#rm -R action
#rm -R custom
#rm -R doctype
#rm -R standard
#rm -R utility

#rm action-sprite/symbols.html
#rm custom-sprite/symbols.html
#rm doctype-sprite/symbols.html
#rm standard-sprite/symbols.html
#rm utility-sprite/symbols.html
#rm README
#cd -


# copy material
cp -R material/images www/assets
cp -R material/scripts www/assets
cp -R material/images www/assets
cp -R material/styles www/assets
cp LightningDartLogo.svg www/assets/images

cp -R material/scss/ldart www/scss
cp -R material/scss/lightningdart.scss www/scss
