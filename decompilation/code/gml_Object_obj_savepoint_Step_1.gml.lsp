0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000064
0x000050:
    push (== self.myinteract 4s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x0000B0
0x00006C:
    if !(< global.plot 2s) goto 0x00008C
0x000080:
    global.plot = 2s
0x00008C:
    global.interact = 5s
    global.menuno = 4s
    self.myinteract = 5s
0x0000B0:
    exit
