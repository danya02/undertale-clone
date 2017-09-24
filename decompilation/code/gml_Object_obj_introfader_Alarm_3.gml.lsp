0x000000:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(<= self.image_alpha 0.2d) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    stog.alarm[3s] = 2s
0x00005C:
    exit
