0x000000:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000064
0x00001C:
    global.currentsong = (caster_load[]:int32 (var "music/gameover.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.5d) global.currentsong)
0x000064:
    exit
