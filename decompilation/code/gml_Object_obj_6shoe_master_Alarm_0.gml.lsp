0x000000:
    if !(== self.type 0s) goto 0x0000B0
0x000014:
    if !(!= self.num 12s) goto 0x000058
0x000028:
    call (instance_create[]:int32 (var 1612s) (var 400s) (+ self.room_width 10s))
    goto 0x000084
0x000058:
    call (instance_create[]:int32 (var 1613s) (var 400s) (+ self.room_width 50s))
0x000084:
    self.num = (+ self.num 1s)
    stog.alarm[0s] = 24s
0x0000B0:
    exit
