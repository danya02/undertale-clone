0x000000:
    if !(== self.melting 0s) goto 0x000020
0x000014:
    self.melting = 1s
0x000020:
    if !(== self.melting 3s) goto 0x000040
0x000034:
    self.melting = 4s
0x000040:
    exit
