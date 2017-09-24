0x000000:
    if !(== self.conversation 0s) goto 0x000020
0x000014:
    self.conversation = 1s
0x000020:
    if !(== self.conversation 7s) goto 0x000040
0x000034:
    self.conversation = 8s
0x000040:
    if !(== self.conversation 21s) goto 0x000060
0x000054:
    self.conversation = 22s
0x000060:
    exit
