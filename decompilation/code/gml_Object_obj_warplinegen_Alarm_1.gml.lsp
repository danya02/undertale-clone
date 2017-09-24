0x000000:
    push -5s
    self.xx = (+ 0s:idealborder (random[]:int32 (c_borderwidth[]:int32 (var 0s))))
    if !(== self.otheri 0s) goto 0x00007C
0x000048:
    self.yy = -40s
    self.xx = (+ 743.x 10s)
    self.otheri = 1s
    goto 0x0000A0
0x00007C:
    self.otheri = 0s
    self.yy = (+ self.room_height 40s)
0x0000A0:
    call (instance_create[]:int32 (var 316s) self.yy self.xx)
    stog.alarm[1s] = 18s
    if !(bool (instance_exists[]:int32 (var 308s))) goto 0x000104
0x0000F0:
    stog.alarm[1s] = 24s
0x000104:
    exit
