0x000000:
    self.life = (- self.life 1s)
    if !(< self.life 7s) goto 0x000038
0x00002C:
    self.image_index = 1s
0x000038:
    if !(< self.life 4s) goto 0x000058
0x00004C:
    self.image_index = 2s
0x000058:
    if !(< self.life 1s) goto 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    exit
