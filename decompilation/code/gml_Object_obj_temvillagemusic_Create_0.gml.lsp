0x000000:
    call (event_user[]:int32 (var 0s))
    push -5s
    if !(== 7s:flag 1s) goto 0x000040
0x000030:
    call (instance_destroy[]:int32 )
    exit
0x000040:
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000084
0x000068:
    push -5s
    push (== 94s:flag 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0001E8
0x00008C:
    push -5s
    if !(== 223s:flag 0s) goto 0x000148
0x0000A8:
    global.currentsong = (caster_load[]:int32 (var "music/temvillage.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x000118
0x0000FC:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00011C
0x000118:
    push 0s
0x00011C:
    if !pop goto 0x000144
0x000120:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x000144:
    goto 0x0001E8
0x000148:
    push -5s
    if !(== 27s:flag 0s) goto 0x0001A8
0x000164:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x0001E8
0x0001A8:
    global.currentsong = (caster_load[]:int32 (var "music/temvillage.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x0001E8:
    exit
