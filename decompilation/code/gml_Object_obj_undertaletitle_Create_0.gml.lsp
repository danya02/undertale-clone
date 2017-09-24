0x000000:
    self.ii = (caster_load[]:int32 (var "music/intronoise.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.ii)
    stog.alarm[4s] = 150s
    self.ok = 0s
    self.jok = 0s
    self.rot = 0s
    self.con = 0s
0x000084:
    exit
