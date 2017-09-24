0x000000:
    if !(== (keyboard_check_pressed[]:int32 (var 40s)) 0s) goto 0x000668
0x00001C:
    if !(== global.mnfight 0s) goto 0x000668
0x000030:
    if (== global.bmenuno 1s) goto 0x00006C
0x000044:
    if (== global.bmenuno 2s) goto 0x00006C
0x000058:
    push (== global.bmenuno 11s)
    goto 0x000070
0x00006C:
    push 1s
0x000070:
    if !pop goto 0x000218
0x000074:
    push -5s
    stog.bmenucoord[(- 1s:bmenucoord 1s)] = 1s
    push -5s
    if !(< 1s:bmenucoord 0s) goto 0x0000C8
0x0000B4:
    stog.bmenucoord[1s] = 2s
0x0000C8:
    push -5s
    if !(== 0s:monster 0s) goto 0x000100
0x0000E4:
    push -5s
    push (== 2s:monster 0s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x00011C
0x000108:
    stog.bmenucoord[1s] = 1s
0x00011C:
    push -5s
    if !(== 1s:bmenucoord 2s) goto 0x000154
0x000138:
    push -5s
    push (== 2s:monster 0s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000170
0x00015C:
    stog.bmenucoord[1s] = 1s
0x000170:
    push -5s
    if !(== 1s:bmenucoord 1s) goto 0x0001A8
0x00018C:
    push -5s
    push (== 1s:monster 0s)
    goto 0x0001AC
0x0001A8:
    push 0s
0x0001AC:
    if !pop goto 0x0001C4
0x0001B0:
    stog.bmenucoord[1s] = 0s
0x0001C4:
    push -5s
    if !(== 1s:bmenucoord 0s) goto 0x0001FC
0x0001E0:
    push -5s
    push (== 0s:monster 0s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000218
0x000204:
    stog.bmenucoord[1s] = 2s
0x000218:
    if !(== global.bmenuno 10s) goto 0x00041C
0x00022C:
    push -5s
    if !(!= 2s:bmenucoord 0s) goto 0x000264
0x000248:
    push -5s
    push (!= 2s:bmenucoord 3s)
    goto 0x000268
0x000264:
    push 0s
0x000268:
    if !pop goto 0x000294
0x00026C:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 1s)] = 2s
    goto 0x0002B8
0x000294:
    push -5s
    stog.bmenucoord[(+ 2s:bmenucoord 2s)] = 2s
0x0002B8:
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x000308
0x0002E4:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 1s)] = 2s
0x000308:
    if !(== (int32 2s:bmenucoord[Altar.Decomp.Expression[]]):choices 0s) goto 0x000358
0x000334:
    push -5s
    stog.bmenucoord[(- 2s:bmenucoord 1s)] = 2s
0x000358:
    push -5s
    if !(== 0s:choices 1s) goto 0x000400
0x000374:
    push -5s
    if !(== 1s:choices 0s) goto 0x000400
0x000390:
    push -5s
    if !(== 2s:choices 0s) goto 0x000400
0x0003AC:
    push -5s
    if !(== 3s:choices 0s) goto 0x000400
0x0003C8:
    push -5s
    if !(== 4s:choices 0s) goto 0x000400
0x0003E4:
    push -5s
    push (== 5s:choices 0s)
    goto 0x000404
0x000400:
    push 0s
0x000404:
    if !pop goto 0x00041C
0x000408:
    stog.bmenucoord[2s] = 0s
0x00041C:
    if (== global.bmenuno 3s) goto 0x00044C
0x000430:
    push (== global.bmenuno 3.5d)
    goto 0x000450
0x00044C:
    push 1s
0x000450:
    if !pop goto 0x0005F0
0x000454:
    self.mv = 0s
    push -5s
    self.tempcheck = 3s:bmenucoord
    if !(== global.bmenuno 3.5d) goto 0x0004AC
0x000494:
    self.tempcheck = (+ self.tempcheck 4s)
0x0004AC:
    push -5s
    if (== 3s:bmenucoord 2s) goto 0x0004E4
0x0004C8:
    push -5s
    push (== 3s:bmenucoord 3s)
    goto 0x0004E8
0x0004E4:
    push 1s
0x0004E8:
    if !pop goto 0x00051C
0x0004EC:
    push -5s
    stog.bmenucoord[(- 3s:bmenucoord 2s)] = 3s
    self.mv = 1s
0x00051C:
    if !(== self.mv 0s) goto 0x0005F0
0x000530:
    push -5s
    if (== 3s:bmenucoord 0s) goto 0x000568
0x00054C:
    push -5s
    push (== 3s:bmenucoord 1s)
    goto 0x00056C
0x000568:
    push 1s
0x00056C:
    if !pop goto 0x0005F0
0x000570:
    push -5s
    stog.bmenucoord[(+ 3s:bmenucoord 2s)] = 3s
    push -5s
    if !(== (int32 (+ self.tempcheck 2s)):item 0s) goto 0x0005E4
0x0005C0:
    push -5s
    stog.bmenucoord[(- 3s:bmenucoord 2s)] = 3s
0x0005E4:
    self.mv = 1s
0x0005F0:
    if !(== global.bmenuno 4s) goto 0x000668
0x000604:
    push -5s
    if !(== 4s:bmenucoord 0s) goto 0x000634
0x000620:
    push (< global.mercy 1s)
    goto 0x000638
0x000634:
    push 0s
0x000638:
    if !pop goto 0x000654
0x00063C:
    stog.bmenucoord[4s] = 1s
    goto 0x000668
0x000654:
    stog.bmenucoord[4s] = 0s
0x000668:
    exit
