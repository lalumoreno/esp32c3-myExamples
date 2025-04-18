Guide: 
https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-macos-setup.html#get-started-prerequisites


Clone espressif tools and checout to last release
https://github.com/espressif/esp-idf.git
git submodule update --init 

Setup tools
cd ~/esp/esp-idf
./install.sh esp32c3
. ./export.sh

sudo usermod -a -G dialout $USER
newgrp dialout


AFTER EXPORT: 
go to proyect
idf.py set-target esp32c3
idf.py build
idf.py -p /dev/ttyACM0 flash
idf.py -p /dev/ttyACM0 monitor
