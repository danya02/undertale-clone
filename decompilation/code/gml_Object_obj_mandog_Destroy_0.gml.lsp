0x000000:
    if !(> self.mercymod 10s) goto 0x00004C
0x000014:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000078
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 30s)] = 3s
0x000078:
    if !(> self.mercymod 80s) goto 0x0000A0
0x00008C:
    push (< self.mercymod 400s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000BC
0x0000A8:
    stog.flag[53s] = 2s
0x0000BC:
    if !(== self.killed 1s) goto 0x0000E4
0x0000D0:
    stog.flag[53s] = 1s
0x0000E4:
    if !(== self.killed 0s) goto 0x00010C
0x0000F8:
    stog.flag[27s] = 1s
0x00010C:
    global.plot = 50s
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x000168
0x00015C:
    call (instance_destroy[]:int32 )
0x000168:
    popenv 0x00015C
0x00016C:
    pushenv (int32 self.mypart2) 0x000188
0x00017C:
    call (instance_destroy[]:int32 )
0x000188:
    popenv 0x00017C
0x00018C:
    exit
