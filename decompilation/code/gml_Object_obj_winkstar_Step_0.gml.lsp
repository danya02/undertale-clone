0x000000:
    push -1s
    if !(< 0s:alarm 30s) goto 0x00003C
0x00001C:
    self.image_alpha = (- self.image_alpha 0.1d)
0x00003C:
    self.image_angle = (+ self.image_angle 8s)
0x000054:
    exit
