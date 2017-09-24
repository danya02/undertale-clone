0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    self.dm = 0s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000068
0x00005C:
    self.dm = 1s
0x000068:
    if !(< global.plot 122s) goto 0x000088
0x00007C:
    self.dm = 1s
0x000088:
    push -5s
    if !(== 350s:flag 1s) goto 0x0000B0
0x0000A4:
    self.dm = 1s
0x0000B0:
    if !(== self.dm 1s) goto 0x0000D4
0x0000C4:
    call (instance_destroy[]:int32 )
    exit
0x0000D4:
    self.spec = 0s
0x0000E0:
    exit
