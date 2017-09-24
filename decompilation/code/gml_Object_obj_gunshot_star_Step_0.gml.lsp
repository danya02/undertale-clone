0x000000:
    self.siner = (+ self.siner 15s)
    self.sineramt = (+ self.sineramt self.sinerspeed)
    self.sinerspeed = (+ self.sinerspeed self.sinergrav)
    self.image_angle = (+ self.image_angle self.ang)
    self.asiner = (degtorad[]:int32 self.siner)
    self.x = (+ self.xstart (* (sin[]:int32 self.asiner) self.sineramt))
    self.y = (+ self.ystart (* (cos[]:int32 self.asiner) self.sineramt))
    self.size = (+ 1s (/ self.sinerspeed (double 20s)))
    if !(< self.size 0.2d) goto 0x000130
0x000124:
    self.size = 0s
0x000130:
    if !(< self.sinerspeed 0s) goto 0x000164
0x000144:
    self.image_alpha = (- self.image_alpha 0.07d)
0x000164:
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(<= self.sineramt 0.5d) goto 0x0001AC
0x0001A0:
    call (instance_destroy[]:int32 )
0x0001AC:
    exit
