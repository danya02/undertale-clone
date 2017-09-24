0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    push -5s
    if !(== 100s:flag 1s) goto 0x00006C
0x000050:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x00008C
0x000074:
    call (instance_destroy[]:int32 )
    global.interact = 0s
0x00008C:
    exit
