0x000000:
    if !(== self.flashing 1s) goto 0x000058
0x000014:
    if !(== self.visible 1s) goto 0x000038
0x000028:
    self.visible = 0s
    goto 0x000044
0x000038:
    self.visible = 1s
0x000044:
    stog.alarm[0s] = 1s
0x000058:
    exit
