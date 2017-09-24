0x000000:
    if !(> self.shotbuffer 3s) goto 0x0000F4
0x000014:
    self.borb = (instance_create[]:int32 (var 574s) self.y self.x)
    push 0s
    stog.side* = (int32 self.borb)
    pushenv (int32 self.borb) 0x000078
0x000064:
    call (event_user[]:int32 (var 1s))
0x000078:
    popenv 0x000064
0x00007C:
    if !(bool (instance_exists[]:int32 (var 568s))) goto 0x0000E8
0x000094:
    pushenv 568s 0x0000E4
0x00009C:
    call (caster_stop[]:int32 self.seg)
    call (caster_play[]:int32 (var 0.8d) (var 0.9d) self.seg)
0x0000E4:
    popenv 0x00009C
0x0000E8:
    self.shotbuffer = -1s
0x0000F4:
    exit
