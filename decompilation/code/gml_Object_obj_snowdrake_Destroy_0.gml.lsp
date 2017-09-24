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
    stog.goldreward[(+ 3s:goldreward 12s)] = 3s
0x000078:
    if !(== self.killed 1s) goto 0x0000A0
0x00008C:
    stog.flag[57s] = 2s
0x0000A0:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    popenv 0x0000E4
0x0000F4:
    pushenv (int32 self.mypart2) 0x000110
0x000104:
    call (instance_destroy[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    exit
