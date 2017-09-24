0x000000:
    if (== self.attack 2s) goto 0x00003C
0x000014:
    if (== self.attack 21s) goto 0x00003C
0x000028:
    push (== self.attack 22s)
    goto 0x000040
0x00003C:
    push 1s
0x000040:
    if !pop goto 0x000098
0x000044:
    call (instance_create[]:int32 (var 1633s) 1591.y 1591.x)
    call (instance_create[]:int32 (var 1633s) 1591.y (+ 1591.x 1591.op))
0x000098:
    exit
