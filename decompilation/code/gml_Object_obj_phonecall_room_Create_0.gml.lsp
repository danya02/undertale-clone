0x000000:
    self.t = 0s
    self.image_yscale = 5s
    self.donotcall = 0s
    if !(== self.room 88s) goto 0x00004C
0x000038:
    push (> global.plot 106s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    if !(== self.room 97s) goto 0x000090
0x000074:
    push -5s
    push (> 354s:flag 0s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    if !(== self.room 136s) goto 0x0000D4
0x0000B8:
    push -5s
    push (> 354s:flag 1s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    if !(== self.room 145s) goto 0x000110
0x0000FC:
    push (> global.plot 129s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    if !(== self.room 147s) goto 0x00014C
0x000138:
    push (> global.plot 130s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000160
0x000154:
    call (instance_destroy[]:int32 )
0x000160:
    if !(== self.room 148s) goto 0x000188
0x000174:
    push (> global.plot 131s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x00019C
0x000190:
    call (instance_destroy[]:int32 )
0x00019C:
    if !(== self.room 149s) goto 0x0001CC
0x0001B0:
    push -5s
    push (== 373s:flag 1s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x0001EC
0x0001D4:
    [obj_bluelaser_o].active = 2s
    call (instance_destroy[]:int32 )
0x0001EC:
    if !(== self.room 162s) goto 0x000214
0x000200:
    push (> global.plot 138s)
    goto 0x000218
0x000214:
    push 0s
0x000218:
    if !pop goto 0x000228
0x00021C:
    call (instance_destroy[]:int32 )
0x000228:
    if !(== self.room 153s) goto 0x000258
0x00023C:
    push (>= global.plot 133.5d)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x00026C
0x000260:
    call (instance_destroy[]:int32 )
0x00026C:
    if !(== self.room 155s) goto 0x000294
0x000280:
    push (>= global.plot 137s)
    goto 0x000298
0x000294:
    push 0s
0x000298:
    if !pop goto 0x0002A8
0x00029C:
    call (instance_destroy[]:int32 )
0x0002A8:
    if !(== self.room 188s) goto 0x0002D0
0x0002BC:
    push (> global.plot 175s)
    goto 0x0002D4
0x0002D0:
    push 0s
0x0002D4:
    if !pop goto 0x0002E4
0x0002D8:
    call (instance_destroy[]:int32 )
0x0002E4:
    if !(== self.room 189s) goto 0x00030C
0x0002F8:
    push (> global.plot 176s)
    goto 0x000310
0x00030C:
    push 0s
0x000310:
    if !pop goto 0x000320
0x000314:
    call (instance_destroy[]:int32 )
0x000320:
    if !(== self.room 190s) goto 0x000350
0x000334:
    push -5s
    push (== 415s:flag 1s)
    goto 0x000354
0x000350:
    push 0s
0x000354:
    if !pop goto 0x000364
0x000358:
    call (instance_destroy[]:int32 )
0x000364:
    if !(== self.room 190s) goto 0x00038C
0x000378:
    push (> global.plot 180s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0003A0
0x000394:
    call (instance_destroy[]:int32 )
0x0003A0:
    if !(== self.room 192s) goto 0x0003C8
0x0003B4:
    push (>= global.plot 180s)
    goto 0x0003CC
0x0003C8:
    push 0s
0x0003CC:
    if !pop goto 0x0003DC
0x0003D0:
    call (instance_destroy[]:int32 )
0x0003DC:
    if !(== self.room 193s) goto 0x000404
0x0003F0:
    push (> global.plot 181s)
    goto 0x000408
0x000404:
    push 0s
0x000408:
    if !pop goto 0x000418
0x00040C:
    call (instance_destroy[]:int32 )
0x000418:
    if !(== self.room 195s) goto 0x000440
0x00042C:
    push (> global.plot 182s)
    goto 0x000444
0x000440:
    push 0s
0x000444:
    if !pop goto 0x000454
0x000448:
    call (instance_destroy[]:int32 )
0x000454:
    if !(== self.room 196s) goto 0x00047C
0x000468:
    push (> global.plot 184s)
    goto 0x000480
0x00047C:
    push 0s
0x000480:
    if !pop goto 0x000490
0x000484:
    call (instance_destroy[]:int32 )
0x000490:
    if !(== self.room 171s) goto 0x0004B8
0x0004A4:
    push (>= global.plot 163s)
    goto 0x0004BC
0x0004B8:
    push 0s
0x0004BC:
    if !pop goto 0x0004CC
0x0004C0:
    call (instance_destroy[]:int32 )
0x0004CC:
    if !(== self.room 115s) goto 0x000514
0x0004E0:
    self.image_yscale = 1s
    push -5s
    if !(!= 493s:flag 10s) goto 0x000514
0x000508:
    call (instance_destroy[]:int32 )
0x000514:
    exit
