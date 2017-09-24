0x000000:
    self.visible = 1s
    self.onoff = 0s
    self.nowtime = 0s
    self.maxtime = 7s
    self.xx = (+ 1581.x 8s)
    self.yy = (+ 1581.y 8s)
    self.direction = (point_direction[]:int32 self.yy self.xx self.y self.x)
    self.image_angle = self.direction
    self.memorymode = 0s
    self.active = 1s
    self.saved = 0s
    call (snd_play[]:int32 (var 163s))
0x0000D8:
    exit
