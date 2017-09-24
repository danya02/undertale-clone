0x000000:
    if !(< self.speed 0.5d) goto 0x00003C
0x00001C:
    self.image_alpha = (- self.image_alpha 0.03d)
0x00003C:
    if !(< self.image_alpha 0.1d) goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    self.image_xscale = (+ self.image_xscale (/ (double 1s) (+ 4s (* self.image_xscale 8s))))
    self.image_yscale = (+ self.image_yscale (/ (double 1s) (+ 4s (* self.image_yscale 8s))))
    self.image_angle = (+ self.image_angle (+ self.speed 1s))
0x0000F8:
    exit
