0x000000:
    if !(== self.on 1s) goto 0x0000C8
0x000014:
    self.image_xscale = (- self.image_xscale 0.4d)
    self.image_alpha = (+ self.image_alpha 0.25d)
    self.image_yscale = (+ self.image_yscale 0.3d)
    if !(>= self.image_alpha 1s) goto 0x000094
0x000088:
    self.image_alpha = 1s
0x000094:
    if !(>= self.image_yscale 1s) goto 0x0000B4
0x0000A8:
    self.on = 2s
0x0000B4:
    stog.alarm[0s] = 3s
0x0000C8:
    if !(== self.on 2s) goto 0x0000FC
0x0000DC:
    self.image_yscale = (+ self.image_yscale 0.1d)
0x0000FC:
    if !(== self.on 0s) goto 0x000198
0x000110:
    self.image_xscale = (+ self.image_xscale 0.25d)
    self.image_alpha = (- self.image_alpha 0.25d)
    self.image_yscale = (- self.image_yscale 0.4d)
    if !(< self.image_yscale 0.1d) goto 0x000198
0x00018C:
    call (instance_destroy[]:int32 )
0x000198:
    exit
