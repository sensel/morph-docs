## API Advanced Topics

For programmers who need to configure the sensor with custom values, and get all the details from the device, we've extended the API documentation with these Advanced topics.

### Baud Rate
 
For the Sensel Morph Hacker Cable, the communication baud rate is set to 115200. The baud rate value cannot be modified.
 
### Scan Detail
 
Scan Detail determines the spatial resolution and speed of scanning of the Sensel device. There are three supported modes: High Detail (0), Medium Detail (1), Low Detail (2). Medium Detail is the default mode. High Detail gives you finer spatial resolution, but lower speed. The Low Detail mode gives you a faster frame rate but lower spatial resolution. The scan detail can be set using senselSetScanDetail. 
 
### Frame Rate
 
By default, the sensor scans at 125 frames per second. You can change the maximum frame rate by using senselSetMaxFrameRate. This can be useful if your application is reading from the sensor significantly slower than the sensor is scanning (i.e. Arduino). The maximum allowable frame rate value is 2000 (value is in Hz). For higher frame rates, however, the actual frame rate is dependent on the Scan Detail. For instance, when the Sensel Morph Scan Detail is set to Medium Detail, the sensor can be scanned up to 250 frames per second, while in Low Detail, the sensor can be scanned up to 1000 frames per second. This detail scanning limit will override the maximum frame rate.
 
### Dynamic Baseline
 
Dynamic Baselining removes unintended forces over time in order to prevent spurious contacts and is on by default. Dynamic Baselining can be enabled and disabled using senselSetDynamicBaselineEnabled.

### Blob Merging
 
As part of our contact detection algorithm, we first detect regions of force that could be contacts, called Blobs. During this contact detection, one or more Blobs can be merged into a single Contact. Larger contacts, like thumbs or wrists, are often made up of two or more Blobs. Blob Merging is on by default. It can be disabled by using senselSetContactsEnableBlobMerge. 
 
### Contacts Min Force
 
The Contacts Min Force is the minimum force needed to have a contact reported. The value can be changed using senselSetContactsMinForce. The value being sent should be multiplied by the unit scale for force (by default 8 on the Sensel Morph). The default value of the Contacts Min Force is 160 (20g). 
 
### LED Control
 
On Sensel devices with LEDs, like the Sensel Morph, it is possible to discover the number of LEDs, determine the brightness levels available, get the current state of each LED, and set each LED. This is possible through the API using senselGetNumAvailableLEDs, senselGetMaxLEDBrightness, senselSetLEDBrightness, and senselGetLEDBrightness respectively. On the Sensel Morph, there are 24 LEDs, each with 256 levels of brightness.
 
### Power Button Pressed
 
On Sensel devices with a Power Button, the API can be used to detect whether the button is being pressed using senselGetPowerButtonPressed. The value will be 1 if the button is pressed and 0 otherwise. 
 
### Buffer Control
 
If frames are not read quickly off a Sensel device, it is possible that a frame of data could be missed. As a result, it is possible to set a buffer on the Sensel device to accumulate frames until the Sensel device is read using senselSetBufferControl. By default, the buffer is disabled. On a Sensel Morph it is possible to set this buffer up to 50 frames.