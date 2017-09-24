0x000000:
    self.ex = 0s
    if !(!= global.plot 25s) goto 0x00002C
0x000020:
    self.ex = 1s
0x00002C:
    push -5s
    if !(== 45s:flag 4s) goto 0x000054
0x000048:
    self.ex = 1s
0x000054:
    push -5s
    if !(== 7s:flag 1s) goto 0x00007C
0x000070:
    self.ex = 0s
0x00007C:
    if !(== self.ex 1s) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    exit
