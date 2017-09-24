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
    if !pop goto 0x000078
0x000054:
    push -5s
    stog.goldreward[(+ 3s:goldreward 40s)] = 3s
0x000078:
    if !(== self.mercymod 250s) goto 0x0000A0
0x00008C:
    stog.flag[54s] = 2s
0x0000A0:
    if !(== self.killed 1s) goto 0x0000C8
0x0000B4:
    stog.flag[54s] = 1s
0x0000C8:
    if !(== self.killed 0s) goto 0x0000F0
0x0000DC:
    stog.flag[27s] = 1s
0x0000F0:
    global.plot = 60s
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    pushenv (int32 self.mypart1) 0x00014C
0x000140:
    call (instance_destroy[]:int32 )
0x00014C:
    popenv 0x000140
0x000150:
    exit
