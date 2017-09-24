0x000000:
    self.siner = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.timer = 0s
    self.bookspin = (caster_load[]:int32 (var "music/sfx_bookspin.ogg"))
    call (caster_play[]:int32 (var 0.9d) (var 1s) self.bookspin)
    self.crit = 0s
0x000084:
    exit
