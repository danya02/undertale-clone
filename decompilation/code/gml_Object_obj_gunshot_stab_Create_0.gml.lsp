0x000000:
    self.image_speed = 0.5d
    stog.alarm[1s] = 5s
    self.form = 0s
    self.size = 2s
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.shotno = 0s
    self.gunsfx = (caster_load[]:int32 (var "music/sfx_gunshot.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.gunsfx)
    stog.alarm[6s] = 60s
    self.crit = 0s
0x0000CC:
    exit
