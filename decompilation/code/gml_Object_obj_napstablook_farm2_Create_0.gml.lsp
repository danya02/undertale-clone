0x000000:
    self.dsprite = 1129s
    self.usprite = 1131s
    self.lsprite = 1126s
    self.rsprite = 1127s
    self.dtsprite = 1129s
    self.utsprite = 1131s
    self.ltsprite = 1126s
    self.rtsprite = 1127s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.fun = 0s
    self.con = 0s
    self.bringback = 0s
    self.buffer = 0s
    if !(< (scr_murderlv[]:int32 ) 10s) goto 0x000284
0x0000E0:
    stog.snail[0s] = (instance_create[]:int32 (var 1363s) (var 70s) (var 690s))
    push 1558s
    push -1s
    stog.sprite_index* = (int32 0s:snail)
    stog.snail[1s] = (instance_create[]:int32 (var 1363s) (var 100s) (var 690s))
    push 1562s
    push -1s
    stog.sprite_index* = (int32 1s:snail)
    stog.snail[2s] = (instance_create[]:int32 (var 1363s) (var 130s) (var 690s))
    push 1564s
    push -1s
    stog.sprite_index* = (int32 2s:snail)
    self.i = 0s
    if !(< self.i 3s) goto 0x000284
0x0001F0:
    push 4000s
    push -1s
    stog.depth* = (int32 (int32 self.i):snail)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):snail)
    push 1s
    push -1s
    stog.visible* = (int32 (int32 self.i):snail)
    self.i = (+ self.i 1s)
    goto 0x0001DC
0x000284:
    self.blcontimer = 0s
    self.encouragement = 0s
    self.blconyes = 0s
    self.snailtimer = 0s
    self.snailsad = 0s
    self.won = 0s
    self.fun = 0s
    self.con = 0s
    self.bringback = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x000318
0x00030C:
    call (instance_destroy[]:int32 )
0x000318:
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x000338
0x00032C:
    call (instance_destroy[]:int32 )
0x000338:
    exit
