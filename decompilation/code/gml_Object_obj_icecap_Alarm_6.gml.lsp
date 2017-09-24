0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.ystart (- (+ self.x self.sprite_width) 8s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(>= self.mycommand 0s) goto 0x0000A4
0x000090:
    push (< self.mycommand 20s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000C4
0x0000AC:
    stog.msg[0s] = "Where's&YOUR&hat?"
0x0000C4:
    if !(>= self.mycommand 20s) goto 0x0000EC
0x0000D8:
    push (< self.mycommand 40s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x00010C
0x0000F4:
    stog.msg[0s] = "Your&head&looks so&...NAKED"
0x00010C:
    if !(>= self.mycommand 40s) goto 0x000134
0x000120:
    push (< self.mycommand 60s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000154
0x00013C:
    stog.msg[0s] = "What a&great&hat!&(Mine)"
0x000154:
    if !(>= self.mycommand 60s) goto 0x00017C
0x000168:
    push (<= self.mycommand 80s)
    goto 0x000180
0x00017C:
    push 0s
0x000180:
    if !pop goto 0x00019C
0x000184:
    stog.msg[0s] = "Snow?&No! It's&hat&residue."
0x00019C:
    if !(>= self.mycommand 80s) goto 0x0001C4
0x0001B0:
    push (<= self.mycommand 100s)
    goto 0x0001C8
0x0001C4:
    push 0s
0x0001C8:
    if !pop goto 0x0001E4
0x0001CC:
    stog.msg[0s] = "I just&looove&my hat.&OK?"
0x0001E4:
    if !(== self.whatiheard 1s) goto 0x00033C
0x0001F8:
    if !(> self.ignore 0s) goto 0x0002A8
0x00020C:
    if !(== self.gg 0s) goto 0x000238
0x000220:
    stog.msg[0s] = "Fine!!!&I don't&care!!!"
0x000238:
    if !(== self.gg 1s) goto 0x000264
0x00024C:
    stog.msg[0s] = "OK!&I'll&ignore&you too."
0x000264:
    if !(== self.gg 2s) goto 0x000290
0x000278:
    stog.msg[0s] = "Better&a hatter&than a&HATER."
0x000290:
    self.ignore = 2s
    self.mercymod = 300s
0x0002A8:
    if !(== self.ignore 0s) goto 0x00033C
0x0002BC:
    if (== self.gg 0s) goto 0x0002E4
0x0002D0:
    push (== self.gg 1s)
    goto 0x0002E8
0x0002E4:
    push 1s
0x0002E8:
    if !pop goto 0x000304
0x0002EC:
    stog.msg[0s] = "HELLO???&My hat's&up here."
0x000304:
    if !(== self.gg 2s) goto 0x000330
0x000318:
    stog.msg[0s] = "What?&What are&you&doing?"
0x000330:
    self.ignore = 1s
0x00033C:
    if !(== self.whatiheard 3s) goto 0x0003D4
0x000350:
    if !(== self.gg 0s) goto 0x00037C
0x000364:
    stog.msg[0s] = "DUH!&Who&DOESN'T&know?"
0x00037C:
    if !(== self.gg 1s) goto 0x0003A8
0x000390:
    stog.msg[0s] = "Envious?&TOO BAD!"
0x0003A8:
    if !(== self.gg 2s) goto 0x0003D4
0x0003BC:
    stog.msg[0s] = "My hat's&too loud&for me to&hear you."
0x0003D4:
    if !(== self.whatiheard 4s) goto 0x00045C
0x0003E8:
    if !(== self.gg 0s) goto 0x000414
0x0003FC:
    stog.msg[0s] = "I KNEW&IT!!!&THIEF!!"
0x000414:
    if (== self.gg 1s) goto 0x00043C
0x000428:
    push (== self.gg 2s)
    goto 0x000440
0x00043C:
    push 1s
0x000440:
    if !pop goto 0x00045C
0x000444:
    stog.msg[0s] = "HELP!!!&FASHION&POLICE!!"
0x00045C:
    if !(== self.whatiheard 20s) goto 0x000500
0x000470:
    if !(== self.gg 0s) goto 0x00049C
0x000484:
    stog.msg[0s] = "Haha!&That was&ACTUALLY&funny!"
0x00049C:
    if !(== self.gg 1s) goto 0x0004C8
0x0004B0:
    stog.msg[0s] = "Ha!&Imitated&it spot-&on!"
0x0004C8:
    if !(== self.gg 2s) goto 0x0004F4
0x0004DC:
    stog.msg[0s] = "That's&the best&one in&a while!"
0x0004F4:
    self.mercymod = 200s
0x000500:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 3s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000610:
    exit
