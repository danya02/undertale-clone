0x000000:
    self.thisx = self.x
    self.thisy = self.y
    self.sword_b = (instance_create[]:int32 (var 590s) (+ 569.y 35s) (+ 569.x 36s))
    self.sword_a = (instance_create[]:int32 (var 590s) (+ 569.y 35s) (- 569.x 36s))
    self.sf = 0s
    self.siner = 0s
    self.lastwhich = 0s
    self.lastwhichwhich = 0s
    self.times = 0s
    self.king = 569s
    self.freakcon = 0s
    self.sfx_pb = (caster_load[]:int32 (var "music/sfx/sfx_a_pullback.ogg"))
    self.sfx_cut = (caster_load[]:int32 (var "music/sfx_cinematiccut.ogg"))
    self.sfx_bc = (caster_load[]:int32 (var "music/sfx/sfx_segapower2.ogg"))
    self.sfx_spk = (caster_load[]:int32 (var "music/sfx/sfx_sparkles.ogg"))
    self.sfx_ap = (caster_load[]:int32 (var "music/sfx/sfx_a_swordappear.ogg"))
    self.sfx_grab = (caster_load[]:int32 (var "music/sfx/sfx_a_grab.ogg"))
    self.sfx_jafe = (caster_load[]:int32 (var "music/sfx_voice_jafe.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.sfx_ap)
    self.last = 0s
    self.never = 0s
    self.h_mode = 0s
0x0001F0:
    exit
