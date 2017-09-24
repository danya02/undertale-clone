0x000000:
    self.y = (+ self.y 5s)
    call (scr_depth[]:int32 )
    self.y = (- self.y 5s)
    self.image_speed = 0s
    self.image_alpha = 0s
    self.con = 0s
    stog.alarm[5s] = 30s
0x000074:
    exit
