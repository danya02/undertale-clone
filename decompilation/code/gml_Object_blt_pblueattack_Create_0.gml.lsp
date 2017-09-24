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
    self.y = (+ 2s:idealborder (floor[]:int32 (random[]:int32 (var 120s))))
    push -5s
    self.x = (+ 1s:idealborder 20s)
    self.hspeed = (+ -3s (random[]:int32 (var -3s)))
0x0000B0:
    exit
