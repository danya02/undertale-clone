0x000000:
    self.itemfree = 8s
    self.itemhold = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x0000A8
0x000038:
    push -5s
    if !(!= (int32 self.i):item 0s) goto 0x00008C
0x00005C:
    self.itemfree = (- self.itemfree 1s)
    self.itemhold = (+ self.itemhold 1s)
0x00008C:
    self.i = (+ self.i 1s)
    goto 0x000024
0x0000A8:
    exit
