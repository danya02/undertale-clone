0x000000:
    self.alldead = 0s
    global.encounter = 0s
    call (script_execute[]:int32 (var 203s) (var 16s) (var 30s) (var 120s) (var 101s))
    if !(== self.room 57s) goto 0x00007C
0x000060:
    push -5s
    push (!= 64s:flag 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x0000B8
0x000084:
    call (script_execute[]:int32 (var 203s) (var 16s) (var 30s) (var 220s) (var 101s))
0x0000B8:
    push -5s
    if !(== 203s:flag 0s) goto 0x0000E8
0x0000D4:
    push (> global.plot 100s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    if !(== self.room 67s) goto 0x000130
0x000110:
    if !(< global.plot 67s) goto 0x000130
0x000124:
    call (instance_destroy[]:int32 )
0x000130:
    exit
