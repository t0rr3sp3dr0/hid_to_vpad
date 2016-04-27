#HID to VPAD#
This is a little tool that let you use a hid device instead of the WiiU Gamepad. 
Currently its very experimental and result in random crashes at exiting an application or attach/detach a device.

##Usage##
Start the .elf with the homebrew launcher. The system menu will be loaded and you can use your device. You can attach and detach devices at any time, but maybe it will result in a random crash.

##Supported devices##
The official GC Adapter, PS3/PS4 Pad, Mouse, Keyboard and a few other devices are currenty supported, check out the controller_patcher repository for the full list(https://github.com/Maschell/controller_patcher), also 99% of the logic is this reposistory.

#### GC-Adapter: ####
You can plug in the controller in any port, if mutiple pads are connected only one pad is used.
Mapping is the same as gc-to-vpad by FIX94. To quoute him:
"It just works like you would expect for the most part except for Z, holding down Z will switch L to gamepad L, R to gamepad R and start to gamepad minus. This is done for convenience purposes."

####Playstation 3/4 pad:####
Works as aspected, button layout is the same as on the gamepad (Circle is A, Cross is B etc.)
Rumble is currently not working.

####Mouse support:####
Currently mice are supported in two different modes. Pressing F1 on a connected keyboard will change the mode
- Touch mode (Touchscreen emulation) (default)
- Aim mode (Right stick emulation) (Left click is ZR, left click R)

####Keyboard mapping:####
LStick = WSAD 
DPad = Arrowkeys
A = E
B = Q
X = Space
Y(Z) = R
Plus = Enter
Minus = Minus (Numpad)
L = V
R = B
ZL = Shift
ZR = N

##Credits##
A big thanks goes out to dimok for creating the HBL, the dynamic libs and every stuff he made. The "enviroment" of this app is copied from ddd, turned out to be a "hello world" with useful extra stuff.
Also huge thanks to FIX94 who initally created his gc-to-vpad. Helped me a lot! Thanks!