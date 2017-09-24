0x000000:
    self.check = 0s
    if !(== other.inwater 0s) goto 0x000038
0x000020:
    other.inwater = 1s
    self.check = 1s
0x000038:
    exit
