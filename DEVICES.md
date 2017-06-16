# Screensize detection issues

Correct device metrics setting is the manufacturer's responsibility. In a few cases `xdpi` and `ydpi` values are incorrect and the diameter calculation returns a false number.

Devices with invalid screen size settings (known so far):

- BLU Life XL (model `BLU LIFE XL`, calculated diameter 8.62" vs. real diameter 5.5")
- Lenovo Phab Plus (model `Lenovo PB1-770M`, calculated diameter 13.2" vs. real diameter 6.8")
- Lenovo Vibe P1 (model `Lenovo P1c58`, calculated diameter 13.77" vs. real diameter 5.5")
- Samsung Galaxy SIII CDMA (model `SPH-L710`, calculated diameter 9.17" vs. real diameter 4.8")
- ZTE nubia Z7 Max (model `NX505J`, calculated diameter 13.77" vs. real diameter 5.5")
- Wiko Pulp 4G (model `PULP 4G`, calculated diameter 8.65" vs. real diameter 5")
- LGE Nexus 4 (model `Nexus 4`, calculated diameter 8.82" vs. real diameter 4.7")
- Blu LIFE ONE X2 (model `Life One X2`, calculated diameter 12.99" vs. real diameter 5.2")
- ZTE Grand X Max 2 (model `Z988`, calculated diameter 13.77" vs. real diameter 6")
- Lenovo Vibe K5 Plus (model `Lenovo A6020a46`, calculated diameter 13.77" vs. real diameter 5")

The device models of these devices are listed in file `blacklist.json`.

If you detect a new device with invalid screen size calculations please raise a new issue with the output of this plugin and cordova-plugin-device.
