0x000000:
    if !(< global.turntimer 1s) goto 0x000038
0x000014:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000038:
    if !(< self.image_alpha 1s) goto 0x00006C
0x00004C:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x00006C:
    exit
