0x000000:
    stog.alarm[0s] = 1s
    stog.alarm[1s] = 170s
    self.active = 1s
    self.oo = 0s
    push -5s
    self.a_x = 0s:idealborder
    push -5s
    self.a_y = 3s:idealborder
    push -5s
    self.a_y2 = 2s:idealborder
    push -5s
    self.a_x2 = 1s:idealborder
    self.sfx = (caster_load[]:int32 (var "music/sfx/sfx_star.ogg"))
    self.expl = (caster_load[]:int32 (var "music/explosion.ogg"))
    stog.alarm[2s] = 12s
    self.off = 0s
    self.h_mode = 0s
0x000104:
    exit
