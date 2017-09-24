0x000000:
    if !(== self.memorymode 0s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    if !(== self.memorymode 1s) goto 0x00004C
0x000034:
    self.active = 0s
    self.visible = 0s
0x00004C:
    exit
