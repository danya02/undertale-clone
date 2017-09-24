0x000000:
    self.counter = 0s
    self.size = 1s
    self.hspeed = 1s
    call (caster_stop[]:int32 (var 139s))
    call (caster_play[]:int32 (var 1s) (var 1s) (var 139s))
    if !(== (instance_exists[]:int32 (var 1582s)) 0s) goto 0x0000D0
0x000078:
    self.shk = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 6s
    stog.shakex* = (int32 self.shk)
    push 6s
    stog.shakey* = (int32 self.shk)
0x0000D0:
    exit
