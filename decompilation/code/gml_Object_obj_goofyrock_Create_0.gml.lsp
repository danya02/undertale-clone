0x000000:
    self.phase = 0s
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.conversation = 0s
    self.pathtravel = 0s
    push -5s
    if !(== 33s:flag 1s) goto 0x000088
0x000064:
    self.x = (+ self.x 60s)
    self.conversation = 15s
0x000088:
    exit
