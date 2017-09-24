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
    self.open = 0s
    call (scr_depth[]:int32 )
    self.mysolid = (instance_create[]:int32 (var 2s) (var 52s) (var 214s))
    push -5s
    if !(> 92s:flag 0s) goto 0x000104
0x0000F8:
    self.open = 1s
0x000104:
    push -5s
    if !(> 92s:flag 3s) goto 0x00014C
0x000120:
    self.open = 2s
    pushenv (int32 self.mysolid) 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    popenv 0x00013C
0x00014C:
    self.con = 0s
0x000158:
    exit
