0x000000:
    self.intronoise = (caster_load[]:int32 (var "music/intronoise.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.intronoise)
    stog.alarm[0s] = 600s
    stog.alarm[1s] = 100s
    self.d = 0s
    self.ballamount = 0s
    self.special_x = 0s
    self.drawpw = 0s
    self.pw1 = 0s
    self.pw2 = 0s
    self.pw3 = 0s
    self.pw4 = 0s
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x000314
0x0000E4:
    call (ini_open[]:int32 (var "undertale.ini"))
    if !(> (ini_read_real[]:int32 (var 0s) (var "Won") (var "General")) 0s) goto 0x00013C
0x000130:
    self.pw1 = 1s
0x00013C:
    if !(> (ini_read_real[]:int32 (var 0s) (var "Truth") (var "General")) 0s) goto 0x000188
0x000170:
    self.pw1 = 1s
    self.pw2 = 1s
0x000188:
    if !(>= (ini_read_real[]:int32 (var 0s) (var "EndF") (var "EndF")) 2s) goto 0x0001D4
0x0001BC:
    self.pw1 = 1s
    self.pw2 = 1s
0x0001D4:
    if !(> (ini_read_real[]:int32 (var 0s) (var "reset") (var "reset")) 0s) goto 0x000220
0x000208:
    self.pw1 = 1s
    self.pw2 = 1s
0x000220:
    if !(> (ini_read_real[]:int32 (var 0s) (var "Intro") (var "Sans")) 0s) goto 0x000260
0x000254:
    self.pw3 = 1s
0x000260:
    if !(> (ini_read_real[]:int32 (var 0s) (var "F") (var "Sans")) 0s) goto 0x0002A0
0x000294:
    self.pw3 = 1s
0x0002A0:
    if !(> (ini_read_real[]:int32 (var 0s) (var "SK") (var "Sans")) 0s) goto 0x0002E0
0x0002D4:
    self.pw3 = 1s
0x0002E0:
    if !(bool (file_exists[]:int32 (var "system_information_963"))) goto 0x000308
0x0002FC:
    self.pw3 = 1s
0x000308:
    call (ini_close[]:int32 )
0x000314:
    exit
