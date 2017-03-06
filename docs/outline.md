# Welcome
This documentation explains what makes up the Sensel Morph and how to use it.
## Overview - What is Morph
The Sensel Morph is a reconfigurable control surface for artists, musicians, coders, and creative people of all stripes. It can work using Bluetooth 4.0LE connection or USB.
## What's in the box
![Sensel Morph box and contents](img/morph_unboxed.jpg)

* Morph
* 3ft. USB Micro Cable
* Carrying case
* Overlays
* Quickstart guide

## Quick Start
This guide will get your Morph out of the box and working with your computer or mobile device.
### Download Software
Download the SenselApp dashboard application from [the Sensel website.](http://www.sensel.com)
### Wired connection
Remove the Morph and the supplied USB Micro cable from the box. Initial setup should be done on a macOS or Windows computer. Connect the Morph to your computer with the USB cable. The Morph will power up and automatically connect to your operating system.
### Update Firmware
Make sure you have a reliable internet connection and launch the SenselApp on your computer with the Morph connected. The application will query our servers and find if there is a firmware update available. If there is, update your firmware and continue.
### Launch the Visualizer
The Visualizer is the easiest way to see activity on your Morph.

### Bluetooth connection
This section describes how to pair and unpair your Morph to a bluetooth connection on a number of operating systems. Include flow chart of connection states?
#### OSX
System Preferences, bluetooth. Pairing and successful pairing.
#### Windows
TBD
#### iOS
System Prefs bluetooth.
#### Android
TBD
#### Linux
TBD. Depends on the distro, really. Probably just document Ubuntu 16?

#### Bluetooth MIDI configuration
If your operating system supports MIDI over Bluetooth, you can have a wireless MIDI controller.
##### OSX
Screenshot of AudioMIDI MIDI window, showing Bluetooth MIDI connection
![Sensel Morph Bluetooth MIDI in macOS](img/macOS_bluetoothMIDI_connect.jpg)
![Sensel Morph Bluetooth MIDI in macOS](img/macOS_bluetoothMIDI_connected.jpg)
##### Windows
What versions is BLEMIDI supported?
##### iOS
Use the [midimittr app](https://itunes.apple.com/us/app/midimittr/id925495245?mt=8) to connect to iOS MIDI applications.
##### Android
Need 'droid device to test and document. I believe Marshmallow and above support BLE MIDI.
##### Linux
Appears it's on the horizon according to [this blog](https://blog.felipetonello.com/2017/01/13/midi-over-bluetooth-low-energy-on-linux-finally-accepted/)

## Hardware
The Morph hardware description
### Features
![Sensel Morph callouts](img/morph_callouts.jpg)
### LEDS
#### bar
There is a bar of <N> white LEDs. These light up at different times and can be controlled somehow.
#### single rgb
This LED can be different colors indicating different things. The different colors and blink patterns are:

* red -
* red then off -
* green
* purple
* blue

### Button
Use to power device on/off and put in Bluetooth pairing mode.
### Connector
A single USB micro connector for charging the battery and providing a serial connection.
### Force Sensor Surface
Things to know. Doesn't do anything without an Overlay.
### Care and Feeding
Use these types of cleaners. Don't put it underwater. Temperature ranges. Touching the surface vs. using media on the surface.

## MorphApp Software
The software is used to configure, calibrate, and comfort!
### Home
Select an overlay to edit.
### Overlay Edit
Change MIDI notes. Or other stuff.
### Visualizer
View the raw pressure information. Try different materials between the stylus and pressure surface.

## Overlays
### QWERTY
Works like a regular QWERTY keyboard. You will need to configure for your Operating System using the SenselApp.
### Piano
Sends on MIDI Channel 1. Default octaves start at note 36 (C3).
### Drums
Sends on MIDI Channel 10. Default note assignments are... Uses high speed sampling so it can be used with hands or with sticks.
### MPC
The 16 Pad grid sends on MIDI Channel 2, the controls send on MIDI Channel 2, the "piano keys" send on MIDI Channel 3.
### Gaming
Works like a bluetooth gaming controller.
### Media
Used to edit video.
### Art
Use as a high-resolution drawing interface to capture the finest strokes with a variety of brushes and stylii.
### Innovator
Your turn to make an overlay! The Innovator kit works with the API.

## Use it!
As the name implies, there are a lot of different ways to use the high-resolution force sensor.

### Music Software Guides
For the most part, when the Morph is used as a MIDI device, it shows up like any other MIDI keyboard or controller. However, there are some details worth documenting, since, with default mappings, each overlay sends on a different channel.
#### Ableton Live
![Ableton Live Preferences for Sensel Morph Bluetooth connection](img/ableton_midi_bluetooth.jpg)
![Ableton Live Preferences for Sensel Morph wired connection](img/ableton_midi_wired.jpg)
#### Bitwig Studio
![Bitwig Studio Preferences for Sensel Morph Bluetooth connection](img/bitwig_midi_bluetooth.jpg)
![Bitwig Studio Preferences for Sensel Morph wired connection](img/bitwig_midi_wired.jpg)
#### Apple Logic Pro X, Garage Band, and Main Stage
"It just works" is the general idea. Could provide some insight on mapping CCs.
#### Presonus StudioOne
TBD
#### Propellerheads Reason
TBD. There are a few strategies with this.
#### Other Programs
These programs are worth investigating, since they are popular.
##### Ardour
##### Reaper
##### ProTools
##### Kontakt
##### Massive
##### Maschine
##### Traktor

## API
There's a software API for Python and C/C++. Find out more [at our github](http://github.com/sensel)
