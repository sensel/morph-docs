# API Data Output Description

Now that you have the API and the libraries installed, and you’ve run the examples and gotten some data, you probably have the question “What does it all mean?” There are two categories of data you can receive from the Morph: “frame” and “contact.” 

“Frame” provides information about the entire surface such as the raw bitmap of the “force image”, accelerometer data, lost frames, and more.

“Contact” describes parameters associated with an individual touch on the surface: where, how much pressure, how big of a touch, t`he orientation, etc. Contact information is what most developers will be interested in. Researchers and programmers looking to extend Contact data will find the Frame Data useful.

This guide describes all the possible output from polling the Sensel Morph with the API.  

## Frame Data

Frame data is reported every time a frame is requested, within the limits of the scanning rates. Each frame reports the Contact Data (described in the next section) and some additional data described below. The dimensions of a frame are 185x105, which is the column/row count of sensors on the Morph.

### Accelerometer

Value range: 0-1

Units: Gs

Raw accelerometer data can tell you the orientation of the Morph. A three item list reports the force of gravity on each axis [x, y, and z].

### Force Array

Value range: 0-8192

Units: grams

The force array reports a 2D array of all the force readings for every sensel (force sensor) on the Morph. This is a 185x105 matrix. You can use the SenselApp Visualizer to get an idea of what the output “looks” like. This is the raw pressure image of all contacts, and would require additional image processing or machine learning algorithms to be useful.

### Labels Array

Value range: 0-16

Units: n/a

The labels array is a 2D array of 185x105 elements that describe contact blobs with the assigned IDs. The Labels array tells you the ID at every sensel on the Morph in any frame. An ID of `255` is the null ID. This can be used to associate contat tracking with the force array.

### Lost Frame Count

The Lost Frame count reports the difference between the frames scanned by the sensor and the frames retrieved by the API. This can be helpful in diagnosing problems and optimizing your program.

### Number of Contacts

A single integer reporting the number of active contacts, or contacts with the state `start`.

### Content Bitmask

The Content Bitmask is used to enable or disable reporting of the five (5) parameters in Frame Data: Force Array, Labels Array, Accelerometer Data, Lost Frame Count. Set the byte value according to the parameters needed. For example, a value of “12” (01100) would report Labels Array and Accelerometer Data. 

## Contact Data

The Morph can sense 1 to 16 fingers (or styli) and will report the following information for each “touch”.

By default, ID, Coordinates, State, Total Force, and Area are reported. The additional contact parameters Ellipse, Deltas, Bounding Box, and Peak Force can be reported according to the four bit value of the Set Contact Bitmask.

### ID

Value range: 0 - 15

ID is assigned per contact, unique for the duration of the contact. For example if you put your index finger down, the contact will be assigned ID 0. Adding a thumb gives that contact ID 1. The Morph does not assign IDs based on finger or persistence beyond the duration of a contact. For example, the index finger is not always assigned ID 0. IDs are assigned sequentially and recycled when contacts are released.

### Coordinates

Value range: 0 - 240, 0 - 139

Units: millimeters

Coordinates are reported as a list for X (horizontal) and Y (vertical). The origin is the top left of the Morph (near the power button). Y is positive down, X is positive to the right.

### State

Values: `start`, `move`, `end`

When contact is made, the state is reported as `start`. If the contact coordinates change, state changes to `move.` When the contact is broken, it is reported as `end.` Every contact is guaranteed a `start` and `end` state. The `move` state is not guaranteed, as contacts may happen too rapidly for the scanning rate to reliably report a `move.`

### Total Force

Value range: 0 - 8192

Units: grams

Force is measured in grams, and is a calibrated value for consistency among units. However, it is not suitable for commerce.

### Area

Value range: 0 - 33360 

Units: square mm

Area reports the size of the contact, as measured by the activity on each sensel of the sensor.

### Ellipse

Value Range: -360 - 360

Units: degrees, mm

Three values are reported to describe the approximate ellipse of the contact. The angle of orientation, major axis length, and minor axis length. The angle range can report values outside the 360 degree range to prevent discontinuities; if a contact is rotated past a full turn, the value will increase past 360 degrees allowing for detection of rotation past a full turn. This is somewhat of an edge case.

### Deltas

Value Range: 0 - 240, 0 - 139, , 0 - 33360

Units: mm, grams, square mm

Deltas reports changes between frames, in coordinates, force and area. This is reported as a list [∆x, ∆y, ∆-force, ∆-area]. The deltas could be calculated from other incoming data, but this is a convenient way to access this information.

### Bounding Box

Value range:

Units: mm

The rectangle that contains the contact area is reported as a four-item list, using the top-left and bottom-right corner coordinates of the bounding box. [x&lt;sub&gt;tl&lt;/sub&gt;, y&lt;sub&gt;tl&lt;/sub&gt;, x&lt;sub&gt;bl&lt;/sub&gt;, y&lt;sub&gt;bl&lt;/sub&gt;].

### Peak Force

Value range: 0 - 1000

Units: grams, mm

The highest detected force value in the contact area, reported as a list of force value and the coordinates of that force value. [force, x, y].

### Set Contact Bitmask

This API call will allow the optional parameters to be reported. It’s a single value represented by four (4) bits for each parameter: Ellipse, Deltas, Box, and Peak Force. For example, if you want to see just the Ellipse data reported with the standard data, you’d set the bitmask value to “8” corresponding to the bit pattern [1000]. Ellipse and Deltas would have the value “12” (1100). All optional data would be “16” (1111).