0x000000:
    if !(== self.havewater 0s) goto 0x000038
0x000014:
    stog.flag[366s] = 1s
    self.havewater = 1s
    goto 0x000058
0x000038:
    stog.flag[366s] = 0s
    self.havewater = 0s
0x000058:
    exit
