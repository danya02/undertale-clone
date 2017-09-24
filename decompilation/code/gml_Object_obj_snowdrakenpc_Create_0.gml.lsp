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
    if !(!= (scr_enemynpc1[]:int32 ) 1s) goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    push -5s
    if !(== 7s:flag 1s) goto 0x000138
0x0000D8:
    call (instance_create[]:int32 (var 1358s) (- self.y 8s) (+ self.x 40s))
    call (instance_create[]:int32 (var 1494s) self.y (+ self.x 100s))
0x000138:
    exit
