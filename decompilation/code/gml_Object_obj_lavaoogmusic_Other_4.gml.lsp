0x000000:
    call (event_user[]:int32 (var 0s))
    self.ok = 1s
    if !(== (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000048
0x00003C:
    self.ok = 0s
0x000048:
    if !(bool (instance_exists[]:int32 (var 1118s))) goto 0x00006C
0x000060:
    self.ok = 0s
0x00006C:
    if !(bool (instance_exists[]:int32 (var 1296s))) goto 0x000090
0x000084:
    self.ok = 0s
0x000090:
    if !(== self.ok 1s) goto 0x000248
0x0000A4:
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000248
0x0000CC:
    push -5s
    if !(== 224s:flag 0s) goto 0x000198
0x0000E8:
    global.currentsong = (caster_load[]:int32 (var "music/oogloop.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.7d) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000168
0x00014C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x000194
0x000170:
    call (caster_set_pitch[]:int32 (var 0.5d) global.currentsong)
0x000194:
    goto 0x000248
0x000198:
    push -5s
    if !(== 27s:flag 0s) goto 0x0001F8
0x0001B4:
    global.currentsong = (caster_load[]:int32 (var "music/toomuch.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x000248
0x0001F8:
    global.currentsong = (caster_load[]:int32 (var "music/oogloop.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.7d) global.currentsong)
0x000248:
    exit
