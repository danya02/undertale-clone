0x000000:
    self.image_angle = (+ self.image_angle (/ (+ (* self.hspeed 5s) self.inithspeed) (double 2s)))
    if !(> self.y 400s) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    exit
