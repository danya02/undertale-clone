0x000000:
    self.alldead = 0s
    global.encounter = 0s
    if !(== global.entrance 1s) goto 0x000064
0x00002C:
    call (script_execute[]:int32 (var 203s) (var 16s) (var 30s) (var 160s) (var 101s))
    goto 0x000098
0x000064:
    call (script_execute[]:int32 (var 203s) (var 16s) (var 30s) (var 300s) (var 101s))
0x000098:
    push -5s
    if !(== 203s:flag 0s) goto 0x0000C8
0x0000B4:
    push (> global.plot 100s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x0000DC
0x0000D0:
    call (instance_destroy[]:int32 )
0x0000DC:
    exit
