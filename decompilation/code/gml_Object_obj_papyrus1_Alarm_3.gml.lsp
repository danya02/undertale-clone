0x000000:
    if !(== self.conversation 7s) goto 0x000020
0x000014:
    self.conversation = 8s
0x000020:
    if !(== self.conversation 9s) goto 0x000040
0x000034:
    self.conversation = 10s
0x000040:
    if !(== self.conversation 15s) goto 0x000078
0x000054:
    pushenv 1337s 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    popenv 0x00005C
0x00006C:
    self.conversation = 16s
0x000078:
    if !(== self.conversation 21s) goto 0x000098
0x00008C:
    self.conversation = 22s
0x000098:
    if !(== self.conversation 24s) goto 0x0000B8
0x0000AC:
    self.conversation = 25s
0x0000B8:
    exit
