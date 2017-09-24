0x000000:
    self.mystring = " "
    stog.alarm[0s] = 450s
    self.con = 0s
    self.cantype = 1s
    pushenv 414s 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    self.draw_on = 1s
    self.dotimer = 0s
    global.border = 0s
    self.endbuffer = 180s
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x0000F4
0x0000A0:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.essaynum = (ini_read_real[]:int32 (var 0s) (var "EssayNo") (var "MTT"))
    call (ini_close[]:int32 )
0x0000F4:
    if !(== self.essaynum 1s) goto 0x000114
0x000108:
    self.endbuffer = 150s
0x000114:
    if !(== self.essaynum 2s) goto 0x000134
0x000128:
    self.endbuffer = 120s
0x000134:
    if !(>= self.essaynum 3s) goto 0x000154
0x000148:
    self.endbuffer = 100s
0x000154:
    exit
