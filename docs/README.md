## What’s in this documentation

This documentation covers installation and usage of the iOS-Analytics-SDK.

## Where to get support

For any problems or questions not covered by the instructions below, contact EMAIL: sdk_support@mobfox.com or open an issue.

## Table of Contents

<!-- toc -->

* [Prerequisites](#prerequisites)
* [Installation](#installation)
  * [CocoaPods](#cocoapods)
  * [Manual Installation](#manual-installation)
  * [ATS](#ats)
* [Usage](#usage)
  * [Initializing the SDK](#initializing)
  * [Methods](#methods)
 
<!-- toc stop -->

## Prerequisites

* The SDK supports **iOS 9.0 and later**.
* You will need a [MobFox](https://mobfox.atlassian.net/wiki/spaces/PUMD/pages/354549848/Setup+MobFox+Account) account.

## Installation

### Before you start

Set 'Always Embed Swift Standard Libraries' in your 'build settings' to Yes.

### CocoaPods

If you do not have Podfile yet:

    1. Close your Xcode project<br>
    2. In terminal, go to your project location and type **pod init** to create Podfile<br>
    3. Use **open -a Xcode Podfile** to edit Podfile<br>
    4. Add to your Podfile:<br>

```xml
   pod 'MobFoxAnalyticsSDK', '3.6.6'
```

       or for **dynamic framework** add:

```xml
   pod 'MobFoxAnalyticsSDKDynamic', '3.6.6'
```

    5. Save your pod file and type **pod install**<br>


### Manual Installation

To do a manual installation:

    1. Download and unzip [MobFox-Analytics-SDK](https://github.com/mobfox/iOS-Analytics-SDK-Dist/releases/latest) or clone this repository<br>
    2. For integrating **static** framework, drag **MobFoxAnalyticsSDK.embeddedframework**<br>
       from the Finder into your project<br>
    3. For integrating **dynamic** framework, drag **MobFoxAnalyticsSDKDynamic.embeddedframework**<br>
       from the Finder into your project<br>
       (**Note:** MobFoxSDKCoreDynamic.framework must be under 'Embedded Binaries' and 'Linked Frameworks and Libraries')<br>


### ATS

One of the changes in iOS9 is a default setting that requires apps to make network connections only over SSL. This is known as App Transport Security.
<br><br>
Mobfox is facilitating the transition to support this change for each of our demand partners to ensure they are compliant.
<br><br>
In the meantime, developers who want to release apps that support iOS9, will need to disable ATS in order to ensure Mobfox continues to work as expected, and in iOS10 and later only disable ATS for Media and Web content.
<br><br>
To do so, developers should add the following to their **plist**:
<br>
```xml
<key>NSAppTransportSecurity</key>
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
<key>NSAllowsArbitraryLoadsForMedia</key>
<true/>
<key>NSAllowsArbitraryLoadsInWebContent</key>
<true/>
</dict>
```

Developers can also edit the plist directly by adding NSAppTransportSecurity key of dictionary type with the parameters:
<br><br>
NSAllowsArbitraryLoads, NSAllowsArbitraryLoadsForMedia, and NSAllowsArbitraryLoadsInWebContent
set to true.
<br><br>
In the future, Mobfox will provide an additional parameter for requesting only secure ads. We will inform our publishers through the [Control Panel](https://account.mobfox.com/).
<br><br>
More information about this change can be found on Apple's [website](https://developer.apple.com/library/prerelease/ios/technotes/App-Transport-Security-Technote/index.html#//apple_ref/doc/uid/TP40016240).
<br><br>
For further questions about iOS9 and ATS, please create a ticket at [MobFox](https://account.mobfox.com/www/cp/create_ticket.php).
<br><br>
**If your app already relies on NSAllowsArbitraryLoads for some http request/s please do not modify your plist**
<br><br>


## Usage

First add the following import:<br>

```objc
	#import <MobFoxAnalyticsSDK/MFDMPManager.h>
```
```objc
	#import <MobFoxAnalyticsSDKDynamic/MFDMPManager.h>
```
```objc
	[[MFDmpManager sharedManager] init];
```
```objc
	BOOL res = [MFDmpManager isDMPReportDisabled];
```
```objc
	[MFDmpManager setDMPReportDisabled:(BOOL)bDisabled];
```

## Thank you for using MobFox Andoid-Analytics-SDK !
