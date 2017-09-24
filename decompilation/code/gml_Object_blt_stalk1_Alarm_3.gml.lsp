0x000000:
    self.xx = (+ self.xx 1s)
    call (instance_create[]:int32 (var 670s) (+ self.y 13s) (+ self.x 13s))
    if !(< self.xx 3s) goto 0x000074
0x000060:
    stog.alarm[3s] = 8s
0x000074:
    exit
