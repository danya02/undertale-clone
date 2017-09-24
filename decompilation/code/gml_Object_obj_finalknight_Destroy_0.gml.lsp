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
    if !pop goto 0x00008C
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 70s)] = 3s
    stog.flag[155s] = 1s
0x00008C:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x0000DC
0x0000D0:
    call (instance_destroy[]:int32 )
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    exit
