0x000000:
    if !(== global.mnfight 0s) goto 0x00068C
0x000014:
    if (== global.bmenuno 1s) goto 0x000050
0x000028:
    if (== global.bmenuno 2s) goto 0x000050
0x00003C:
    push (== global.bmenuno 11s)
    goto 0x000054
0x000050:
    push 1s
0x000054:
    if !pop goto 0x0001FC
0x000058:
    push -5s
    stog.bmenucoord[(+ 1s:bmenucoord 1s)] = 1s
    push -5s
    if !(> 1s:bmenucoord 2s) goto 0x0000AC
0x000098:
    stog.bmenucoord[1s] = 0s
0x0000AC:
    push -5s
    if !(== 0s:monster 0s) goto 0x0000E4
0x0000C8:
    push -5s
    push (== 2s:monster 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x000100
0x0000EC:
    stog.bmenucoord[1s] = 1s
0x000100:
    push -5s
    if !(== 1s:bmenucoord 0s) goto 0x000138
0x00011C:
    push -5s
    push (== 0s:monster 0s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000154
0x000140:
    stog.bmenucoord[1s] = 1s
0x000154:
    push -5s
    if !(== 1s:bmenucoord 1s) goto 0x00018C
0x000170:
    push -5s
    push (== 1s:monster 0s)
    goto 0x000190
0x00018C:
    push 0s
0x000190:
    if !pop goto 0x0001A8
0x000194:
    stog.bmenucoord[1s] = 2s
0x0001A8:
    push -5s
    if !(== 1s:bmenucoord 2s) goto 0x0001E0
0x0001C4:
    push -5s
    push (== 2s:monster 0s)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x0001FC
0x0001E8:
    stog.bmenucoord[1s] = 0s
0x0001FC:
    if !(== global.bmenuno 10s) goto 0x000440
0x000210:
    push -5s
    self.nowcoord = 2s:bmenucoord
    push -5s
    if !(!= 2s:bmenucoord 2s) goto 0x000260
0x000244:
    push -5s
    push (!= 2s:bmenucoord 5s)
    goto 0x000264
0x000260:
    push 0s
0x000264:
    if !pop goto 0x000290
0x000268:
    push -5s
    stog.bmenucoord[(+ 2s:bmenucoord 1s)] = 2s
    goto 0x0002B4
0x000290:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 2s)] = 2s
0x0002B4:
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x0002FC
0x0002E0:
    push -5s
    push (> 2s:bmenucoord 2s)
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    if !pop goto 0x000318
0x000304:
    stog.bmenucoord[2s] = 3s
0x000318:
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x000360
0x000344:
    push -5s
    push (<= 2s:bmenucoord 2s)
    goto 0x000364
0x000360:
    push 0s
0x000364:
    if !pop goto 0x00037C
0x000368:
    stog.bmenucoord[2s] = 0s
0x00037C:
    push -5s
    if !(== 0s:choices 1s) goto 0x000424
0x000398:
    push -5s
    if !(== 1s:choices 0s) goto 0x000424
0x0003B4:
    push -5s
    if !(== 2s:choices 0s) goto 0x000424
0x0003D0:
    push -5s
    if !(== 3s:choices 0s) goto 0x000424
0x0003EC:
    push -5s
    if !(== 4s:choices 0s) goto 0x000424
0x000408:
    push -5s
    push (== 5s:choices 0s)
    goto 0x000428
0x000424:
    push 0s
0x000428:
    if !pop goto 0x000440
0x00042C:
    stog.bmenucoord[2s] = 0s
0x000440:
    if (== global.bmenuno 3s) goto 0x000470
0x000454:
    push (== global.bmenuno 3.5d)
    goto 0x000474
0x000470:
    push 1s
0x000474:
    if !pop goto 0x000614
0x000478:
    self.mv = 0s
    push -5s
    self.tempcheck = 3s:bmenucoord
    if !(== global.bmenuno 3.5d) goto 0x0004D0
0x0004B8:
    self.tempcheck = (+ self.tempcheck 4s)
0x0004D0:
    push -5s
    if (== 3s:bmenucoord 2s) goto 0x000508
0x0004EC:
    push -5s
    push (== 3s:bmenucoord 3s)
    goto 0x00050C
0x000508:
    push 1s
0x00050C:
    if !pop goto 0x000540
0x000510:
    push -5s
    stog.bmenucoord[(- 3s:bmenucoord 2s)] = 3s
    self.mv = 1s
0x000540:
    if !(== self.mv 0s) goto 0x000614
0x000554:
    push -5s
    if (== 3s:bmenucoord 0s) goto 0x00058C
0x000570:
    push -5s
    push (== 3s:bmenucoord 1s)
    goto 0x000590
0x00058C:
    push 1s
0x000590:
    if !pop goto 0x000614
0x000594:
    push -5s
    stog.bmenucoord[(+ 3s:bmenucoord 2s)] = 3s
    push -5s
    if !(== (int32 (+ self.tempcheck 2s)):item 0s) goto 0x000608
0x0005E4:
    push -5s
    stog.bmenucoord[(- 3s:bmenucoord 2s)] = 3s
0x000608:
    self.mv = 1s
0x000614:
    if !(== global.bmenuno 4s) goto 0x00068C
0x000628:
    push -5s
    if !(== 4s:bmenucoord 0s) goto 0x000658
0x000644:
    push (< global.mercy 1s)
    goto 0x00065C
0x000658:
    push 0s
0x00065C:
    if !pop goto 0x000678
0x000660:
    stog.bmenucoord[4s] = 1s
    goto 0x00068C
0x000678:
    stog.bmenucoord[4s] = 0s
0x00068C:
    exit
