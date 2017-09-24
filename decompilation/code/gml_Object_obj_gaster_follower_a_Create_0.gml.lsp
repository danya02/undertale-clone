0x000000:
    self.dsprite = 1219s
    self.usprite = 1219s
    self.lsprite = 1219s
    self.rsprite = 1219s
    self.dtsprite = 1219s
    self.utsprite = 1219s
    self.ltsprite = 1219s
    self.rtsprite = 1219s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    self.gox = 0s
    push -5s
    if !(== 5s:flag 61s) goto 0x0001C4
0x0000C4:
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x0001C4
0x0000E0:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.fsx = (ini_read_real[]:int32 (var 0s) (var "fun") (var "General"))
    if !(== self.fsx 61s) goto 0x000158
0x00013C:
    push -5s
    push (== 5s:flag 61s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x0001B8
0x000160:
    self.gox = 1s
    self.type = 1s
    call (ini_write_real[]:int32 (var 0s) (var "fun") (var "General"))
    stog.flag[5s] = 0s
0x0001B8:
    call (ini_close[]:int32 )
0x0001C4:
    self.choos = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(!= self.choos 4s) goto 0x00021C
0x000210:
    self.gox = 0s
0x00021C:
    if !(== global.debug 1s) goto 0x00023C
0x000230:
    self.gox = 1s
0x00023C:
    if !(== self.gox 0s) goto 0x00025C
0x000250:
    call (instance_destroy[]:int32 )
0x00025C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000284
0x000278:
    call (instance_destroy[]:int32 )
0x000284:
    self.con = 0s
0x000290:
    exit
