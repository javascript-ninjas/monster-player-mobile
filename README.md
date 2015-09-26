# Monster Player Mobile

Available on Android 5.x.x devices.

## Preparation

`npm install -g cordova ionic`

## Things needed

 1. Download Android SDK [1]
 2. Install Android SDK Tools (install with SDK Manager [2])

## Build application

`ionic build android`

## Uploading on the device

 1. Install driver [3]
 2. Call command:
   `adb install <path_to_your_bin>.apk`

[1]: https://developer.android.com/sdk/index.html
[2]: https://developer.android.com/tools/help/sdk-manager.html
[3]: http://developer.android.com/tools/extras/oem-usb.html#Drivers
