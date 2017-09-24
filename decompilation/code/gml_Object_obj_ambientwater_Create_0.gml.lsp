0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000250
0x00003C:
    self.qr = 0s
    if !(> global.plot 105s) goto 0x000070
0x00005C:
    push (== self.room 84s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x000084
0x000078:
    self.qr = 1s
0x000084:
    if !(== self.qr 0s) goto 0x0000E4
0x000098:
    global.currentsong = (caster_load[]:int32 (var "music/ambientwater.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    goto 0x000250
0x0000E4:
    push -5s
    if !(== 223s:flag 0s) goto 0x0001A8
0x000100:
    global.currentsong = (caster_load[]:int32 (var "music/waterfall.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000178
0x00015C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x0001A4
0x000180:
    call (caster_set_pitch[]:int32 (var 0.13d) global.currentsong)
0x0001A4:
    goto 0x000250
0x0001A8:
    push -5s
    if !(== 27s:flag 0s) goto 0x000208
0x0001C4:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x000250
0x000208:
    global.currentsong = (caster_load[]:int32 (var "music/waterfall.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
0x000250:
    exit
