0x000000:
    self.stir = 0s
    self.stiranim = 0s
    self.stime = 0s
    self.sval = 0s
    self.wrong = 0s
    self.wrongval = 0s
    self.hot = 0s
    self.jingle = 0s
    self.fire = (caster_load[]:int32 (var "music/bgflameA.ogg"))
    call (caster_loop[]:int32 (var 0.7d) (var 0.5d) self.fire)
    self.rot = (caster_load[]:int32 (var "music/rotate.ogg"))
0x0000CC:
    exit
