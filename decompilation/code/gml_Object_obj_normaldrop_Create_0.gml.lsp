0x000000:
    self.vspeed = (+ 2s (random[]:int32 (var 1s)))
    self.gravity = 0.2d
    self.gravity_direction = 270s
    self.y = (+ self.y 245s)
    call (scr_depth[]:int32 )
    self.y = (- self.y 245s)
    self.dont = 0s
    self.goal = (+ self.ystart 240s)
    if !(== self.room 107s) goto 0x0000D8
0x0000B4:
    self.goal = (+ self.ystart (random[]:int32 (var 480s)))
0x0000D8:
    exit
