0x000000:
    call (event_user[]:int32 (var 0s))
    self.played = 0s
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x00012C
0x00003C:
    if !(<= global.plot 35s) goto 0x0000D0
0x000050:
    global.currentsong = (caster_load[]:int32 (var "music/tone2.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.2d) global.currentsong)
    call (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    stog.alarm[0s] = 5s
0x0000D0:
    if !(> global.plot 35s) goto 0x00012C
0x0000E4:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
0x00012C:
    if !(<= global.plot 35s) goto 0x000170
0x000140:
    stog.alarm[0s] = 5s
    global.currentsong2 = (caster_load[]:int32 (var "music/tone3.ogg"))
0x000170:
    exit
