0x000000:
    self.myinteract = 4s
    global.msc = 15s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(< global.hp global.maxhp) goto 0x000064
0x000054:
    global.hp = global.maxhp
0x000064:
    global.en = global.maxen
    call (snd_play[]:int32 (var 109s))
    self.offroom = 0s
    if !(== self.room 219s) goto 0x0000B4
0x0000A8:
    self.offroom = 1s
0x0000B4:
    if !(== self.room 235s) goto 0x0000D4
0x0000C8:
    self.offroom = 1s
0x0000D4:
    if !(== self.room 232s) goto 0x0000F4
0x0000E8:
    self.offroom = 1s
0x0000F4:
    if !(== self.room 236s) goto 0x000114
0x000108:
    self.offroom = 1s
0x000114:
    if !(== self.room 231s) goto 0x000134
0x000128:
    self.offroom = 1s
0x000134:
    if !(== self.room 216s) goto 0x000154
0x000148:
    self.offroom = 1s
0x000154:
    if !(== self.room 246s) goto 0x000174
0x000168:
    self.offroom = 1s
0x000174:
    if !(== self.room 251s) goto 0x000194
0x000188:
    self.offroom = 1s
0x000194:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0001C4
0x0001A8:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0001C8
0x0001C4:
    push 0s
0x0001C8:
    if !pop goto 0x0003A4
0x0001CC:
    if (== self.room 46s) goto 0x00021C
0x0001E0:
    if (== self.room 56s) goto 0x00021C
0x0001F4:
    if (== self.room 61s) goto 0x00021C
0x000208:
    push (== self.room 68s)
    goto 0x000220
0x00021C:
    push 1s
0x000220:
    if !pop goto 0x0003A4
0x000224:
    push -5s
    if !(== 27s:flag 0s) goto 0x0003A4
0x000240:
    global.msc = 0s
    push 16s
    self.pop = (- -5s 203s:flag)
    if !(< self.pop 0s) goto 0x00028C
0x000280:
    self.pop = 0s
0x00028C:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0002D8
0x0002A0:
    stog.msg[0s] = (+ (+ "\\R* " (string[]:int32 self.pop)) " left./%%")
0x0002D8:
    if !(== (scr_murderlv[]:int32 ) 5s) goto 0x000304
0x0002EC:
    stog.msg[0s] = "\\R* That comedian.../%%"
0x000304:
    push -5s
    if !(== 57s:flag 2s) goto 0x000334
0x000320:
    push (<= self.pop 0s)
    goto 0x000338
0x000334:
    push 0s
0x000338:
    if !pop goto 0x000354
0x00033C:
    stog.msg[0s] = "* Determination./%%"
0x000354:
    if !(<= self.pop 0s) goto 0x000384
0x000368:
    push -5s
    push (!= 57s:flag 2s)
    goto 0x000388
0x000384:
    push 0s
0x000388:
    if !pop goto 0x0003A4
0x00038C:
    stog.msg[0s] = "* The comedian got away^1.&* Failure./%%"
0x0003A4:
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x0003D4
0x0003B8:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0003D8
0x0003D4:
    push 0s
0x0003D8:
    if !pop goto 0x000578
0x0003DC:
    if (== self.room 83s) goto 0x000490
0x0003F0:
    if (== self.room 86s) goto 0x000490
0x000404:
    if (== self.room 94s) goto 0x000490
0x000418:
    if (== self.room 110s) goto 0x000490
0x00042C:
    if (== self.room 114s) goto 0x000490
0x000440:
    if (== self.room 116s) goto 0x000490
0x000454:
    if (== self.room 134s) goto 0x000490
0x000468:
    if (== self.room 131s) goto 0x000490
0x00047C:
    push (== self.room 128s)
    goto 0x000494
0x000490:
    push 1s
0x000494:
    if !pop goto 0x000578
0x000498:
    push -5s
    if !(== 27s:flag 0s) goto 0x000578
0x0004B4:
    global.msc = 0s
    push 18s
    self.pop = (- -5s 204s:flag)
    if !(< self.pop 0s) goto 0x000500
0x0004F4:
    self.pop = 0s
0x000500:
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x00054C
0x000514:
    stog.msg[0s] = (+ (+ "\\R* " (string[]:int32 self.pop)) " left./%%")
0x00054C:
    if !(<= self.pop 0s) goto 0x000578
0x000560:
    stog.msg[0s] = "* Determination./%%"
0x000578:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0005A8
0x00058C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0005AC
0x0005A8:
    push 0s
0x0005AC:
    if !pop goto 0x000738
0x0005B0:
    if (== self.room 139s) goto 0x000650
0x0005C4:
    if (== self.room 145s) goto 0x000650
0x0005D8:
    if (== self.room 155s) goto 0x000650
0x0005EC:
    if (== self.room 164s) goto 0x000650
0x000600:
    if (== self.room 176s) goto 0x000650
0x000614:
    if (== self.room 183s) goto 0x000650
0x000628:
    if (== self.room 196s) goto 0x000650
0x00063C:
    push (== self.room 210s)
    goto 0x000654
0x000650:
    push 1s
0x000654:
    if !pop goto 0x000738
0x000658:
    push -5s
    if !(== 27s:flag 0s) goto 0x000738
0x000674:
    global.msc = 0s
    push 40s
    self.pop = (- -5s 205s:flag)
    if !(< self.pop 0s) goto 0x0006C0
0x0006B4:
    self.pop = 0s
0x0006C0:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00070C
0x0006D4:
    stog.msg[0s] = (+ (+ "\\R* " (string[]:int32 self.pop)) " left./%%")
0x00070C:
    if !(<= self.pop 0s) goto 0x000738
0x000720:
    stog.msg[0s] = "* Determination./%%"
0x000738:
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000770
0x00074C:
    global.msc = 0s
    stog.msg[0s] = "* Determination./%%"
0x000770:
    if !(== self.offroom 0s) goto 0x0007AC
0x000784:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0007AC:
    exit
