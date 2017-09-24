0x000000:
    if !(== (keyboard_check_pressed[]:int32 (var 39s)) 0s) goto 0x0008A8
0x00001C:
    push -5s
    self.currentplace = 0s:bmenucoord
    if !(== global.mnfight 0s) goto 0x000874
0x000048:
    if !(== global.bmenuno 0s) goto 0x000124
0x00005C:
    push -5s
    stog.bmenucoord[(- 0s:bmenucoord 1s)] = 0s
    push -5s
    if !(< 0s:bmenucoord 0s) goto 0x0000B0
0x00009C:
    stog.bmenucoord[0s] = 3s
0x0000B0:
    if !(== global.mercy 2s) goto 0x0000E0
0x0000C4:
    push -5s
    push (== 0s:bmenucoord 3s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x0000FC
0x0000E8:
    stog.bmenucoord[0s] = 2s
0x0000FC:
    if !(== global.mercy 3s) goto 0x000124
0x000110:
    stog.bmenucoord[0s] = 1s
0x000124:
    if !(!= global.myfight 4s) goto 0x000484
0x000138:
    if !(== global.bmenuno 3s) goto 0x000484
0x00014C:
    self.tempcheck = global.bmenuno
    self.mv = 0s
    push -5s
    if !(== 3s:bmenucoord 1s) goto 0x0001A4
0x000184:
    stog.bmenucoord[3s] = 0s
    self.mv = 1s
0x0001A4:
    if !(== self.mv 0s) goto 0x0002E0
0x0001B8:
    push -5s
    if !(== 3s:bmenucoord 0s) goto 0x0002E0
0x0001D4:
    push -5s
    if !(!= 5s:item 0s) goto 0x000218
0x0001F0:
    stog.bmenucoord[3s] = 1s
    global.bmenuno = 3.5d
0x000218:
    push -5s
    if !(== 5s:item 0s) goto 0x000250
0x000234:
    push -5s
    push (!= 4s:item 0s)
    goto 0x000254
0x000250:
    push 0s
0x000254:
    if !pop goto 0x000280
0x000258:
    stog.bmenucoord[3s] = 0s
    global.bmenuno = 3.5d
0x000280:
    push -5s
    if !(== 4s:item 0s) goto 0x0002B0
0x00029C:
    stog.bmenucoord[3s] = 1s
0x0002B0:
    push -5s
    if !(== 1s:item 0s) goto 0x0002E0
0x0002CC:
    stog.bmenucoord[3s] = 0s
0x0002E0:
    push -5s
    if !(== 3s:bmenucoord 3s) goto 0x00031C
0x0002FC:
    stog.bmenucoord[3s] = 2s
    self.mv = 1s
0x00031C:
    if !(== self.mv 0s) goto 0x000458
0x000330:
    push -5s
    if !(== 3s:bmenucoord 3s) goto 0x000458
0x00034C:
    push -5s
    if !(!= 7s:item 0s) goto 0x000390
0x000368:
    stog.bmenucoord[3s] = 3s
    global.bmenuno = 3.5d
0x000390:
    push -5s
    if !(== 7s:item 0s) goto 0x0003C8
0x0003AC:
    push -5s
    push (!= 6s:item 0s)
    goto 0x0003CC
0x0003C8:
    push 0s
0x0003CC:
    if !pop goto 0x0003F8
0x0003D0:
    stog.bmenucoord[3s] = 2s
    global.bmenuno = 3.5d
0x0003F8:
    push -5s
    if !(== 6s:item 0s) goto 0x000428
0x000414:
    stog.bmenucoord[3s] = 3s
0x000428:
    push -5s
    if !(== 3s:item 0s) goto 0x000458
0x000444:
    stog.bmenucoord[3s] = 2s
0x000458:
    if !(!= global.bmenuno self.tempcheck) goto 0x000484
0x000470:
    call (script_execute[]:int32 (var 69s))
0x000484:
    if !(!= global.myfight 4s) goto 0x000668
0x000498:
    if !(== global.bmenuno 3.5d) goto 0x000668
0x0004B4:
    self.tempcheck = global.bmenuno
    self.mv = 0s
    push -5s
    if !(== 3s:bmenucoord 1s) goto 0x00050C
0x0004EC:
    stog.bmenucoord[3s] = 0s
    self.mv = 1s
0x00050C:
    if !(== self.mv 0s) goto 0x000568
0x000520:
    push -5s
    if !(== 3s:bmenucoord 0s) goto 0x000568
0x00053C:
    self.mv = 1s
    global.bmenuno = 3s
    stog.bmenucoord[3s] = 1s
0x000568:
    if !(== self.mv 0s) goto 0x0005B8
0x00057C:
    push -5s
    if !(== 3s:bmenucoord 3s) goto 0x0005B8
0x000598:
    stog.bmenucoord[3s] = 2s
    self.mv = 1s
0x0005B8:
    if !(== self.mv 0s) goto 0x000614
0x0005CC:
    push -5s
    if !(== 3s:bmenucoord 2s) goto 0x000614
0x0005E8:
    self.mv = 1s
    global.bmenuno = 3s
    stog.bmenucoord[3s] = 3s
0x000614:
    if !(== self.mv 1s) goto 0x00063C
0x000628:
    call (snd_play[]:int32 (var 114s))
0x00063C:
    if !(!= global.bmenuno self.tempcheck) goto 0x000668
0x000654:
    call (script_execute[]:int32 (var 69s))
0x000668:
    if !(== global.bmenuno 10s) goto 0x0007F8
0x00067C:
    push -5s
    if !(<= 2s:bmenucoord 2s) goto 0x0006C0
0x000698:
    push -5s
    stog.bmenucoord[(+ 2s:bmenucoord 3s)] = 2s
    goto 0x0006E4
0x0006C0:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 3s)] = 2s
0x0006E4:
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x000734
0x000710:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 1s)] = 2s
0x000734:
    push -5s
    if !(== 0s:choices 1s) goto 0x0007DC
0x000750:
    push -5s
    if !(== 1s:choices 0s) goto 0x0007DC
0x00076C:
    push -5s
    if !(== 2s:choices 0s) goto 0x0007DC
0x000788:
    push -5s
    if !(== 3s:choices 0s) goto 0x0007DC
0x0007A4:
    push -5s
    if !(== 4s:choices 0s) goto 0x0007DC
0x0007C0:
    push -5s
    push (== 5s:choices 0s)
    goto 0x0007E0
0x0007DC:
    push 0s
0x0007E0:
    if !pop goto 0x0007F8
0x0007E4:
    stog.bmenucoord[2s] = 0s
0x0007F8:
    if !(== global.bmenuno 6s) goto 0x000874
0x00080C:
    push -5s
    if !(== 6s:bmenucoord 0s) goto 0x000850
0x000828:
    push -5s
    stog.bmenucoord[(+ 6s:bmenucoord 1s)] = 6s
    goto 0x000874
0x000850:
    push -5s
    stog.bmenucoord[(- 6s:bmenucoord 1s)] = 6s
0x000874:
    push -5s
    if !(!= 0s:bmenucoord self.currentplace) goto 0x0008A8
0x000894:
    call (snd_play[]:int32 (var 114s))
0x0008A8:
    exit
