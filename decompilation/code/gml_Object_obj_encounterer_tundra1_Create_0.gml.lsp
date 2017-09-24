0x000000:
    self.alldead = 0s
    global.encounter = 0s
    call (script_execute[]:int32 (var 203s) (var 16s) (var 30s) (var 120s) (var 101s))
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
    exit
