0x000000:
    if !(== self.killed 0s) goto 0x00004C
0x000014:
    push -5s
    push (int32 self.myself):monsterhp
    push (== -5s (int32 self.myself):monstermaxhp)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000078
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 4s)] = 3s
0x000078:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
0x0000AC:
    exit
