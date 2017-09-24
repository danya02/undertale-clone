0x000000:
    if !(== self.itemuse 0s) goto 0x000028
0x000014:
    push (< self.con 50s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    self.itemuse = 1s
0x00003C:
    exit
