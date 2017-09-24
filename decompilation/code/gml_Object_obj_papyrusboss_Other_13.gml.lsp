0x000000:
    stog.alarm[10s] = 30s
    stog.hurtanim[(int32 self.myself)] = 0s
    pushenv (int32 self.mypart1) 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    self.visible = 0s
    self.dh = (instance_create[]:int32 (var 229s) self.y (+ self.x 41s))
    self.db = (instance_create[]:int32 (var 230s) self.y self.x)
    call (caster_free[]:int32 global.batmusic)
    call (caster_free[]:int32 global.batmusic2)
0x0000DC:
    exit
