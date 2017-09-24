0x000000:
    stog.alarm[3s] = 8s
    if !(> self.shake 0s) goto 0x000054
0x000028:
    call (instance_create[]:int32 (var 317s) (- self.y 120s) self.x)
0x000054:
    exit
