0x000000:
    stog.flag[15s] = 0s
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0001AC
0x000050:
    push -5s
    if !(== 224s:flag 0s) goto 0x00010C
0x00006C:
    global.currentsong = (caster_load[]:int32 (var "music/hotel.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000DC
0x0000C0:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x000108
0x0000E4:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x000108:
    goto 0x0001AC
0x00010C:
    push -5s
    if !(== 27s:flag 0s) goto 0x00016C
0x000128:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x0001AC
0x00016C:
    global.currentsong = (caster_load[]:int32 (var "music/hotel.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x0001AC:
    exit
