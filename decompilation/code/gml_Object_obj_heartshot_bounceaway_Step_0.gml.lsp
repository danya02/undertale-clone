0x000000:
    self.image_angle = (+ self.image_angle self.aspeed)
    if !(> self.x (+ self.room_width 20s)) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    if !(< self.x -20s) goto 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    exit
