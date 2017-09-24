0x000000:
    self.gameshake = (* self.gameshake -0.8d)
    self.gameshake = (floor[]:int32 self.gameshake)
    if !(== global.osflavor 1s) goto 0x000074
0x00004C:
    call (window_set_position[]:int32 self.wy (+ self.wx self.gameshake))
0x000074:
    stog.alarm[0s] = 8s
    if !(bool (file_exists[]:int32 (var "undertale.exe"))) goto 0x0000BC
0x0000A4:
    call (file_delete[]:int32 (var "undertale.exe"))
0x0000BC:
    if !(bool (file_exists[]:int32 (var "undertale.EXE"))) goto 0x0000F0
0x0000D8:
    call (file_delete[]:int32 (var "undertale.EXE"))
0x0000F0:
    if !(bool (file_exists[]:int32 (var "Undertale.exe"))) goto 0x000124
0x00010C:
    call (file_delete[]:int32 (var "Undertale.exe"))
0x000124:
    if !(bool (file_exists[]:int32 (var "UNDERTALE.exe"))) goto 0x000158
0x000140:
    call (file_delete[]:int32 (var "UNDERTALE.exe"))
0x000158:
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x00018C
0x000174:
    call (file_delete[]:int32 (var "undertale.ini"))
0x00018C:
    if !(bool (file_exists[]:int32 (var "file0"))) goto 0x0001C0
0x0001A8:
    call (file_delete[]:int32 (var "file0"))
0x0001C0:
    if !(bool (file_exists[]:int32 (var "file1"))) goto 0x0001F4
0x0001DC:
    call (file_delete[]:int32 (var "file1"))
0x0001F4:
    if !(bool (file_exists[]:int32 (var "file2"))) goto 0x000228
0x000210:
    call (file_delete[]:int32 (var "file2"))
0x000228:
    if !(bool (file_exists[]:int32 (var "file3"))) goto 0x00025C
0x000244:
    call (file_delete[]:int32 (var "file3"))
0x00025C:
    if !(bool (file_exists[]:int32 (var "file4"))) goto 0x000290
0x000278:
    call (file_delete[]:int32 (var "file4"))
0x000290:
    if !(bool (file_exists[]:int32 (var "file5"))) goto 0x0002C4
0x0002AC:
    call (file_delete[]:int32 (var "file5"))
0x0002C4:
    if !(bool (file_exists[]:int32 (var "file6"))) goto 0x0002F8
0x0002E0:
    call (file_delete[]:int32 (var "file6"))
0x0002F8:
    if !(bool (file_exists[]:int32 (var "file7"))) goto 0x00032C
0x000314:
    call (file_delete[]:int32 (var "file7"))
0x00032C:
    if !(bool (file_exists[]:int32 (var "file8"))) goto 0x000360
0x000348:
    call (file_delete[]:int32 (var "file8"))
0x000360:
    if !(bool (file_exists[]:int32 (var "file9"))) goto 0x000394
0x00037C:
    call (file_delete[]:int32 (var "file9"))
0x000394:
    self.gx = (file_text_open_write[]:int32 (var "system_information_962"))
    call (file_text_write_string[]:int32 (var "a") self.gx)
    call (file_text_close[]:int32 self.gx)
    if !(== global.steam_int 1s) goto 0x00043C
0x0003F8:
    if !(~ (bool (steam_file_exists[]:int32 (var "system_information_962")))) goto 0x00043C
0x000418:
    call (steam_file_write_file[]:int32 (var "system_information_962") (var "system_information_962"))
0x00043C:
    if !(< (abs[]:int32 self.gameshake) 3s) goto 0x000464
0x000458:
    call (game_end[]:int32 )
0x000464:
    exit
