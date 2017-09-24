0x000000:
    if !(< self.image_alpha 1s) goto 0x00006C
0x000014:
    self.image_alpha = (+ self.image_alpha 0.12d)
    self.direction = (+ self.direction self.increase)
    self.increase = (- self.increase 2s)
    goto 0x000078
0x00006C:
    self.image_alpha = 1s
0x000078:
    self.image_angle = self.direction
0x000088:
    exit
