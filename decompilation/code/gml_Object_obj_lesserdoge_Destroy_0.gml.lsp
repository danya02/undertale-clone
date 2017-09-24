0x000000:
    if !(> self.mercymod 99s) goto 0x000038
0x000014:
    push -5s
    stog.goldreward[(+ 3s:goldreward 7s)] = 3s
0x000038:
    if !(>= self.mercymod 150s) goto 0x000060
0x00004C:
    stog.flag[55s] = 2s
0x000060:
    if !(> self.mercymod 500s) goto 0x000098
0x000074:
    push -5s
    stog.goldreward[(+ 3s:goldreward 13s)] = 3s
0x000098:
    if !(> self.mercymod 2600s) goto 0x0000D0
0x0000AC:
    push -5s
    stog.goldreward[(+ 3s:goldreward 40s)] = 3s
0x0000D0:
    if !(== self.killed 1s) goto 0x0000F8
0x0000E4:
    stog.flag[55s] = 1s
0x0000F8:
    if !(== self.killed 0s) goto 0x000120
0x00010C:
    stog.flag[27s] = 1s
0x000120:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x000154:
    exit
