0x000000:
    global.plot = 37s
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000070
0x00004C:
    call (caster_set_pitch[]:int32 (var 0.6d) global.currentsong)
0x000070:
    global.interact = 0s
0x00007C:
    exit
