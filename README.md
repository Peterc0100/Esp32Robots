# Esp32Robots
AArduino code to control up to 4 Robots simultaneously , which include Lego Boost , Wowwee Miposaur and wowwee Dinosaur

This code uses the basic Libraries within Arduino so you dont have to install any 3rd party packages. (Needs to be compiled with minimal spiffs and for the esp32 board preferences is set to "https://espressif.github.io/arduino-esp32/package_esp32_index.json") it connects to a sql database to hold information about the robots to be controlled. It uses http to communicate between the esp32 board and the database. The code could be amended to remove the database interface and perhaps hard code the commands to submit to the robot.

if you are trying it out you need to put in your wifi id and password. you need to put in the board address of the sql database.

Feel free to improve on the code.
