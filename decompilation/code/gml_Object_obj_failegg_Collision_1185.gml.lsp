0x000000:
    call (event_user[]:int32 (var 1s))
    self.image_angle = (- self.image_angle self.ang)
    self.hspeed = (/ self.hspeed 2s)
0x000048:
    exit
