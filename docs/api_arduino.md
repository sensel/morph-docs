# Developer's Cable and Arduino

The Morph Developer's Cable is a simple accessory that connects the Morph's micro USB to the serial UART pins of an Arduino MEGA microcontroller. This simple connection allows developers to develop prototypes of products that do not depend on a fully featured computer, but instead run on a simple microcontroller and basic power supply.

## Getting Started 

You'll need at least a few things on hand to start experimenting with the Arduino API.

### Hardware:

* [Morph](https://sensel.com/products/the-sensel-morph)
* [Morph Developer's Cable](https://sensel.com/collections/all/products/developers-cable)
* [Arduino MEGA](https://store.arduino.cc/usa/arduino-mega-2560-rev3)
* [USB Printer (A/B) Cable](https://www.monoprice.com/product?p_id=5438)
* [Power Supply](https://playground.arduino.cc/Learning/WhatAdapter) *optional*

#### Hardware Connections

It is <span style="color:red;font-weight:800;font-size:18px">VERY IMPORTANT TO CHECK YOUR CONNECTIONS</span>. If you make a mistake and connect Ardunio power to the Morph's Serial connections, <span style="color:red;font-weight:800;font-size:18px">YOU MAY DAMAGE YOUR MORPH</span> beyond repair.

![Sensel Morph and Arduino connections](img/arduino_allconnections.jpg)
Your basic connections for developing with the Arduino IDE and the Sensel Morph are as follows:

* USB Printer Cable connects your computer to the Arduino's USB B port
* Developer Cable USB micro to Morph
* On Developer Cable: Black, Red, White, Yellow:
    * Black - GND
    * Red - RX
    * White - TX
    * Yellow - 5V_IN
* On Arduino: Black, Red, White, Yellow:
    * Black - GND
    * Red - TX1
    * White - RX1
    * Yellow - 5V
* If you want to run the Arduino without a computer, you'll need a [power supply](https://playground.arduino.cc/Learning/WhatAdapter) connected to the barrel jack on the Arduino.

Here are detailed images showing all the connections:

![Sensel Morph Developer's Cable rear](img/arduino_devcable_back.jpg)
Connections to Developer's Cable micro USB side

![Connecting to Arduino Serial1 on MEGA](img/arduino_serialcnxns.jpg)
Connections from Developer's Cable to "Serial1" on Arduino MEGA board (pins 18 and 19).

![Connecting to Arduino power supply on MEGA](img/arduino_powercnxns.jpg)
Connections from Developer's Cable to Arduino MEGA power supply.

### Software:

* [Arduino API](https://github.com/sensel/sensel-api-arduino)
* [Arduino IDE for your OS](https://www.arduino.cc/en/Main/Software)

#### Software Setup



### Why MEGA?

The MEGA has dedicated hardware serial support. We found that the Arduino SoftwareSerial, which is needed to support a broader range of Arduino boards, was not up to the task of high baudrate, high bandwidth data coming from the Morph. 

