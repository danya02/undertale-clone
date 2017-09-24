0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.con 2s) goto 0x000080
0x000048:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000080
0x000064:
    push -5s
    push (== 454s:flag 1s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0000CC
0x000088:
    self.con = 3s
    global.interact = 0s
    pushenv (int32 self.salad) 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    popenv 0x0000B0
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
