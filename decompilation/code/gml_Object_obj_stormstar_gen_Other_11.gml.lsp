0x000000:
    call (caster_stop[]:int32 self.expl)
    call (caster_play[]:int32 (var 2s) (var 0.4d) self.expl)
    pushenv 1582s 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    popenv 0x000048
0x000058:
    self.shk = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 5s
    stog.shakex* = (int32 self.shk)
    push 5s
    stog.shakey* = (int32 self.shk)
0x0000B0:
    exit
