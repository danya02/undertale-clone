0x000000:
    self.buffer = (- self.buffer 1s)
    self.restart = (- self.restart 1s)
    if !(== self.active 1s) goto 0x000058
0x000044:
    push (== self.win 0s)
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x00045C
0x000060:
    if !(<= self.buffer 0s) goto 0x00045C
0x000074:
    self.blt = 0s
    if !(bool (instance_exists[]:int32 (var 1243s))) goto 0x0000A4
0x000098:
    self.blt = 1s
0x0000A4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0000E4
0x0000BC:
    if !(> self.ammo 0s) goto 0x0000E4
0x0000D0:
    push (<= self.buffer 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x000134
0x0000EC:
    self.ammo = (- self.ammo 1s)
    self.buffer = 4s
    call (instance_create[]:int32 (var 1243s) self.y self.x)
0x000134:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000174
0x00014C:
    if !(== self.blt 0s) goto 0x000174
0x000160:
    push (<= self.buffer 0s)
    goto 0x000178
0x000174:
    push 0s
0x000178:
    if !pop goto 0x00019C
0x00017C:
    self.buffer = 4s
    call (event_user[]:int32 (var 0s))
0x00019C:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0001DC
0x0001B4:
    if !(== self.blt 0s) goto 0x0001DC
0x0001C8:
    push (<= self.buffer 0s)
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x000204
0x0001E4:
    self.buffer = 4s
    call (event_user[]:int32 (var 1s))
0x000204:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000244
0x00021C:
    if !(== self.blt 0s) goto 0x000244
0x000230:
    push (<= self.buffer 0s)
    goto 0x000248
0x000244:
    push 0s
0x000248:
    if !pop goto 0x00026C
0x00024C:
    self.buffer = 4s
    call (event_user[]:int32 (var 2s))
0x00026C:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0002AC
0x000284:
    if !(== self.blt 0s) goto 0x0002AC
0x000298:
    push (<= self.buffer 0s)
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002D4
0x0002B4:
    self.buffer = 4s
    call (event_user[]:int32 (var 3s))
0x0002D4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x00031C
0x0002EC:
    if !(<= self.buffer 0s) goto 0x00031C
0x000300:
    push (== (instance_exists[]:int32 (var 1243s)) 0s)
    goto 0x000320
0x00031C:
    push 0s
0x000320:
    if !pop goto 0x000378
0x000324:
    self.active = 0s
    stog.alarm[2s] = 2s
    stog.alarm[1s] = 12s
    self.buffer = 15s
    stog.alarm[3s] = 1s
0x000378:
    if !(== self.ammo 0s) goto 0x0003D0
0x00038C:
    if !(== (instance_exists[]:int32 (var 1243s)) 0s) goto 0x0003D0
0x0003A8:
    if !(<= self.buffer 0s) goto 0x0003D0
0x0003BC:
    push (== self.active 1s)
    goto 0x0003D4
0x0003D0:
    push 0s
0x0003D4:
    if !pop goto 0x00045C
0x0003D8:
    if !(bool (instance_exists[]:int32 (var 1239s))) goto 0x00045C
0x0003F0:
    if !(== 1239.defeat 0s) goto 0x00045C
0x000404:
    self.restart = 20s
    self.rstype = (random[]:int32 (var 100s))
    self.buffer = 20s
    stog.alarm[2s] = 2s
    stog.alarm[1s] = 12s
0x00045C:
    if !(== self.myinteract 1s) goto 0x000484
0x000470:
    push (== self.win 0s)
    goto 0x000488
0x000484:
    push 0s
0x000488:
    if !pop goto 0x0004E8
0x00048C:
    self.ammo = 0s
    self.buffer = 10s
    stog.alarm[5s] = 1s
    global.interact = 1s
    self.myinteract = 2s
    global.facing = 2s
    self.active = 1s
0x0004E8:
    self.snd = 0s
    if !(== self.win 1s) goto 0x00051C
0x000508:
    push (== self.active 1s)
    goto 0x000520
0x00051C:
    push 0s
0x000520:
    if !pop goto 0x000694
0x000524:
    self.wintimer = (+ self.wintimer 1s)
    if !(== self.wintimer 50s) goto 0x000564
0x000550:
    call (snd_play[]:int32 (var 26s))
0x000564:
    if !(> self.wintimer 100s) goto 0x000694
0x000578:
    if !(== self.room 152s) goto 0x0005A0
0x00058C:
    stog.flag[375s] = 1s
0x0005A0:
    if !(== self.room 150s) goto 0x0005C8
0x0005B4:
    stog.flag[374s] = 1s
0x0005C8:
    if !(== self.room 173s) goto 0x0005F0
0x0005DC:
    stog.flag[399s] = 1s
0x0005F0:
    if !(== self.room 175s) goto 0x000618
0x000604:
    stog.flag[400s] = 1s
0x000618:
    if !(== self.room 205s) goto 0x000640
0x00062C:
    stog.flag[418s] = 1s
0x000640:
    global.interact = 0s
    self.wintimer = 0s
    self.win = 2s
    self.myinteract = 0s
    global.facing = 0s
    self.active = 0s
    call (scr_tempsave[]:int32 )
0x000694:
    exit
