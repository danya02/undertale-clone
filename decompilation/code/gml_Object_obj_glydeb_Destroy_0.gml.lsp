0x000000:
    if !(> self.mercymod 10s) goto 0x000038
0x000014:
    push -5s
    stog.goldreward[(+ 3s:goldreward 120s)] = 3s
0x000038:
    call (scr_monsterdefeat[]:int32 )
    pushenv (int32 self.mypart1) 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    popenv 0x000054
0x000064:
    exit
