0x000000:
    if !(== self.fall 0s) goto 0x00005C
0x000014:
    call (instance_create[]:int32 (var 328s) (+ self.y 56s) (+ self.x 46s))
    stog.alarm[0s] = 10s
0x00005C:
    exit
