0x000000:
    call (event_user[]:int32 (var 0s))
    push -5s
    if !(!= 67s:flag 1s) goto 0x0000F4
0x000030:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0000F4
0x00004C:
    if !(!= self.room 80s) goto 0x0000A4
0x000060:
    global.currentsong = (caster_load[]:int32 (var "music/muscle.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x0000F4
0x0000A4:
    global.currentsong = (caster_load[]:int32 (var "music/sansdate.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.9d) global.currentsong)
0x0000F4:
    exit
