0x000000:
    if !(== self.conversation 3s) goto 0x000020
0x000014:
    self.conversation = 4s
0x000020:
    if !(== self.conversation 5.6d) goto 0x000048
0x00003C:
    self.conversation = 6s
0x000048:
    if !(== self.conversation 8s) goto 0x000068
0x00005C:
    self.conversation = 9s
0x000068:
    exit
