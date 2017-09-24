0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x00023C
0x00003C:
    if !(<= global.plot 35s) goto 0x0000BC
0x000050:
    global.currentsong = (caster_load[]:int32 (var "music/tone2.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.2d) global.currentsong)
    call (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
0x0000BC:
    if !(> global.plot 35s) goto 0x00023C
0x0000D0:
    push -5s
    if !(== 222s:flag 0s) goto 0x000194
0x0000EC:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000164
0x000148:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x000190
0x00016C:
    call (caster_set_pitch[]:int32 (var 0.4d) global.currentsong)
0x000190:
    goto 0x00023C
0x000194:
    push -5s
    if !(== 27s:flag 0s) goto 0x0001F4
0x0001B0:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x00023C
0x0001F4:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
0x00023C:
    exit
