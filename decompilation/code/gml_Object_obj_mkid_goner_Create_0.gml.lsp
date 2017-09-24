0x000000:
    self.dsprite = 1385s
    self.usprite = 1386s
    self.lsprite = 1388s
    self.rsprite = 1387s
    self.dtsprite = 1385s
    self.utsprite = 1386s
    self.ltsprite = 1388s
    self.rtsprite = 1387s
    self.myinteract = 0s
    self.facing = 3s
    self.direction = 180s
    self.talkedto = 0s
    self.image_speed = 0s
    self.con = 0s
    self.fun = 0s
    if !(== self.room 91s) goto 0x0000DC
0x0000C8:
    push (< global.plot 110s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0000F0
0x0000E4:
    call (instance_destroy[]:int32 )
0x0000F0:
    self.type = 0s
    self.gox = 0s
    push -5s
    if !(>= 5s:flag 90s) goto 0x0001E4
0x000124:
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x0001E4
0x000140:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.fsx = (ini_read_real[]:int32 (var 0s) (var "fun") (var "General"))
    if !(>= self.fsx 90s) goto 0x0001B8
0x00019C:
    push -5s
    push (>= 5s:flag 90s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x0001D8
0x0001C0:
    self.gox = 1s
    self.type = 1s
0x0001D8:
    call (ini_close[]:int32 )
0x0001E4:
    if !(== global.debug 1s) goto 0x000204
0x0001F8:
    self.gox = 1s
0x000204:
    if !(== self.gox 0s) goto 0x000224
0x000218:
    call (instance_destroy[]:int32 )
0x000224:
    push -5s
    if !(== 7s:flag 1s) goto 0x00024C
0x000240:
    call (instance_destroy[]:int32 )
0x00024C:
    exit
