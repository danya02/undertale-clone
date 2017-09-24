0x000000:
    self.image_angle = (+ self.image_angle self.ang)
    if !(> self.y (+ self.ystart self.maxy)) goto 0x000070
0x000040:
    call (instance_create[]:int32 (var 1228s) self.y self.x)
    call (instance_destroy[]:int32 )
0x000070:
    exit
