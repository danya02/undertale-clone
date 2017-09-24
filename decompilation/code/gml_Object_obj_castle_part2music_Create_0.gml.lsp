0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000058
0x00003C:
    push -5s
    push (< 493s:flag 12s)
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x000170
0x000060:
    if !(< (scr_murderlv[]:int32 ) 16s) goto 0x0000C0
0x000074:
    global.currentsong = (caster_load[]:int32 (var "music/endarea_partb.ogg"))
    call (caster_play[]:int32 (var 0.85d) (var 1s) global.currentsong)
    goto 0x000170
0x0000C0:
    push -5s
    if !(< 450s:flag 17s) goto 0x000128
0x0000DC:
    global.currentsong = (caster_load[]:int32 (var "music/smallshock.ogg"))
    call (caster_loop[]:int32 (var 0.6d) (var 1s) global.currentsong)
    goto 0x000170
0x000128:
    global.currentsong = (caster_load[]:int32 (var "music/prebattle1.ogg"))
    call (caster_loop[]:int32 (var 0.2d) (var 1s) global.currentsong)
0x000170:
    exit
