0x000000:
    if !(> self.vspeed 0s) goto 0x000020
0x000014:
    self.depth = 2s
0x000020:
    if !(< self.size 1s) goto 0x000054
0x000034:
    self.size = (+ self.size 0.04d)
0x000054:
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.image_angle = (+ self.image_angle self.ang)
    push self.y
    if !(> -1s (+ 0s:view_yview 250s)) goto 0x0000C4
0x0000B8:
    call (instance_destroy[]:int32 )
0x0000C4:
    push self.x
    if !(< -1s (- 0s:view_xview 10s)) goto 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    push self.x
    if !(> -1s (+ 0s:view_xview 320s)) goto 0x00012C
0x000120:
    call (instance_destroy[]:int32 )
0x00012C:
    exit
