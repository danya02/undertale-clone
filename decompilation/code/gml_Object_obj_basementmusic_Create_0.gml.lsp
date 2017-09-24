0x000000:
    call (event_user[]:int32 (var 0s))
    push -5s
    if !(== 7s:flag 0s) goto 0x000094
0x000030:
    call (caster_free[]:int32 global.currentsong)
    global.currentsong = (caster_load[]:int32 (var "music/intronoise.ogg"))
    call (caster_loop[]:int32 (var 0.3d) (var 0.4d) global.currentsong)
0x000094:
    exit
