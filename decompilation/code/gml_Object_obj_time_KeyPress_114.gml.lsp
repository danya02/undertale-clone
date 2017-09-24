0x000000:
    if !(== global.debug 1s) goto 0x0000BC
0x000014:
    self.gx = (file_text_open_write[]:int32 (var "system_information_962"))
    call (file_text_write_string[]:int32 (var "a") self.gx)
    call (file_text_close[]:int32 self.gx)
    if !(== global.steam_int 1s) goto 0x0000BC
0x000078:
    if !(~ (bool (steam_file_exists[]:int32 (var "system_information_962")))) goto 0x0000BC
0x000098:
    call (steam_file_write_file[]:int32 (var "system_information_962") (var "system_information_962"))
0x0000BC:
    exit
