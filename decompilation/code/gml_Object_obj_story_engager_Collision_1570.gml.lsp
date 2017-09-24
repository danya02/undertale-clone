0x000000:
    push -5s
    if !(== 7s:flag 1s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    exit
0x00002C:
    if !(== self.threshold 17s) goto 0x00005C
0x000040:
    push -5s
    push (>= 492s:flag 12s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000078
0x000064:
    stog.flag[450s] = 17s
0x000078:
    push -5s
    if (>= 450s:flag self.threshold) goto 0x0000B4
0x000098:
    push -5s
    push (>= 493s:flag 12s)
    goto 0x0000B8
0x0000B4:
    push 1s
0x0000B8:
    if !pop goto 0x0000CC
0x0000BC:
    call (instance_destroy[]:int32 )
    goto 0x000148
0x0000CC:
    stog.flag[450s] = self.threshold
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 145s) (var 0s) (var 0s))
0x000148:
    exit
