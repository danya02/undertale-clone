0x000000:
    if !(== self.fade 1s) goto 0x00005C
0x000014:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.05d) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    exit
