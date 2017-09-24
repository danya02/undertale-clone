0x000000:
    self.siner = 0s
    stog.flag[15s] = 0s
    call (event_user[]:int32 (var 0s))
    push -5s
    if !(== 7s:flag 1s) goto 0x000054
0x000050:
    exit
0x000054:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x0000A0
0x000070:
    global.currentsong = 336s
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x0000A0:
    exit
