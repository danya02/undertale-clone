0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.room 225s) goto 0x000064
0x000048:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x0000A0
0x00006C:
    push -5s
    if !(== 452s:flag 1s) goto 0x0000A0
0x000088:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0000A0:
    if !(== self.room 222s) goto 0x0000D0
0x0000B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x00010C
0x0000D8:
    push -5s
    if !(== 453s:flag 1s) goto 0x00010C
0x0000F4:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x00010C:
    exit
