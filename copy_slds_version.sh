#!/usr/bin/env bash
set -e
set -x

# copy current version of slds

## from node module
# npm install @salesforce-ux/design-system --save
# npm install @salesforce-ux/design-tokens --save
# npm install @salesforce-ux/icons --save

# npm outdated
# npm update
# npm install
# npm ls --depth 0
SLDS=node_modules/@salesforce-ux/design-system

## Copy to target

cp -R ${SLDS}/assets www
cp -R ${SLDS}/scss www

## delete not used icon files
cd www/assets/icons
rm -R action
rm -R custom
rm -R doctype
rm -R standard
rm -R utility

rm action-sprite/symbols.html
rm custom-sprite/symbols.html
rm doctype-sprite/symbols.html
rm standard-sprite/symbols.html
rm utility-sprite/symbols.html
rm README
cd -


# copy Logo
cp LightningDartLogo.svg www/assets/images


