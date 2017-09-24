0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    self.con = 0s
    self.dm = 0s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000074
0x000068:
    self.dm = 1s
0x000074:
    if !(< global.plot 122s) goto 0x000094
0x000088:
    self.dm = 1s
0x000094:
    push -5s
    if !(== 350s:flag 1s) goto 0x0000BC
0x0000B0:
    self.dm = 1s
0x0000BC:
    if !(== self.dm 1s) goto 0x0000E0
0x0000D0:
    call (instance_destroy[]:int32 )
    exit
0x0000E0:
    self.spec = 0s
0x0000EC:
    exit
