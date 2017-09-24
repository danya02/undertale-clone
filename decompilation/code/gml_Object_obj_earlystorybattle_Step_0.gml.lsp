0x000000:
    if !(== self.room 221s) goto 0x000060
0x000014:
    if !(== self.con 0s) goto 0x000060
0x000028:
    push -5s
    if !(<= 450s:flag 2s) goto 0x000060
0x000044:
    push -5s
    push (== 455s:flag 0s)
    goto 0x000064
0x000060:
    push 0s
0x000064:
    if !pop goto 0x000114
0x000068:
    if !(< 1570.x 90s) goto 0x000114
0x00007C:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    stog.flag[455s] = 1s
    self.con = 1s
    stog.alarm[0s] = 50s
0x000114:
    if !(== self.room 221s) goto 0x000190
0x000128:
    if !(< self.con 2s) goto 0x000190
0x00013C:
    push -5s
    if !(<= 450s:flag 2s) goto 0x000190
0x000158:
    push -5s
    if !(== 455s:flag 1s) goto 0x000190
0x000174:
    push -5s
    push (< 456s:flag 2s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x000244
0x000198:
    if !(> 1570.x 180s) goto 0x000244
0x0001AC:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    stog.flag[455s] = 2s
    self.con = 3s
    stog.alarm[0s] = 50s
0x000244:
    if !(== self.room 222s) goto 0x0002A4
0x000258:
    if !(== self.con 0s) goto 0x0002A4
0x00026C:
    push -5s
    if !(<= 450s:flag 2s) goto 0x0002A4
0x000288:
    push -5s
    push (== 456s:flag 0s)
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x000358
0x0002AC:
    if !(> 1570.x 460s) goto 0x000358
0x0002C0:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    stog.flag[456s] = 1s
    self.con = 1s
    stog.alarm[0s] = 50s
0x000358:
    if !(== self.room 222s) goto 0x0003D4
0x00036C:
    if !(< self.con 2s) goto 0x0003D4
0x000380:
    push -5s
    if !(<= 450s:flag 2s) goto 0x0003D4
0x00039C:
    push -5s
    if !(== 456s:flag 1s) goto 0x0003D4
0x0003B8:
    push -5s
    push (< 455s:flag 2s)
    goto 0x0003D8
0x0003D4:
    push 0s
0x0003D8:
    if !pop goto 0x000488
0x0003DC:
    if !(< 1570.x 100s) goto 0x000488
0x0003F0:
    global.border = 3s
    stog.flag[15s] = 1s
    stog.flag[16s] = 1s
    call (SCR_BORDERSETUP[]:int32 )
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    stog.flag[456s] = 2s
    self.con = 3s
    stog.alarm[0s] = 50s
0x000488:
    exit
