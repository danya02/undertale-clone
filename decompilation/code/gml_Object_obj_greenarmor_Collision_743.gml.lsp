0x000000:
    if !(<= self.inv 0s) goto 0x000064
0x000014:
    call (snd_play[]:int32 (var 28s))
    self.g = (- self.g 21s)
    self.r = (+ self.r 21s)
    self.inv = 20s
0x000064:
    exit
