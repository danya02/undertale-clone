0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0001D8
0x00003C:
    if !(== self.room 211s) goto 0x0000A4
0x000050:
    global.currentsong = (caster_load[]:int32 (var "music/drone.ogg"))
    call (caster_loop[]:int32 (var 0.5d) (var 0.5d) global.currentsong)
    exit
0x0000A4:
    if !(> global.plot 125s) goto 0x0000D4
0x0000B8:
    push -5s
    push (< 493s:flag 11s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x000188
0x0000DC:
    if !(< (scr_murderlv[]:int32 ) 12s) goto 0x000134
0x0000F0:
    global.currentsong = (caster_load[]:int32 (var "music/lab.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x000184
0x000134:
    global.currentsong = (caster_load[]:int32 (var "music/drone.ogg"))
    call (caster_loop[]:int32 (var 0.5d) (var 0.5d) global.currentsong)
0x000184:
    goto 0x0001D8
0x000188:
    global.currentsong = (caster_load[]:int32 (var "music/drone.ogg"))
    call (caster_loop[]:int32 (var 0.5d) (var 0.5d) global.currentsong)
0x0001D8:
    exit
