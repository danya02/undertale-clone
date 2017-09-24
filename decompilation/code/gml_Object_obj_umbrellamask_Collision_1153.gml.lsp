0x000000:
    pushenv -2s 0x000068
0x000008:
    self.g = (- self.goal self.y)
    if !(< self.g 40s) goto 0x00004C
0x000038:
    push (> self.g 6s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000068
0x000054:
    call (event_user[]:int32 (var 1s))
0x000068:
    popenv 0x000008
0x00006C:
    exit
