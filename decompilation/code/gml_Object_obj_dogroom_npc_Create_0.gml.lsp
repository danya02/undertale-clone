0x000000:
    self.dsprite = self.sprite_index
    self.usprite = self.sprite_index
    self.lsprite = self.sprite_index
    self.rsprite = self.sprite_index
    self.dtsprite = self.sprite_index
    self.utsprite = self.sprite_index
    self.ltsprite = self.sprite_index
    self.rtsprite = self.sprite_index
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    push -5s
    if !(== 55s:flag 1s) goto 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    exit
