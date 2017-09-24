0x000000:
    if !(bool (instance_exists[]:int32 self.tailobj)) goto 0x0000A4
0x000018:
    self.image_speed = (/ (int32 self.tailobj):mercymod (double 400s))
    if !(> self.image_speed 2s) goto 0x000060
0x000054:
    self.image_speed = 2s
0x000060:
    self.x = (- (int32 self.tailobj):x 1s)
    self.y = (int32 self.tailobj):y
    goto 0x0000B0
0x0000A4:
    call (instance_destroy[]:int32 )
0x0000B0:
    exit
