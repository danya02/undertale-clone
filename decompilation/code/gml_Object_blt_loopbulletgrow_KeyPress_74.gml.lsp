0x000000:
    if !(== global.debug 1s) goto 0x000044
0x000014:
    if !(== self.cl 0s) goto 0x000038
0x000028:
    self.cl = 1s
    goto 0x000044
0x000038:
    self.cl = 0s
0x000044:
    exit
