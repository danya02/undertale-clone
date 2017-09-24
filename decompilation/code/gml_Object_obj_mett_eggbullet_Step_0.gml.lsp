0x000000:
    if !(< self.image_alpha 1s) goto 0x000034
0x000014:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000034:
    self.image_angle = (+ self.image_angle self.ang)
    push self.y
    if !(> -1s (+ 0s:view_yview 245s)) goto 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    push self.x
    if !(< -1s (- 0s:view_xview 4s)) goto 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    push self.x
    if !(> -1s (+ 0s:view_xview 324s)) goto 0x0000EC
0x0000E0:
    call (instance_destroy[]:int32 )
0x0000EC:
    exit
