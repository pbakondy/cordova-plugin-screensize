# cordova-plugin-screensize

A cordova plugin to get the physical size of the device screen.

## Installation

```
cordova plugin add cordova-plugin-screensize
```

## Supported Platform

- Android

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

The plugin returns a JSON object. Return values:

* `width` &lt;Number&gt; - screen width in pixels
* `height` &lt;Number&gt; - screen height in pixels
* `diameter` &lt;Number&gt; - screen diameter in inches (rounded to two decimals)


## Author

#### Peter Bakondy

- https://github.com/pbakondy


## LICENSE

cordova-plugin-screensize is licensed under the MIT Open Source license. For more information, see the LICENSE file in this repository.
