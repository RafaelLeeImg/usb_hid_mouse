#!/bin/sh
openocd -f /usr/share/openocd/scripts/interface/jlink.cfg -c "transport select swd" -f /usr/share/openocd/scripts/target/stm32f4x.cfg -c "program usbhid.elf verify reset exit"