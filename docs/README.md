## What’s in this documentation

This documentation covers installation and usage of the iOS-Analytics-SDK.

## Where to get support

For any problems or questions not covered by the instructions below, contact EMAIL: sdk_support@mobfox.com or open an issue.

## Table of Contents

<!-- toc -->

* [Prerequisites](#prerequisites)
* [Installation](#installation)
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

    1. Close your Xcode project.
    2. In terminal, go to your project location and type **pod init** to create Podfile.
    3. Use **open -a Xcode Podfile** to edit Podfile.
    4. Add to your Podfile:

```java
   pod 'MobFoxAnalyticsSDK', '3.6.6'
```


## Usage


### Initializing

- In your '**Application**' java class, or in your main activity '**onCreate**' - call:

```java
   // init the SDK:
   MFDMPManager.sharedInstance(context);
```

        This is all you need to do to start the SDK and have it working.
    
        Parameters:<br>
        - **context** the Context for the application or activity class.


### Methods

- Query state of the SDK (if it's disabled). The SDK is enabled by default.

```java 
    boolean isDisabled = isDMPReportDisabled(Context context); 
```

        Parameters:<br>
        - **context** the Context for the application or activity class.
<br>
<br>
- Set the state of the SDK (disable or enable it).
        
```java
    setDMPReportDisabled(Context context, boolean newVal);
```

        Parameters:<br>
        - **context** the Context for the application or activity class.<br>
        - **newVal** the new state required.<br>
<br>
<br>
<br>
## Thank you for using MobFox Andoid-Analytics-SDK !