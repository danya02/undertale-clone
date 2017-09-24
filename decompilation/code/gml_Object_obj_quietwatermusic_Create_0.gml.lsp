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
    if !pop goto 0x000208
0x00008C:
    push -5s
    if !(== 223s:flag 0s) goto 0x000158
0x0000A8:
    global.currentsong = (caster_load[]:int32 (var "music/waterquiet.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.8d) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000128
0x00010C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00012C
0x000128:
    push 0s
0x00012C:
    if !pop goto 0x000154
0x000130:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x000154:
    goto 0x000208
0x000158:
    push -5s
    if !(== 27s:flag 0s) goto 0x0001B8
0x000174:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x000208
0x0001B8:
    global.currentsong = (caster_load[]:int32 (var "music/waterquiet.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.8d) global.currentsong)
0x000208:
    exit
