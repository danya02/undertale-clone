0x000000:
    if !(== self.conversation 9s) goto 0x000020
0x000014:
    self.conversation = 10s
0x000020:
    if !(== self.conversation 11s) goto 0x000040
0x000034:
    self.conversation = 12s
0x000040:
    if !(== self.conversation 17s) goto 0x000060
0x000054:
    self.conversation = 18s
0x000060:
    if !(== self.conversation 24s) goto 0x000080
0x000074:
    self.conversation = 25s
0x000080:
    exit
