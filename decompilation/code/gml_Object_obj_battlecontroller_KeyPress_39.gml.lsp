0x000000:
    push -5s
    self.currentplace = 0s:bmenucoord
    if !(== global.mnfight 0s) goto 0x0007D0
0x00002C:
    if !(== global.bmenuno 0s) goto 0x000108
0x000040:
    push -5s
    stog.bmenucoord[(+ 0s:bmenucoord 1s)] = 0s
    push -5s
    if !(> 0s:bmenucoord 3s) goto 0x000094
0x000080:
    stog.bmenucoord[0s] = 0s
0x000094:
    if !(== global.mercy 2s) goto 0x0000C4
0x0000A8:
    push -5s
    push (== 0s:bmenucoord 3s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x0000E0
0x0000CC:
    stog.bmenucoord[0s] = 0s
0x0000E0:
    if !(== global.mercy 3s) goto 0x000108
0x0000F4:
    stog.bmenucoord[0s] = 1s
0x000108:
    if !(== global.bmenuno 10s) goto 0x000298
0x00011C:
    push -5s
    if !(<= 2s:bmenucoord 2s) goto 0x000160
0x000138:
    push -5s
    stog.bmenucoord[(+ 2s:bmenucoord 3s)] = 2s
    goto 0x000184
0x000160:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 3s)] = 2s
0x000184:
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x0001D4
0x0001B0:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 1s)] = 2s
0x0001D4:
    push -5s
    if !(== 0s:choices 1s) goto 0x00027C
0x0001F0:
    push -5s
    if !(== 1s:choices 0s) goto 0x00027C
0x00020C:
    push -5s
    if !(== 2s:choices 0s) goto 0x00027C
0x000228:
    push -5s
    if !(== 3s:choices 0s) goto 0x00027C
0x000244:
    push -5s
    if !(== 4s:choices 0s) goto 0x00027C
0x000260:
    push -5s
    push (== 5s:choices 0s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x000298
0x000284:
    stog.bmenucoord[2s] = 0s
0x000298:
    if !(== global.bmenuno 6s) goto 0x000314
0x0002AC:
    push -5s
    if !(== 6s:bmenucoord 0s) goto 0x0002F0
0x0002C8:
    push -5s
    stog.bmenucoord[(+ 6s:bmenucoord 1s)] = 6s
    goto 0x000314
0x0002F0:
    push -5s
    stog.bmenucoord[(- 6s:bmenucoord 1s)] = 6s
0x000314:
    self.mv = 0s
    if !(!= global.myfight 4s) goto 0x000564
0x000334:
    if !(== global.bmenuno 3s) goto 0x000564
0x000348:
    self.tempcheck = global.bmenuno
    push -5s
    if !(== 3s:bmenucoord 0s) goto 0x0003B0
0x000374:
    push -5s
    if !(!= 1s:item 0s) goto 0x0003A4
0x000390:
    stog.bmenucoord[3s] = 1s
0x0003A4:
    self.mv = 1s
0x0003B0:
    if !(== self.mv 0s) goto 0x000448
0x0003C4:
    push -5s
    if !(== 3s:bmenucoord 1s) goto 0x000448
0x0003E0:
    push -5s
    if !(!= 4s:item 0s) goto 0x000428
0x0003FC:
    stog.bmenucoord[3s] = 0s
    global.bmenuno = 3.5d
    goto 0x00043C
0x000428:
    stog.bmenucoord[3s] = 0s
0x00043C:
    self.mv = 1s
0x000448:
    push -5s
    if !(== 3s:bmenucoord 2s) goto 0x0004A0
0x000464:
    push -5s
    if !(!= 3s:item 0s) goto 0x000494
0x000480:
    stog.bmenucoord[3s] = 3s
0x000494:
    self.mv = 1s
0x0004A0:
    if !(== self.mv 0s) goto 0x000538
0x0004B4:
    push -5s
    if !(== 3s:bmenucoord 3s) goto 0x000538
0x0004D0:
    push -5s
    if !(!= 6s:item 0s) goto 0x000518
0x0004EC:
    stog.bmenucoord[3s] = 2s
    global.bmenuno = 3.5d
    goto 0x00052C
0x000518:
    stog.bmenucoord[3s] = 2s
0x00052C:
    self.mv = 1s
0x000538:
    if !(!= global.bmenuno self.tempcheck) goto 0x000564
0x000550:
    call (script_execute[]:int32 (var 69s))
0x000564:
    if !(== self.mv 0s) goto 0x0007D0
0x000578:
    if !(!= global.myfight 4s) goto 0x0007D0
0x00058C:
    if !(== global.bmenuno 3.5d) goto 0x0007D0
0x0005A8:
    self.tempcheck = global.bmenuno
    push -5s
    if !(== 3s:bmenucoord 1s) goto 0x000600
0x0005D4:
    stog.bmenucoord[3s] = 0s
    global.bmenuno = 3s
    self.mv = 1s
0x000600:
    if !(== self.mv 0s) goto 0x000690
0x000614:
    push -5s
    if !(== 3s:bmenucoord 0s) goto 0x000690
0x000630:
    push -5s
    if !(!= 5s:item 0s) goto 0x000664
0x00064C:
    stog.bmenucoord[3s] = 1s
    goto 0x000684
0x000664:
    stog.bmenucoord[3s] = 0s
    global.bmenuno = 3s
0x000684:
    self.mv = 1s
0x000690:
    if !(== self.mv 0s) goto 0x0006EC
0x0006A4:
    push -5s
    if !(== 3s:bmenucoord 3s) goto 0x0006EC
0x0006C0:
    stog.bmenucoord[3s] = 2s
    global.bmenuno = 3s
    self.mv = 1s
0x0006EC:
    if !(== self.mv 0s) goto 0x00077C
0x000700:
    push -5s
    if !(== 3s:bmenucoord 2s) goto 0x00077C
0x00071C:
    push -5s
    if !(!= 7s:item 0s) goto 0x000750
0x000738:
    stog.bmenucoord[3s] = 3s
    goto 0x000770
0x000750:
    stog.bmenucoord[3s] = 2s
    global.bmenuno = 3s
0x000770:
    self.mv = 1s
0x00077C:
    if !(== self.mv 1s) goto 0x0007A4
0x000790:
    call (snd_play[]:int32 (var 114s))
0x0007A4:
    if !(!= global.bmenuno self.tempcheck) goto 0x0007D0
0x0007BC:
    call (script_execute[]:int32 (var 69s))
0x0007D0:
    push -5s
    if !(!= 0s:bmenucoord self.currentplace) goto 0x000804
0x0007F0:
    call (snd_play[]:int32 (var 114s))
0x000804:
    exit
