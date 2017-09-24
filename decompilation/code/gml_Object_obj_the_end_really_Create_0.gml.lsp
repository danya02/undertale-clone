0x000000:
    self.death = 0s
    if !(bool (file_exists[]:int32 (var "system_information_963"))) goto 0x000034
0x000028:
    self.death = 1s
0x000034:
    self.type = 0s
    self.dogamt = 0s
    push -5s
    if !(== 512s:flag 1s) goto 0x000074
0x000068:
    self.type = 1s
0x000074:
    if !(== self.type 0s) goto 0x0000A4
0x000088:
    self.noise = (caster_load[]:int32 (var "music/intronoise.ogg"))
0x0000A4:
    self.song = (caster_load[]:int32 (var "music/musicbox.ogg"))
    self.timer = 0s
    self.photo_alpha = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.curf = (ini_read_real[]:int32 (var 0s) (var "EndF") (var "EndF"))
    if !(== self.curf 0s) goto 0x000160
0x000134:
    call (ini_write_real[]:int32 (var 1s) (var "EndF") (var "EndF"))
0x000160:
    call (ini_close[]:int32 )
0x00016C:
    exit
