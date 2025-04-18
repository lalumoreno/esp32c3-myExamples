Guide: 
https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-macos-setup.html#get-started-prerequisites


Clone espressif tools and checkout to the latest release
https://github.com/espressif/esp-idf.git
git submodule update --init 

Setup tools
cd ~/esp/esp-idf
./install.sh esp32c3
. ./export.sh

sudo usermod -a -G dialout $USER
newgrp dialout

Set settings if needed. Ex: WIFI for http server
idf.py menuconfig

Build project: 
idf.py set-target esp32c3
idf.py build

Install project
idf.py -p /dev/ttyACM0 flash
idf.py -p /dev/ttyACM0 monitor
