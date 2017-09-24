0x000000:
    stog.alarm[2s] = 16s
    call (caster_stop[]:int32 self.sfx)
    call (caster_play[]:int32 (- (+ 1s (random[]:int32 (var 0.2d))) (random[]:int32 (var 0.3d))) (var 0.7d) self.sfx)
0x000088:
    exit
