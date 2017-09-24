0x000000:
    if !(< (abs[]:int32 (- self.x self.thisx)) 2s) goto 0x000038
0x000028:
    self.x = self.thisx
0x000038:
    if !(> self.x self.thisx) goto 0x000068
0x000050:
    self.x = (- self.x 1s)
0x000068:
    if !(< self.x self.thisx) goto 0x000098
0x000080:
    self.x = (+ self.x 1s)
0x000098:
    exit
