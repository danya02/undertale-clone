0x000000:
    if !(> self.mercymod 10s) goto 0x000060
0x000014:
    if !(== self.killed 0s) goto 0x000060
0x000028:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000064
0x000060:
    push 0s
0x000064:
    if !pop goto 0x00008C
0x000068:
    push -5s
    stog.goldreward[(+ 3s:goldreward 13s)] = 3s
0x00008C:
    if !(== self.cube 0s) goto 0x0000AC
0x0000A0:
    call (scr_monsterdefeat[]:int32 )
0x0000AC:
    exit
