0x000000:
    self.waterboard = 0s
    self.won = 0s
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000048
0x00002C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x0000A0
0x000050:
    if !(< global.plot 107s) goto 0x000070
0x000064:
    global.plot = 107s
0x000070:
    push -5s
    if !(== 386s:flag 0s) goto 0x0000A0
0x00008C:
    stog.flag[386s] = 1s
0x0000A0:
    if !(== self.room 88s) goto 0x0000C8
0x0000B4:
    push (== global.entrance 2s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x000154
0x0000D0:
    self.xx = 420s
    self.yy = 400s
    self.i = 0s
    if (<= 4s 0) goto 0x000150
0x00010C:
    push 4s
    call (event_user[]:int32 (var 0s))
    self.xx = (+ self.xx 20s)
    if (bool (- pop 1)) goto 0x00010C
0x000150:
    push (- pop 1)
    pop
0x000154:
    if !(== self.room 88s) goto 0x00017C
0x000168:
    push (> global.plot 106s)
    goto 0x000180
0x00017C:
    push 0s
0x000180:
    if !pop goto 0x000208
0x000184:
    self.xx = 220s
    self.yy = 180s
    self.i = 0s
    if (<= 4s 0) goto 0x000204
0x0001C0:
    push 4s
    call (event_user[]:int32 (var 0s))
    self.yy = (+ self.yy 20s)
    if (bool (- pop 1)) goto 0x0001C0
0x000204:
    push (- pop 1)
    pop
0x000208:
    if !(== self.room 273s) goto 0x0002D0
0x00021C:
    if (> global.plot 110s) goto 0x000244
0x000230:
    push (== global.entrance 2s)
    goto 0x000248
0x000244:
    push 1s
0x000248:
    if !pop goto 0x0002D0
0x00024C:
    self.xx = 180s
    self.yy = 440s
    self.i = 0s
    if (<= 4s 0) goto 0x0002CC
0x000288:
    push 4s
    call (event_user[]:int32 (var 0s))
    self.xx = (+ self.xx 20s)
    if (bool (- pop 1)) goto 0x000288
0x0002CC:
    push (- pop 1)
    pop
0x0002D0:
    if !(== self.room 87s) goto 0x000300
0x0002E4:
    push -5s
    push (== 386s:flag 1s)
    goto 0x000304
0x000300:
    push 0s
0x000304:
    if !pop goto 0x00038C
0x000308:
    self.xx = 280s
    self.yy = 140s
    self.i = 0s
    if (<= 4s 0) goto 0x000388
0x000344:
    push 4s
    call (event_user[]:int32 (var 0s))
    self.xx = (+ self.xx 20s)
    if (bool (- pop 1)) goto 0x000344
0x000388:
    push (- pop 1)
    pop
0x00038C:
    exit
