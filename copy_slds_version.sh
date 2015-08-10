#!/usr/bin/env bash
set -e
set -x

# copy current version of slds

SLDS=slds/salesforce-lightning-design-system-v0.5.1

## Copy to target

cp -R ${SLDS}/assets www
cp -R ${SLDS}/scss www

## delete not used files
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


