0x000000:
    self.dmg = 0s
    if !(> (scr_monstersum[]:int32 ) 1s) goto 0x000030
0x000020:
    self.speartype = 1s
    goto 0x00003C
0x000030:
    self.speartype = 0s
0x00003C:
    push -5s
    self.y = (+ 2s:idealborder 40s)
    push -5s
    self.x = (+ 1s:idealborder 20s)
    self.hspeed = -4s
    stog.alarm[0s] = (+ 20s (random[]:int32 (var 10s)))
0x0000B0:
    exit
