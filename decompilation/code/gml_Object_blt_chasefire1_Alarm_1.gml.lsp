0x000000:
    call (move_towards_point[]:int32 (var 2s) (+ 743.y 2s) (+ 743.x 2s))
    self.friction = -0.05d
    stog.alarm[2s] = 4s
    self.dmg = 5s
    if !(< global.hp 7s) goto 0x000088
0x00007C:
    self.dmg = 2s
0x000088:
    exit
