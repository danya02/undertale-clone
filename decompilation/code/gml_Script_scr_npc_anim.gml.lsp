0x000000:
    self.tt = 0s
    if !(== self.myinteract 3s) goto 0x00007C
0x000020:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000070
0x000038:
    self.image_speed = 0.2d
    if !(!= 782.halt 0s) goto 0x00006C
0x000060:
    self.tt = 1s
0x00006C:
    goto 0x00007C
0x000070:
    self.tt = 1s
0x00007C:
    if !(== self.tt 1s) goto 0x0000A8
0x000090:
    self.image_speed = 0s
    self.image_index = 0s
0x0000A8:
    exit
