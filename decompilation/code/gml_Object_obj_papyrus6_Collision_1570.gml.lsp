0x000000:
    if !(== self.conversation 0s) goto 0x000040
0x000014:
    self.conversation = 1s
    other.x = other.xprevious
    other.y = other.yprevious
0x000040:
    exit
