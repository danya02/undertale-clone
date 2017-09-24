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
    if !(== self.ok 1s) goto 0x0000F4
0x0000A4:
    global.currentsong = (caster_load[]:int32 (var "music/core_ambience.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.6d) global.currentsong)
0x0000F4:
    exit
