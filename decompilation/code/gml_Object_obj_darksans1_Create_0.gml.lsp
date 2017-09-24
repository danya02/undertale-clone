0x000000:
    self.dsprite = 1353s
    self.usprite = 1362s
    self.lsprite = 1367s
    self.rsprite = 1363s
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    call (scr_depth[]:int32 )
    self.lafftrax = 0s
    self.conversation = 0s
    self.hspeed = 0.75d
    global.interact = 1s
    self.image_speed = 0.1d
    self.hh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.5d
    stog.fadespeed* = (int32 self.hh)
    self.uuu = (instance_create[]:int32 (var 89s) (var 0s) (var 0s))
    self.y = (- 1570.y 1s)
    self.shakehand = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000178
0x00016C:
    self.murder = 1s
0x000178:
    exit
