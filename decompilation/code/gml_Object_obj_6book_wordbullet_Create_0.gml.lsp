0x000000:
    self.col = 0s
    self.counter = 0s
    self.type = 0s
    self.shake = 0s
    self.word = "DEATH"
    self.word2 = "LIFE"
    self.chooser = (floor[]:int32 (random[]:int32 (var 15s)))
    if !(== self.chooser 1s) goto 0x0000A4
0x000084:
    self.word = "DESPAIR"
    self.word2 = "HOPE"
0x0000A4:
    if !(== self.chooser 2s) goto 0x0000D8
0x0000B8:
    self.word = "NIGHTMARE"
    self.word2 = "DREAMS"
0x0000D8:
    if !(== self.chooser 3s) goto 0x00010C
0x0000EC:
    self.word = "SADNESS"
    self.word2 = "HAPPINESS"
0x00010C:
    if !(== self.chooser 4s) goto 0x000140
0x000120:
    self.word = "RUIN"
    self.word2 = "SUCCESS"
0x000140:
    if !(== self.chooser 5s) goto 0x000174
0x000154:
    self.word = "HATRED"
    self.word2 = "LOVE"
0x000174:
    if !(== self.chooser 6s) goto 0x0001A8
0x000188:
    self.word = "TRAPPED"
    self.word2 = "FREEDOM"
0x0001A8:
    if !(== self.chooser 7s) goto 0x0001DC
0x0001BC:
    self.word = "SLAUGHTER"
    self.word2 = "MERCY"
0x0001DC:
    if !(== self.chooser 8s) goto 0x000210
0x0001F0:
    self.word = "DOOM"
    self.word2 = "LUCK"
0x000210:
    if !(== self.chooser 9s) goto 0x000244
0x000224:
    self.word = "TERROR"
    self.word2 = "CALM"
0x000244:
    if !(== self.chooser 10s) goto 0x000278
0x000258:
    self.word = "HORROR"
    self.word2 = "RELIEF"
0x000278:
    if !(== self.chooser 11s) goto 0x0002AC
0x00028C:
    self.word = "CRUELTY"
    self.word2 = "KINDNESS"
0x0002AC:
    if !(== self.chooser 12s) goto 0x0002E0
0x0002C0:
    self.word = "MURDERER"
    self.word2 = "DREAMER"
0x0002E0:
    if !(== self.chooser 13s) goto 0x000314
0x0002F4:
    self.word = "DESTROY"
    self.word2 = "CREATE"
0x000314:
    if !(== self.chooser 14s) goto 0x000348
0x000328:
    self.word = "CORRUPT"
    self.word2 = "PROTECT"
0x000348:
    if !(< self.x 320s) goto 0x000374
0x00035C:
    self.hspeed = 3.5d
    goto 0x000388
0x000374:
    self.hspeed = -3.5d
0x000388:
    if !(== 1624.con 3s) goto 0x0003B0
0x00039C:
    call (event_user[]:int32 (var 4s))
0x0003B0:
    exit
