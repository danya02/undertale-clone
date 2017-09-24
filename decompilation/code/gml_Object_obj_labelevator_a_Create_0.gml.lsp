0x000000:
    self.hshake = 0s
    self.vshake = 0s
    self.con = 2s
    self.redsiner = 0s
    self.dt = 0s
    self.w = 0s
    self.shakevalue = 3s
    self.rs_speed = 0s
    self.blacktime = 0s
    self.sfxtimer = 0s
    self.sfx = (caster_load[]:int32 (var "music/f_destroyed3.ogg"))
    self.expl = (caster_load[]:int32 (var "music/explosion.ogg"))
    call (caster_loop[]:int32 (var 1.4d) (var 0.8d) self.sfx)
    self.pit = 1.4d
    self.vol = 0.8d
    self.hyperboys = 0s
    if !(== self.room 261s) goto 0x000138
0x00012C:
    self.hyperboys = 1s
0x000138:
    exit
