0x000000:
    push -5s
    if !(== 6s:flag 0s) goto 0x0000A8
0x00001C:
    if !(> self.mercymod 10s) goto 0x000068
0x000030:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x0000A8
0x000070:
    push -5s
    stog.goldreward[(+ 3s:goldreward 50s)] = 3s
    stog.flag[152s] = 1s
0x0000A8:
    push -5s
    if !(== 6s:flag 1s) goto 0x00013C
0x0000C4:
    if !(> self.mercymod 10s) goto 0x000110
0x0000D8:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x00013C
0x000118:
    push -5s
    stog.goldreward[(+ 3s:goldreward 3s)] = 3s
0x00013C:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x00018C
0x000180:
    call (instance_destroy[]:int32 )
0x00018C:
    popenv 0x000180
0x000190:
    exit
