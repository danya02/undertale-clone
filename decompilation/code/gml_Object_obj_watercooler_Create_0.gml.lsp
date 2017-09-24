0x000000:
    push 21s
    self.height = (- -5s 440s:flag)
    stog.bubx[0s] = (+ 4s (random[]:int32 (var 10s)))
    stog.buby[0s] = (+ 5s (random[]:int32 (var 15s)))
    stog.bubx[1s] = (+ 4s (random[]:int32 (var 10s)))
    stog.buby[1s] = (+ 5s (random[]:int32 (var 15s)))
    stog.bubx[2s] = (+ 4s (random[]:int32 (var 10s)))
    stog.buby[2s] = (+ 5s (random[]:int32 (var 15s)))
    self.siner = 0s
    self.w_con = 1s
    self.w_timer = 0s
    self.pour_index = 0s
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
    self.havewater = 0s
    call (scr_depth[]:int32 )
    self.w_active = 0s
    self.madepud = 0s
    call (event_user[]:int32 (var 2s))
0x000220:
    exit
