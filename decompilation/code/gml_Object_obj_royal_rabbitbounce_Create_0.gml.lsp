0x000000:
    self.myinteract = 0s
    self.siner = 0s
    call (scr_depth[]:int32 )
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00004C
0x000038:
    push (== self.room 139s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x0000CC
0x000054:
    self.ff = (instance_create[]:int32 (var 1183s) (var 60s) (var 180s))
    pushenv (int32 self.ff) 0x000098
0x00008C:
    self.image_xscale = 3s
0x000098:
    popenv 0x00008C
0x00009C:
    pushenv (int32 self.ff) 0x0000B8
0x0000AC:
    self.image_yscale = 1s
0x0000B8:
    popenv 0x0000AC
0x0000BC:
    call (instance_destroy[]:int32 )
    exit
0x0000CC:
    self.d = 0s
    if !(>= global.plot 136s) goto 0x000100
0x0000EC:
    push (== self.room 139s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000118
0x000108:
    call (instance_destroy[]:int32 )
    exit
0x000118:
    push -5s
    if !(== 402s:flag 1s) goto 0x000144
0x000134:
    call (instance_destroy[]:int32 )
    exit
0x000144:
    self.dbud = (instance_create[]:int32 (var 1358s) self.y (+ self.x 23s))
    push 1840s
    stog.sprite_index* = (int32 self.dbud)
    call (instance_create[]:int32 (var 6s) (+ self.y 25s) (- self.x 17s))
    self.tt = 0s
0x0001CC:
    exit
