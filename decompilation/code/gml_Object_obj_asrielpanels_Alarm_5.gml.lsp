0x000000:
    global.batmusic = (caster_load[]:int32 (var "music/xpart_a.ogg"))
    global.batmusic2 = (caster_load[]:int32 (var "music/xpart_b.ogg"))
    call (caster_play[]:int32 (var 0.85d) (var 1s) global.batmusic)
    self.memtimer = 0s
    self.image_alpha = 0s
    self.on = 1s
    self.image_speed = 0s
    self.rev_alpha = 0s
    self.xtimer = 0s
    global.inbattle = 1s
    self.active = 1s
0x0000C4:
    exit
