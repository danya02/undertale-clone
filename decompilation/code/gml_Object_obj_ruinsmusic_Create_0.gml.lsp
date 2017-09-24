0x000000:
    call (event_user[]:int32 (var 0s))
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0000D0
0x000030:
    push -5s
    if !(== 221s:flag 0s) goto 0x000090
0x00004C:
    global.currentsong = (caster_load[]:int32 (var "music/ruins.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x0000D0
0x000090:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x0000D0:
    exit
