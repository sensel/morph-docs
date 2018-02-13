## SenselApp Software
The SenselApp is your entry point for maintaining and modifying your Sensel Morph. It can be used for simple tasks such as updating firmware or visualizing the contacts and pressure, modifying existing overlays to better match your workflow, or radically transforming your overlays from their intended purpose into completely custom controllers. In short, the SenselApp can be used to execute all the possibilities of the Morph.

### Download
You can download the SenselApp using these links:
* [Windows](http://senselapp.com/download/win.php)
* [Windows 32-bit](http://senselapp.com/download/win32.php)
* [MacOS](http://senselapp.com/download/mac.php)

### SenselApp Overview

When an overlay is selected in the SenselApp, your screen will appear as below. 

![SenselApp editor callouts](img/morphapp_callouts.jpg)

* Morphs - A list of all the Morphs attached via USB to your computer. Click on one in the list to get information about the Morph, such as serial number, firmware version, and battery level. You can also set the “No Overlay” Mode here.
* Update Firmware - A red “Update Firmware” indicates that Sensel has a new version of the firmware available for your morph. It is best to always update when possible. Click on the Morph's name in the Morphs panel to show the **Update Firmware** button.
* Overlays - This area shows all overlays and their associated maps that you have added to the Sensel App for the selected Morph.
  * Map Name - Click the Map Name to bring up the Overlay Mapper and edit its values. You must press **Send Map to Morph** to make these changes present on the Morph. 
* Functions:
  * Add Overlay - Click this button to add a new overlay and modify the controls for any given overlay. 
  * Visualizer -  Click to turn on the visualizer to view all contacts and their pressure levels.
  * Tutorial - Toggles hints for a quick reminder of what each section is for. 
* Overlay Mapper - Click on a Map Shows the selected overlay and its controls for editing and re-assigning. Click on any control to fill the Inspector with current values. 
* **Send Map** Button - Click to send to the Morph any changes made to the Map with the SenselApp. 
* Inspector - Used to edit the output and behavior of any control, such as changing its type, key value, or MIDI message output.
* Top Menu - Contains functions for copying, editing, and sharing map files for the different overlays.
* Hide Left Panel - Click the **X** in the top left to hide the left panel.
* Current SenselApp Version - shows the version number of the Sensel App.

When a Morph is selected in the SenselApp, your screen will look similar to below.

![SenselApp Morph info page callouts](img/morphpage_callouts.jpg)

* Selected Morph - Select a Morph from the list of USB-connected Morphs to display the Morph Info screen. 
* Morph Info - Shows Morph name, serial number, firmware version, and battery level. Additional text describes possible behaviors for using the bare Morph.
* Update Firmware - click to download firmware files from Sensel servers and update the firmware on the device.
* Clear Morph Maps - Clear all Map files that have been uploaded to the Morph.
* **No Overlay Mode** Selector - Use this menu to select how the Morph behaves with no overlay. Descriptions are in the Morph Info screen.


### Visualizer
Before we get too busy, let's have a little bit of fun. Click on the **Visualizer** button and attach a Morph. Press on the sensor with your fingers, and see the corresponding pressure image on your computer screen.

### SenselApp: First Use

The first time you use the Sensel App, it will appear with the Help hints visible, which you can read over and turn off using the Tutorial button. You may need to update the firmware - just click on the Morph name and then click the **Update Firmware** button in the Morph Info window.

To get started editing controls on your overlays, click "Add Overlay" and select the type of overlay you want to add:

![SenselApp select overlay](img/morphapp_selectoverlay.jpg)

Notice there are multiples of some overlays. These are alternate mappings for MIDI Polyphonic Expression (MPE) that make it easy to set up an overlay as an MPE controller. If you select an MPE variant, you'll need to "Send Map to Morph" for those settings to work on your Morph.

If you place an overlay on the Morph before you open the App, the SenselApp will open in the Overlay Mapper view, showing the Overlay you placed on the Morph. 

### Editing an Overlay

Editing an Overlay's output and behavior is fairly straightforward, though the large array of options can make it seem complicated. Simply put, modifying a single control takes 4 steps.

![SenselApp edit control on overlay](img/morphapp_editsteps.jpg)

1. Select an overlay
1. Click on a control
1. Change values in the inspector
1. Send Map to Morph

You can repeat steps 2 & 3 several times, making all your edits, then send the map to the Morph when you are ready to try your changes. 

An edit can be very simple. For example, on the video editing overlay, you may want to adjust the controls for Apple Final Cut Pro. The **Selection** button outputs the letter *v* for Adobe Premier, but Final Cut Pro X uses the letter *a* for the shortcut. Making this change is as simple as selecting **A (4)** from the **Key** menu:

![SenselApp edit control on video overlay](img/morphapp_selectA.jpg)

You can, of course, make very different changes. You can add modifiers for other macro commands in a video editing software, or even go into left field and make it send a MIDI message to control music software.

All the different types of controls and the values you can change in the Inspectors are documented below.

### Control Types

* Keyboard
  * Key
  * Function Key
  * Modifier - Ctl, Opt, Shift, CMD
  * Threshold
  * LED

* MIDI Note
  * Channel
  * Note
  * After-Pressure
  * Threshold
  * LED

* MIDI CC
  * Channel
  * CC
  * After-pressure
  * Threshold
  * LED

* Media
  * Media
  * FN Key
  * Modifier - Ctl, Opt, Shift, CMD
  * Threshold
  * LED

* Gamepad
  * Type
  * Button
  * Threshold
  * LED

* MMC (MIDI Machine Control)
  * MMC Message
  * After-Pressure
  * Threshold

* Morph MIDI Modifier
  * Custom MIDI
  * After-Pressure
  * Threshold
  * LED

* MPE
  * Note
  * Press
  * X
  * Y
  * Pitch Range
  * Threshold
  * 14-bit
  * Absolute Position
  * LED

* Touchpad
  * Touchpad Type
  * Click Activiation
  * Threshold
  * LED

* Setting
  * Setting
  * Value
  * Threshold
  * LED

* Keyboard Slider
  * Right
  * Left
  * Modifier - Ctl, Opt, Shift, CMD
  * Threshold
  * LED

* MIDI CC Slider
  * Channel
  * CC
  * Afterpressure
  * Threshold
  * LED

* Knob Modifier
  * CW
  * CCW
  * Modifier - Ctl, Opt, Shift, CMD
  * Threshold
  * LED

* Pressure Button
  * Down
  * Up
  * Modifier - Ctl, Opt, Shift, CMD
  * Threshold
  * LED

### Top Menu

* Rename Map
* Delete Map
* Duplicate Map
* Import
* Export
* Revert to Original
* Mute/Unmute