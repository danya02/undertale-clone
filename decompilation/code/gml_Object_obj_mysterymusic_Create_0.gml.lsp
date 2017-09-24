0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x00008C
0x00003C:
    global.currentsong = (caster_load[]:int32 (var "music/mystery.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 0.8d) global.currentsong)
0x00008C:
    exit
