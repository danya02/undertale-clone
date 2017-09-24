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
    self.con = 0s
    if !(< global.plot 110s) goto 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x0000F8
0x0000DC:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00010C
0x000100:
    self.y = 900s
0x00010C:
    if !(== global.entrance 24s) goto 0x000178
0x000120:
    global.interact = 1s
    self.con = 20s
    self.visible = 0s
    [obj_mainchara].visible = 0s
    [obj_mainchara].x = self.x
    [obj_mainchara].y = (- self.y 15s)
0x000178:
    exit
