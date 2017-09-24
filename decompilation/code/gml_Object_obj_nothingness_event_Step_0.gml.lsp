0x000000:
    global.interact = 1s
    if !(bool (keyboard_check[]:int32 (var 27s))) goto 0x000030
0x000024:
    call (game_end[]:int32 )
0x000030:
    call (window_set_caption[]:int32 (var " "))
    if !(== self.con 1s) goto 0x0000B4
0x00005C:
    global.typer = 106s
    global.facechoice = 0s
    global.msc = 888s
    self.con = 2s
    self.writer = (instance_create[]:int32 (var 782s) (var 150s) (var 10s))
0x0000B4:
    if !(== self.con 2s) goto 0x0000E4
0x0000C8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x00010C
0x0000EC:
    self.con = 3s
    stog.alarm[4s] = 180s
0x00010C:
    if !(== self.con 4s) goto 0x000178
0x000120:
    global.typer = 106s
    global.facechoice = 0s
    global.msc = 890s
    self.con = 5s
    self.writer = (instance_create[]:int32 (var 782s) (var 150s) (var 10s))
0x000178:
    if !(== self.con 5s) goto 0x0001A8
0x00018C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001AC
0x0001A8:
    push 0s
0x0001AC:
    if !pop goto 0x0002F8
0x0001B0:
    if !(bool (file_exists[]:int32 (var "system_information_962"))) goto 0x0001E4
0x0001CC:
    call (file_delete[]:int32 (var "system_information_962"))
0x0001E4:
    self.gx = (file_text_open_write[]:int32 (var "system_information_963"))
    call (file_text_write_string[]:int32 (var "b") self.gx)
    call (file_text_close[]:int32 self.gx)
    if !(== global.steam_int 1s) goto 0x0002A0
0x000248:
    if !(bool (steam_file_exists[]:int32 (var "system_information_962"))) goto 0x00027C
0x000264:
    call (steam_file_delete[]:int32 (var "system_information_962"))
0x00027C:
    call (steam_file_write_file[]:int32 (var "system_information_962") (var "system_information_962"))
0x0002A0:
    call (caster_free[]:int32 (var -3s))
    call (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    self.con = 6s
    stog.alarm[4s] = 20s
0x0002F8:
    if !(== self.con 7s) goto 0x000318
0x00030C:
    call (game_end[]:int32 )
0x000318:
    exit
