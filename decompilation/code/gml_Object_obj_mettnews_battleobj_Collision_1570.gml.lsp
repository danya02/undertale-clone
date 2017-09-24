0x000000:
    if !(== global.interact 0s) goto 0x00003C
0x000014:
    if !(== self.tangible 1s) goto 0x00003C
0x000028:
    push (<= self.b_buffer 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000050
0x000044:
    self.myinteract = 1s
0x000050:
    exit
