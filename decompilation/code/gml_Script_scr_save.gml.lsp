0x000000:
    call (script_execute[]:int32 (var 57s))
    self.filechoicebk2 = global.filechoice
    global.filechoice = 9s
    call (script_execute[]:int32 (var 57s))
    global.filechoice = self.filechoicebk2
    self.iniwrite = (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_string[]:int32 global.charname (var "Name") (var "General"))
    call (ini_write_real[]:int32 global.lv (var "Love") (var "General"))
    call (ini_write_real[]:int32 1569.time (var "Time") (var "General"))
    call (ini_write_real[]:int32 global.kills (var "Kills") (var "General"))
    call (ini_write_real[]:int32 self.room (var "Room") (var "General"))
    call (ini_close[]:int32 )
0x000158:
    exit
