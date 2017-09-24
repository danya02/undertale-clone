0x000000:
    stog.flag[15s] = 1s
    call (event_user[]:int32 (var 0s))
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0001C4
0x000044:
    stog.flag[15s] = 1s
    push -5s
    if !(== 224s:flag 0s) goto 0x00011C
0x000074:
    global.currentsong = (caster_load[]:int32 (var "music/core.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.85d) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000EC
0x0000D0:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000118
0x0000F4:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x000118:
    goto 0x0001C4
0x00011C:
    push -5s
    if !(== 27s:flag 0s) goto 0x00017C
0x000138:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x0001C4
0x00017C:
    global.currentsong = (caster_load[]:int32 (var "music/core.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.85d) global.currentsong)
0x0001C4:
    exit
