0x000000:
    self.dsprite = 1353s
    self.usprite = 1362s
    self.lsprite = 1367s
    self.rsprite = 1363s
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 90s
    self.talkedto = 0s
    self.image_speed = 0s
    self.con = 0s
    push -5s
    if !(!= 89s:flag 1s) goto 0x0000D4
0x0000C4:
    call (instance_destroy[]:int32 )
    goto 0x000140
0x0000D4:
    self.con = 1s
    self.visible = 1s
    self.rimshot = (caster_load[]:int32 (var "music/rimshot.ogg"))
    self.whoopee = (caster_load[]:int32 (var "music/whoopee.ogg"))
    self.mystery = (caster_load[]:int32 (var "music/mysteriousroom2.ogg"))
0x000140:
    call (scr_depth[]:int32 )
    self.burg = 0s
    self.curvol = 1s
    self.counter = (scr_marker[]:int32 (var 1199s) (var 65s) (var 92s))
    push 199990
    stog.depth* = (int32 self.counter)
0x0001A8:
    exit
