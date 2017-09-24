0x000000:
    self.image_angle = (+ self.image_angle 10s)
    if !(== self.con 3s) goto 0x0000B4
0x00002C:
    self.image_xscale = (+ self.image_xscale 0.05d)
    self.image_yscale = (+ self.image_yscale 0.05d)
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.1d) goto 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    if !(== self.con 2.2d) goto 0x000130
0x0000D0:
    self.image_xscale = (+ self.image_xscale 0.4d)
    self.image_yscale = (+ self.image_yscale 0.4d)
    if !(>= self.image_xscale 2s) goto 0x000130
0x000124:
    self.con = 3s
0x000130:
    if !(== self.con 2.1d) goto 0x000160
0x00014C:
    self.con = 2.2d
0x000160:
    if !(== self.con 2s) goto 0x000188
0x000174:
    self.con = 2.1d
0x000188:
    if !(== self.con 1s) goto 0x0001D8
0x00019C:
    self.image_xscale = 0.8d
    self.image_yscale = 0.8d
    self.con = 1.5d
0x0001D8:
    if !(== self.con 1.5d) goto 0x00025C
0x0001F4:
    self.image_xscale = (- self.image_xscale 0.1d)
    self.image_yscale = (- self.image_yscale 0.1d)
    if !(< self.image_xscale 0.2d) goto 0x00025C
0x000250:
    self.con = 2s
0x00025C:
    exit
