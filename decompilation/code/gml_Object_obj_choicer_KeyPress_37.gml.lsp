0x000000:
    if !(== self.mychoice 0s) goto 0x000024
0x000014:
    self.mychoice = 1s
    goto 0x000030
0x000024:
    self.mychoice = 0s
0x000030:
    if !(== self.mychoice 1s) goto 0x000060
0x000044:
    self.x = (+ 185s self.add)
    goto 0x000078
0x000060:
    self.x = (+ 89s self.add)
0x000078:
    exit
