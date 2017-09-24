0x000000:
    self.dsprite = 1103s
    self.usprite = 1112s
    self.lsprite = 1108s
    self.rsprite = 1107s
    self.dtsprite = 1105s
    self.utsprite = 1111s
    self.ltsprite = 1110s
    self.rtsprite = 1109s
    self.myinteract = 0s
    self.facing = 1s
    self.direction = 180s
    self.talkedto = 0s
    self.image_speed = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x0001A4
0x0000B8:
    self.y = (+ self.y 20s)
    self.dsprite = 2417s
    self.usprite = 2419s
    self.lsprite = 2424s
    self.rsprite = 2421s
    self.dtsprite = 2418s
    self.utsprite = 2420s
    self.ltsprite = 2425s
    self.rtsprite = 2422s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.curf = (ini_read_real[]:int32 (var 0s) (var "EndF") (var "EndF"))
    call (ini_close[]:int32 )
    if !(> self.curf 0s) goto 0x0001A4
0x000198:
    call (instance_destroy[]:int32 )
0x0001A4:
    exit
