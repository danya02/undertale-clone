0x000000:
    self.myinteract = 0s
    call (scr_depth[]:int32 )
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/dogroom.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    self.image_speed = 0.1d
0x000088:
    exit
