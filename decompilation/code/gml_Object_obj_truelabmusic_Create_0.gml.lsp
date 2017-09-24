0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x00010C
0x00003C:
    if (== self.room 245s) goto 0x000064
0x000050:
    push (== self.room 262s)
    goto 0x000068
0x000064:
    push 1s
0x000068:
    if !pop goto 0x0000C4
0x00006C:
    global.currentsong = (caster_load[]:int32 (var "music/drone.ogg"))
    call (caster_loop[]:int32 (var 0.5d) (var 0.3d) global.currentsong)
    exit
    goto 0x00010C
0x0000C4:
    global.currentsong = (caster_load[]:int32 (var "music/hereweare.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) global.currentsong)
0x00010C:
    exit
