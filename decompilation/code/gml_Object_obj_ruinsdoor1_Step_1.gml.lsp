0x000000:
    if !(== self.room 7s) goto 0x000068
0x000014:
    if !(bool (instance_exists[]:int32 (var 925s))) goto 0x000068
0x00002C:
    if (== 925.on 2s) goto 0x000054
0x000040:
    push (> global.plot 2s)
    goto 0x000058
0x000054:
    push 1s
0x000058:
    if !pop goto 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    exit
