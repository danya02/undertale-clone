0x000000:
    self.image_speed = 0s
    self.y = (+ self.y (+ 40s (random[]:int32 (var 40s))))
    self.hspeed = (+ 6s (random[]:int32 (var 2s)))
    self.hspeed = (* self.hspeed (choose[]:int32 (var 1s) (var -1s)))
    if !(< self.hspeed 0s) goto 0x0000C4
0x000098:
    self.image_index = 1s
    push -5s
    self.x = (+ 1s:idealborder 40s)
0x0000C4:
    if !(> self.hspeed 0s) goto 0x000104
0x0000D8:
    push -5s
    self.x = (- 0s:idealborder 40s)
    self.image_index = 0s
0x000104:
    stog.alarm[0s] = 10s
0x000118:
    exit
