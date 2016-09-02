# cordova-plugin-screensize

![Platform](https://img.shields.io/badge/platform-android%20%7C%20ios%20%7C%20osx%20%7C%20browser-lightgrey.svg)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=R7STJ6V2PNEMA)

A cordova plugin to get the size of the device screen.

## Installation

```
cordova plugin add cordova-plugin-screensize
```

## Supported Platforms

- Android
- iOS
- OSX
- Browser

## Usage

```js
document.addEventListener("deviceready", onDeviceReady, false);

function onDeviceReady() {
  window.plugins.screensize.get(successCallback, errorCallback);
}

function successCallback(result) {
  console.log(result);
}
```

The plugin returns a JSON object with the screen sizes.

## Android Platform Quirks

Return values:

* `width` &lt;Number&gt; − screen width in pixels
* `height` &lt;Number&gt; − screen height in pixels
* `xdpi` &lt;Number&gt; − physical pixels per inch of the screen in the X dimension
* `ydpi` &lt;Number&gt; − physical pixels per inch of the screen in the Y dimension
* `diameter` &lt;Number&gt; − screen diameter in inches (rounded to two decimals)
* `densityValue` &lt;Number&gt; − density point (`0.75`, `1.0`, `1.5`, `2.0`, `3.0`, `4.0`)
* `densityBucket` &lt;String&gt; − density bucket (`ldpi`, `mdpi`, `hdpi`, `xhdpi`, `xxhdpi`, `xxxhdpi`)

About density properties see this [Android docs](https://developer.android.com/guide/practices/screens_support.html) and this [Device metrics](https://design.google.com/devices/) page.

### Known Issues

The correct device metrics setting is the manufacturer's responsibility. In a few cases the `xdpi` and `ydpi` values are wrong and the diameter calculation returns an incorrect number.

Devices with wrong settings (known so far):

- BLU Life XL (model `BLU LIFE XL`, calculated diameter 8.62" vs. real diameter 5.5")
- Samsung Galaxy SIII CDMA (model `SPH-L710`, calculated diameter 9.17" vs. real diameter 4.8")
- ZTE nubia Z7 Max (model `NX505J`, calculated diameter 13.77" vs. real diameter 5.5")

## iOS Platform Quirks

iOS has no public API for getting the device's PPI.

The plugin returns the [rendered pixels](http://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions) of the screen.

Return values:

* `width` &lt;Number&gt; − rendered pixel width
* `height` &lt;Number&gt; − rendered pixel height
* `scale` &lt;Number&gt; − render scale (1× or 2× or 3×)

## OSX Platform Quirks

Return values:

* `width` &lt;Number&gt; − screen width in pixel
* `height` &lt;Number&gt; − screen height in pixel
* `physicalWidth` &lt;Number&gt; − width of the display in millimeters
* `physicalHeight` &lt;Number&gt; − height of the display in millimeters
* `dpi` &lt;Number&gt; − physical pixels per inch of the display

## Browser Platform Quirks

The plugin returns the dimensions of the viewport. You can't get the real physical dimensions or the actual DPI of the browser ( [see](http://stackoverflow.com/a/21767407) ).

Return values:

* `width` &lt;Number&gt; − viewport width in pixels
* `height` &lt;Number&gt; − viewport height in pixels

## Author

#### Peter Bakondy

- https://github.com/pbakondy


## LICENSE

**cordova-plugin-screensize** is licensed under the MIT Open Source license. For more information, see the LICENSE file in this repository.
