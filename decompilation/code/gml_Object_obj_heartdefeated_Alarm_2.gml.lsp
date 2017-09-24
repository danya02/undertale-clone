0x000000:
    push -5s
    if !(== 272s:flag 0s) goto 0x000040
0x00001C:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.gameoversong)
0x000040:
    push -5s
    if !(== 272s:flag 1s) goto 0x000090
0x00005C:
    call (caster_loop[]:int32 (var 1.25d) (var 0.9d) self.gameoversong)
0x000090:
    call (instance_create[]:int32 (var 180s) (var 0s) (var 0s))
    stog.alarm[3s] = 80s
0x0000C8:
    exit
