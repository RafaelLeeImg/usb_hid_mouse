#!/bin/sh
openocd -f /usr/share/openocd/scripts/interface/jlink.cfg -c "transport select swd" -f /usr/share/openocd/scripts/target/stm32f4x.cfg -c 'adapter speed 1000' -c "init" -c "reset halt" -c "flash verify_image usbhid.elf" -c "reset halt" -c "exit"

