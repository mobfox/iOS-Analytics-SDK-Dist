## What’s in this documentation

This documentation covers installation and usage of the iOS-Analytics-SDK.

## Where to get support

For any problems or questions not covered by the instructions below, contact EMAIL: sdk_support@mobfox.com or open an issue.

## Table of Contents

<!-- toc -->

* [Prerequisites](#prerequisites)
* [Installation](#installation)
    * [Gradle](#gradle)
    * [Manifest](#manifest)
* [Usage](#usage)
  * [Initializing the SDK](#initializing)
  * [Methods](#methods)
 
<!-- toc stop -->

## Prerequisites

* The SDK supports Android OS 4.4.x (KitKat) and later.
* You will need a [MobFox](https://mobfox.atlassian.net/wiki/spaces/PUMD/pages/354549848/Setup+MobFox+Account) account.

## Installation

### Gradle

- In your app **build.gradle**, make sure you have **minSdkVersion 19** and **targetSdkVersion 28**.

- Under **dependencies** add

``` 
   compile 'com.android.volley:volley:1.1.0'
   
   compile 'com.github.mobfox.Android-Analytics-SDK:MobFox-Android-Analytics-SDK:3.6.6'
   
```

### Manifest

- Add the following permissions to your '**AndroidManifest.xml**' file:
(yes we know - there are tons of them, but they are all required for
the operation of BAZZ...)

```xml
    <uses-permission
        android:name="android.permission.WRITE_EXTERNAL_STORAGE"
        android:maxSdkVersion="18" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.CHANGE_WIFI_STATE" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.INTERNET" />
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
