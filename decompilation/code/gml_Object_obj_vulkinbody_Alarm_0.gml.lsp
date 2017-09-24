0x000000:
    if !(== self.pause 0s) goto 0x000048
0x000014:
    call (instance_create[]:int32 (var 335s) (+ self.y 4s) (+ self.x 50s))
0x000048:
    stog.alarm[0s] = 15s
0x00005C:
    exit
