0x000000:
    global.hp = 0s
    if !(== global.battlegroup 22s) goto 0x00002C
0x000020:
    [obj_torielboss].sprite_index = 726s
0x00002C:
    if !(bool (instance_exists[]:int32 (var 478s))) goto 0x0000CC
0x000044:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ky = (ini_read_real[]:int32 (var 0s) (var "KillYou") (var "Asgore"))
    call (ini_write_real[]:int32 (+ self.ky 1s) (var "KillYou") (var "Asgore"))
    call (ini_close[]:int32 )
0x0000CC:
    if !(bool (instance_exists[]:int32 (var 360s))) goto 0x000108
0x0000E4:
    push -5s
    stog.tempvalue[(+ 11s:tempvalue 1s)] = 11s
0x000108:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.g_o = (ini_read_real[]:int32 (var 0s) (var "Gameover") (var "General"))
    call (ini_close[]:int32 )
    call (audio_stop_all[]:int32 )
    call (caster_stop[]:int32 (var -3s))
    call (caster_free[]:int32 (var -3s))
    if !(bool (instance_exists[]:int32 (var 743s))) goto 0x0001C8
0x0001A8:
    global.myxb = 743.x
    global.myyb = 743.y
0x0001C8:
    if !(bool (instance_exists[]:int32 (var 748s))) goto 0x000200
0x0001E0:
    global.myxb = 748.x
    global.myyb = 748.y
0x000200:
    call (room_goto[]:int32 (var 310s))
0x000214:
    exit
