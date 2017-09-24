0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.cross = 0s
    self.cancel = 0s
    self.nightmare = 0s
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x000134
0x000064:
    push -5s
    if (== 5s:flag 56s) goto 0x00009C
0x000080:
    push -5s
    push (== 5s:flag 57s)
    goto 0x0000A0
0x00009C:
    push 1s
0x0000A0:
    if !pop goto 0x000134
0x0000A4:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.fn = (ini_read_real[]:int32 (var 0s) (var "fun") (var "General"))
    if (== self.fn 56s) goto 0x000114
0x000100:
    push (== self.fn 57s)
    goto 0x000118
0x000114:
    push 1s
0x000118:
    if !pop goto 0x000128
0x00011C:
    self.nightmare = 1s
0x000128:
    call (ini_close[]:int32 )
0x000134:
    exit
