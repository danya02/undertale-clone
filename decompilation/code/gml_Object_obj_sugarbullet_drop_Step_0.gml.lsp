0x000000:
    push self.y
    if !(> -1s (+ 0s:view_yview 250s)) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    self.image_angle = (+ self.image_angle self.ang)
0x000050:
    exit
