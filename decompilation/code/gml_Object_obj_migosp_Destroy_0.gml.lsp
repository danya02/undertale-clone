0x000000:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(> self.mercymod 10s) goto 0x000080
0x000048:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0000C0
0x000088:
    push -5s
    stog.goldreward[(+ 3s:goldreward 2s)] = 3s
    stog.flag[135s] = 1s
0x0000C0:
    exit
