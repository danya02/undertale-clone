0x000000:
    if !(> global.plot 11s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x000094
0x000024:
    if !(== global.interact 1s) goto 0x000068
0x000038:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000068
0x000054:
    push (== self.touch 1s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x000094
0x000070:
    global.plot = 12s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000094:
    exit
