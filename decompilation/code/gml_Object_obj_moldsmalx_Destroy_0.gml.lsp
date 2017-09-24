0x000000:
    if !(> self.mercymod 100s) goto 0x000038
0x000014:
    push -5s
    stog.goldreward[(+ 3s:goldreward 20s)] = 3s
0x000038:
    if !(bool (instance_exists[]:int32 self.mypart1)) goto 0x000070
0x000050:
    pushenv (int32 self.mypart1) 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    popenv 0x000060
0x000070:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x0000A4:
    exit
