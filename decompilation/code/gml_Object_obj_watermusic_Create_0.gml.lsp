0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0001A8
0x00003C:
    push -5s
    if !(== 223s:flag 0s) goto 0x000100
0x000058:
    global.currentsong = (caster_load[]:int32 (var "music/waterfall.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x0000D0
0x0000B4:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x0000FC
0x0000D8:
    call (caster_set_pitch[]:int32 (var 0.13d) global.currentsong)
0x0000FC:
    goto 0x0001A8
0x000100:
    push -5s
    if !(== 27s:flag 0s) goto 0x000160
0x00011C:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x0001A8
0x000160:
    global.currentsong = (caster_load[]:int32 (var "music/waterfall.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
0x0001A8:
    exit
