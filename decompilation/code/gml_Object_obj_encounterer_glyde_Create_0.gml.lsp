0x000000:
    self.alldead = 0s
    global.encounter = 0s
    call (script_execute[]:int32 (var 203s) (var 16s) (var 150s) (var 3600s) (var 101s))
    push -5s
    if !(== 203s:flag 0s) goto 0x00007C
0x000068:
    push (> global.plot 100s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    push -5s
    if !(== 283s:flag 1s) goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    exit
