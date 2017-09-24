0x000000:
    if !(== self.room 5s) goto 0x000034
0x000014:
    if !(!= global.plot 0s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    if !(== self.room 43s) goto 0x000068
0x000048:
    if !(> global.plot 27s) goto 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    self.image_speed = 0s
0x000074:
    exit
