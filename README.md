# cordova-plugin-screensize

A cordova plugin to get the size of the device screen.

## Installation

```
cordova plugin add cordova-plugin-screensize
```

## Supported Platforms

- Android
- iOS
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
* `dpi` &lt;Number&gt; − screen DPI
* `diameter` &lt;Number&gt; − screen diameter in inches (rounded to two decimals)

## iOS Platform Quirks

iOS has no public API for getting the device's PPI.

The plugin returns the [rendered pixels](http://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions) of the screen.

Return values:

* `width` &lt;Number&gt; − rendered pixel width
* `height` &lt;Number&gt; − rendered pixel height
* `scale` &lt;Number&gt; − render scale (1× or 2× or 3×)

## Browser Platform Quirks

The plugin returns the dimensions of the viewport. You can't get the real physical dimensions or the actual DPI of the browser ( [see](http://stackoverflow.com/a/21767407) ).

Return values:

* `width` &lt;Number&gt; − viewport width in pixels
* `height` &lt;Number&gt; − viewport height in pixels

## Author

#### Peter Bakondy

- https://github.com/pbakondy


## LICENSE

cordova-plugin-screensize is licensed under the MIT Open Source license. For more information, see the LICENSE file in this repository.
