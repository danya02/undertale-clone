0x000000:
    if !(== self.on 1s) goto 0x000080
0x000014:
    if !(< self.image_alpha 1s) goto 0x00004C
0x000028:
    self.image_alpha = (+ self.image_alpha 0.1d)
    goto 0x000058
0x00004C:
    self.on = 2s
0x000058:
    self.gravity = 0.1d
    stog.alarm[1s] = 20s
0x000080:
    if !(== self.on 3s) goto 0x0000F0
0x000094:
    if !(> self.image_alpha 0s) goto 0x0000C8
0x0000A8:
    self.image_alpha = (- self.image_alpha 0.04d)
0x0000C8:
    if !(< self.image_alpha 0.1d) goto 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    self.image_angle = self.direction
0x000100:
    exit
