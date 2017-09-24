0x000000:
    self.number = -1s
    self.ii = (caster_load[]:int32 (var "music/intronoise.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.ii)
    stog.alarm[5s] = 150s
    self.rot = 0s
    self.phonecalls = 0s
    global.filechoice = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 0s) (var "E") (var "FFFFF"))
    call (ini_write_real[]:int32 (var 0s) (var "F") (var "FFFFF"))
    self.won = (ini_read_real[]:int32 (var 0s) (var "Won") (var "General"))
    call (ini_write_real[]:int32 (+ self.won 1s) (var "Won") (var "General"))
    call (ini_close[]:int32 )
0x000164:
    exit
