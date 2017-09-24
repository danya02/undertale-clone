0x000000:
    self.siner = 0s
    self.y = (- self.y 80s)
    if !(> self.x 320s) goto 0x000050
0x000038:
    self.x = (- self.x 40s)
0x000050:
    if !(< self.x 320s) goto 0x00007C
0x000064:
    self.x = (+ self.x 40s)
0x00007C:
    self.image_speed = 3s
    self.frozen = 0s
    call (scr_floweybodysave[]:int32 )
0x0000A0:
    exit
