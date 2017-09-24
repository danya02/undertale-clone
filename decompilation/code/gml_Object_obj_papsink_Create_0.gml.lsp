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
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    self.conversation = 0s
    self.dogsong = (caster_load[]:int32 (var "music/dogappear.ogg"))
    push -5s
    if !(== 82s:flag 1s) goto 0x0000EC
0x0000E0:
    self.image_index = 1s
0x0000EC:
    exit
