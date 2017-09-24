0x000000:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000038
0x00001C:
    push -5s
    push (== 7s:flag 1s)
    goto 0x00003C
0x000038:
    push 0s
0x00003C:
    if !pop goto 0x000090
0x000040:
    global.currentsong = (caster_load[]:int32 (var "music/reunited.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    call (instance_destroy[]:int32 )
    exit
0x000090:
    exit
