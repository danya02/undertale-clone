0x000000:
    self.gravity = (- self.gravity (* self.gravitywave 0.1d))
    if !(> (abs[]:int32 self.gravity) 0.5d) goto 0x000064
0x000050:
    self.gravitywave = (- self.gravitywave)
0x000064:
    exit
