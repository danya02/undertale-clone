0x000000:
    if !(== global.debug 1s) goto 0x000090
0x000014:
    self.ub = (instance_create[]:int32 (var 576s) self.y self.x)
    push (choose[]:int32 (var 1s) (var 0s))
    stog.side* = (int32 self.ub)
    pushenv (int32 self.ub) 0x00008C
0x000078:
    call (event_user[]:int32 (var 1s))
0x00008C:
    popenv 0x000078
0x000090:
    exit
