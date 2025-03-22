#!/bin/sh

# Export env variables
cd /home/laura/esp/esp-idf
. ./export.sh

cd - 
#export IDF_PATH=/home/laura/esp/esp-idf
#. $HOME/esp/esp-idf/export.sh

rm -r build/
idf.py set-target esp32c3
#idf.py menuconfig
idf.py build

export ESP32_PORT=/dev/ttyACM0
idf.py -p $ESP32_PORT flash

idf.py -p $EXP32_PORT monitor


