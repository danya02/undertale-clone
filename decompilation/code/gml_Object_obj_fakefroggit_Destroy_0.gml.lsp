0x000000:
    if !(== self.mercymod 30s) goto 0x00004C
0x000014:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x0000CC
0x000054:
    if !(> self.mercymod 10s) goto 0x0000A0
0x000068:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000CC
0x0000A8:
    push -5s
    stog.goldreward[(+ 3s:goldreward 2s)] = 3s
0x0000CC:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x00011C
0x000110:
    call (instance_destroy[]:int32 )
0x00011C:
    popenv 0x000110
0x000120:
    pushenv (int32 self.mypart2) 0x00013C
0x000130:
    call (instance_destroy[]:int32 )
0x00013C:
    popenv 0x000130
0x000140:
    exit
