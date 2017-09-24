0x000000:
    self.xx = (+ (/ self.room_width (double 2s)) (choose[]:int32 (var -140s) (var 140s)))
    push (var 315s)
    self.xbul = (instance_create[]:int32 -5s (+ (random[]:int32 (+ 2s:idealborder (c_borderheight[]:int32 (var 0s)))) 20s) self.xx)
    stog.alarm[1s] = 4s
0x0000A0:
    exit
