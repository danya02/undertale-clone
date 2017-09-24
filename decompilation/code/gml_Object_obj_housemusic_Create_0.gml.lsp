0x000000:
    call (event_user[]:int32 (var 0s))
    push -5s
    if !(!= 45s:flag 4s) goto 0x0000D0
0x000030:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0000CC
0x00004C:
    global.currentsong = (caster_load[]:int32 (var "music/house1.ogg"))
    global.currentsong2 = (caster_load[]:int32 (var "music/house2.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    call (caster_loop[]:int32 (var 1s) (var 0s) global.currentsong2)
0x0000CC:
    goto 0x00017C
0x0000D0:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x00017C
0x0000EC:
    global.currentsong = (caster_load[]:int32 (var "music/toriel.ogg"))
    global.currentsong2 = (caster_load[]:int32 (var "music/toriel.ogg"))
    call (caster_loop[]:int32 (var 0.4d) (var 1s) global.currentsong)
    call (caster_loop[]:int32 (var 0.4d) (var 0s) global.currentsong2)
0x00017C:
    exit
