0x000000:
    self.xx = (+ (/ self.room_width (double 2s)) (choose[]:int32 (var -140s) (var 140s)))
    self.xbul = (instance_create[]:int32 (var 315s) 743.y self.xx)
    stog.alarm[2s] = 36s
0x000074:
    exit
