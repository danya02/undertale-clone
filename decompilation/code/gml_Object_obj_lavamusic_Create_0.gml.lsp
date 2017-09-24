0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000198
0x00003C:
    push -5s
    if !(== 224s:flag 0s) goto 0x0000F8
0x000058:
    global.currentsong = (caster_load[]:int32 (var "music/anothermedium.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000C8
0x0000AC:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x0000F4
0x0000D0:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x0000F4:
    goto 0x000198
0x0000F8:
    push -5s
    if !(== 27s:flag 0s) goto 0x000158
0x000114:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x000198
0x000158:
    global.currentsong = (caster_load[]:int32 (var "music/anothermedium.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x000198:
    exit
