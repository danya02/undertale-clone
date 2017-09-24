0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(== global.plot 121s) goto 0x000098
0x000034:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000098
0x000050:
    global.currentsong = (caster_load[]:int32 (var "music/undynetruetheme.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) global.currentsong)
0x000098:
    exit
