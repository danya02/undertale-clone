0x000000:
    if !(== self.con 0s) goto 0x000038
0x000014:
    call (instance_create[]:int32 (var 1529s) self.y self.x)
0x000038:
    stog.alarm[1s] = 10s
0x00004C:
    exit
