0x000000:
    if !(> self.mercymod 80s) goto 0x000028
0x000014:
    push (< self.mercymod 400s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000044
0x000030:
    stog.flag[52s] = 2s
0x000044:
    if !(== self.killed 1s) goto 0x00006C
0x000058:
    stog.flag[52s] = 1s
0x00006C:
    if !(== self.killed 0s) goto 0x000094
0x000080:
    stog.flag[27s] = 1s
0x000094:
    global.plot = 41s
    self.wd = 134s
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    popenv 0x0000F0
0x000100:
    pushenv (int32 self.mypart2) 0x00011C
0x000110:
    call (instance_destroy[]:int32 )
0x00011C:
    popenv 0x000110
0x000120:
    pushenv (int32 self.mypart3) 0x00013C
0x000130:
    call (instance_destroy[]:int32 )
0x00013C:
    popenv 0x000130
0x000140:
    pushenv (int32 self.mypart4) 0x00015C
0x000150:
    call (instance_destroy[]:int32 )
0x00015C:
    popenv 0x000150
0x000160:
    stog.goldreward[3s] = 30s
0x000174:
    exit
