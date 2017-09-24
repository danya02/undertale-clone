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
    push -5s
    if !(== 7s:flag 1s) goto 0x0000CC
0x0000B8:
    stog.flag[107s] = 1s
0x0000CC:
    push -5s
    if !(== 107s:flag 1s) goto 0x0000F4
0x0000E8:
    self.image_index = 1s
0x0000F4:
    self.dogsong = (caster_load[]:int32 (var "music/dogsong.ogg"))
    self.con = 0s
    self.anti_buffer = 0s
0x000128:
    exit
