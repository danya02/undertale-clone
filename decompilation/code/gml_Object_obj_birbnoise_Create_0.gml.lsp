0x000000:
    self.birb = (caster_load[]:int32 (var "music/birdnoise.ogg"))
    self.birbvol = 0s
    self.birbcon = 0s
    call (caster_loop[]:int32 (var 1s) self.birbvol self.birb)
0x000058:
    exit
