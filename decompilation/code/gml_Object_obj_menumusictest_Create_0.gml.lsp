0x000000:
    self.dingusvol = 0.5d
    self.dongusvol = 0s
    self.dingus = (caster_load[]:int32 (var "music/menu1.ogg"))
    self.dangus = (caster_load[]:int32 (var "music/menu2.ogg"))
    self.dongus = (caster_load[]:int32 (var "music/menu3.ogg"))
    self.dungus = (caster_load[]:int32 (var "music/menu4.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.dingus)
    call (caster_loop[]:int32 (var 1s) (var 0s) self.dangus)
    call (caster_loop[]:int32 (var 1s) (var 0s) self.dongus)
    call (caster_loop[]:int32 (var 1s) (var 0s) self.dungus)
0x000120:
    exit
