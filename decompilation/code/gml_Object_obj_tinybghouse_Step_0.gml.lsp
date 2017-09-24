0x000000:
    push -1s
    if !(< 0s:view_xview self.x) goto 0x000034
0x000020:
    push (== self.man 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000070
0x00003C:
    stog.alarm[1s] = (+ 300s (random[]:int32 (var 90s)))
    self.man = 1s
0x000070:
    exit
