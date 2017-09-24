0x000000:
    if !(> self.mercymod 99s) goto 0x000038
0x000014:
    push -5s
    stog.goldreward[(+ 3s:goldreward 5s)] = 3s
0x000038:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x00006C:
    exit
