0x000000:
    global.interact = 3s
    if !(== self.touched 0s) goto 0x0000D4
0x000020:
    call (caster_free[]:int32 (var -3s))
    self.cym = (caster_load[]:int32 (var "music/cymbal.ogg"))
    call (caster_play[]:int32 (var 0.95d) (var 0.9d) self.cym)
    call (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    stog.alarm[2s] = 180s
    self.touched = 1s
    global.plot = 30s
0x0000D4:
    exit
