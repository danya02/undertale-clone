0x000000:
    self.con = 0s
    self.asg = (instance_create[]:int32 (var 1322s) (var 145s) (var 130s))
    global.interact = 1s
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/barrier.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) global.currentsong)
    push -5s
    if !(> 10s:tempvalue 0s) goto 0x0000CC
0x0000C0:
    self.con = 10s
0x0000CC:
    global.facing = 2s
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
0x0000F0:
    exit
