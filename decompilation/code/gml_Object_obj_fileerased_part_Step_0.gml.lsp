0x000000:
    if !(> self.y 600s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.image_angle = (+ self.image_angle self.ang)
0x00003C:
    exit
