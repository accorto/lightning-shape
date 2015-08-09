# Lightning Design

LightningDart SCSS - SLDS

Building on Salesforce Lightning Design System
https://www.getslds.com/



## Differences

VisualForce

	<apex:page showHeader="false" standardStylesheets="false" sidebar="false" applyHtmlTag="false" applyBodyTag="false" docType="html-5.0">
	<html xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
	<head>
	  <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	  <apex:stylesheet value="{!URLFOR($Resource.SLDS051, 'SLDS051/assets/styles/{$moduleName}-vf.css')}" />
	</head>
	<body>
	  <div class="slds slds-container slds-container--large slds-container--center">
              <div class="slds-media__figure">
                <svg aria-hidden="true" class="slds-icon slds-icon--large slds-icon-standard-user">
                  <use xlink:href="{!URLFOR($Resource.SLDS051, 'SLDS051/assets/icons/standard-sprite/svg/symbols.svg#user')}" />
                </svg>
              </div>
    

Html5

	<!doctype html>
	<html>
	<head>
	  <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	  <link rel="stylesheet" type="text/css" href="/assets/styles/salesforce-lightning-design-system.css" />
	</head>
	<body>
		<div class="slds-container slds-container--large slds-container--center">
              <div class="slds-media__figure">
                <svg aria-hidden="true" class="slds-icon slds-icon--large slds-icon-standard-user">
                  <use xlink:href="/assets/icons/standard-sprite/svg/symbols.svg#user" />
                </svg>
              </div>


## Build (via node + gulp)

	npm install
	gulp sass
	
	
