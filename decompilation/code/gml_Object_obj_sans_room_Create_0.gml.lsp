0x000000:
    self.dsprite = 1353s
    self.usprite = 1362s
    self.lsprite = 1367s
    self.rsprite = 1363s
    self.dtsprite = 1353s
    self.utsprite = 1362s
    self.ltsprite = 1367s
    self.rtsprite = 1363s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0s
    if !(== self.room 50s) goto 0x0000C4
0x0000B0:
    push (>= global.plot 43s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    if !(== self.room 53s) goto 0x000100
0x0000EC:
    push (>= global.plot 46s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000114
0x000108:
    call (instance_destroy[]:int32 )
0x000114:
    if !(== self.room 64s) goto 0x00013C
0x000128:
    push (> global.plot 64s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x000150
0x000144:
    call (instance_destroy[]:int32 )
0x000150:
    self.gone = 0s
    push -5s
    if !(> 413s:flag 0s) goto 0x000184
0x000178:
    self.gone = 1s
0x000184:
    push -5s
    if !(== 67s:flag 1s) goto 0x0001AC
0x0001A0:
    self.gone = 1s
0x0001AC:
    if !(> global.plot 200s) goto 0x0001CC
0x0001C0:
    call (instance_destroy[]:int32 )
0x0001CC:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000208
0x0001EC:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00020C
0x000208:
    push 0s
0x00020C:
    if !pop goto 0x00021C
0x000210:
    self.murder = 1s
0x00021C:
    push -5s
    if !(>= 203s:flag 16s) goto 0x000244
0x000238:
    self.murder = 1s
0x000244:
    if !(== self.room 50s) goto 0x00026C
0x000258:
    push (== self.murder 1s)
    goto 0x000270
0x00026C:
    push 0s
0x000270:
    if !pop goto 0x000280
0x000274:
    self.gone = 1s
0x000280:
    if !(== self.room 53s) goto 0x0002A8
0x000294:
    push (== self.murder 1s)
    goto 0x0002AC
0x0002A8:
    push 0s
0x0002AC:
    if !pop goto 0x0002BC
0x0002B0:
    self.gone = 1s
0x0002BC:
    if !(== self.gone 1s) goto 0x0002DC
0x0002D0:
    call (instance_destroy[]:int32 )
0x0002DC:
    self.s_click = 0s
0x0002E8:
    exit
