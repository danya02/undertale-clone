0x000000:
    if !(== self.con 0s) goto 0x000040
0x000014:
    other.x = other.xprevious
    other.y = other.yprevious
    self.con = 1s
0x000040:
    exit
