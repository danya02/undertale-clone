0x000000:
    if !(== self.killed 0s) goto 0x000028
0x000014:
    stog.flag[27s] = 1s
0x000028:
    if !(> self.mercymod 10s) goto 0x000074
0x00003C:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000078
0x000074:
    push 0s
0x000078:
    if !pop goto 0x0000A0
0x00007C:
    push -5s
    stog.goldreward[(+ 3s:goldreward 50s)] = 3s
0x0000A0:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    popenv 0x0000E4
0x0000F4:
    exit
