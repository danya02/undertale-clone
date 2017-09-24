0x000000:
    self.image_angle = (+ self.direction 90s)
    push self.y
    if !(> -5s 3s:idealborder) goto 0x000044
0x000038:
    call (instance_destroy[]:int32 )
0x000044:
    exit
