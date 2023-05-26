# README

This example implements a USB Human Interface Device (HID)
to demonstrate the use of the USB device stack.

git clone https://github.com/libopencm3/libopencm3-examples  
put this folder here: libopencm3-examples/examples/stm32/f4/other/usb_hid  
this file shall be libopencm3-examples/examples/stm32/f4/other/usb_hid/usbhid.c  
Document, connect PB5 to the IO, if PB5 changed, this device will send packet to move the mouse a little to prevent PC to sleep  
variables: static const int reload = 99; // 99:1s, 999:10s  
variables: 2nd number of buf_plus and buf_minus is the distance which the mouse moves horizontally  


# compile and flash  
make -j  
sh objcopy.sh  
set stm32f4 in DFU mode (with boot0 set to high)  
sh flash_dfu.sh  
