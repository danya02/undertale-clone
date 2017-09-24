0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 52s) (+ self.x 205s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Error!!"
    if !(>= self.mycommand 0s) goto 0x0000B8
0x0000A4:
    push (< self.mycommand 20s)
    goto 0x0000BC
0x0000B8:
    push 0s
0x0000BC:
    if !pop goto 0x0000D8
0x0000C0:
    stog.msg[0s] = "Is this&funny to&you?"
0x0000D8:
    if !(>= self.mycommand 20s) goto 0x000100
0x0000EC:
    push (< self.mycommand 40s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000120
0x000108:
    stog.msg[0s] = "Don't&put any&more on&me!"
0x000120:
    if !(>= self.mycommand 40s) goto 0x000148
0x000134:
    push (< self.mycommand 60s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x000168
0x000150:
    stog.msg[0s] = "Leave me&alone..."
0x000168:
    if !(>= self.mycommand 60s) goto 0x000190
0x00017C:
    push (<= self.mycommand 80s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001B0
0x000198:
    stog.msg[0s] = "Hohoho!&Go ahead&and&laugh..."
0x0001B0:
    if !(>= self.mycommand 80s) goto 0x0001D8
0x0001C4:
    push (<= self.mycommand 100s)
    goto 0x0001DC
0x0001D8:
    push 0s
0x0001DC:
    if !pop goto 0x0001F8
0x0001E0:
    stog.msg[0s] = "Get this&off of&me..."
0x0001F8:
    if !(> self.mercymod 90s) goto 0x000240
0x00020C:
    stog.msg[0s] = "Thanks."
    stog.monsterdef[(int32 self.myself)] = -100s
0x000240:
    if !(== self.whatiheard 4s) goto 0x000330
0x000254:
    if !(== self.giftgiven 1s) goto 0x000280
0x000268:
    stog.msg[0s] = "Aw, you&shouldn'&have..."
0x000280:
    if !(== self.giftgiven 2s) goto 0x0002AC
0x000294:
    stog.msg[0s] = "You even&wrapped&it..."
0x0002AC:
    if !(== self.googly 1s) goto 0x0002D8
0x0002C0:
    stog.msg[0s] = "Keep&away&from me!"
0x0002D8:
    if !(== self.betray 1s) goto 0x000304
0x0002EC:
    stog.msg[0s] = "I don't&want&your&gift!"
0x000304:
    if !(== self.itemgone 0s) goto 0x000330
0x000318:
    stog.msg[0s] = "How do&I know&it's not&a trick?"
0x000330:
    if !(== self.whatiheard 3s) goto 0x0003D0
0x000344:
    stog.flag[74s] = 1s
    stog.msg[0s] = "GOSHDARN&TEENAGE&GOOGLY&EYES!!!"
    if (> self.itemgone 0s) goto 0x000398
0x000384:
    push (> self.giftgiven 0s)
    goto 0x00039C
0x000398:
    push 1s
0x00039C:
    if !pop goto 0x0003C4
0x0003A0:
    stog.msg[0s] = "I WAS&STARTING&TO TRUST&YOU!!!"
    self.betray = 1s
0x0003C4:
    self.mercymod = -20s
0x0003D0:
    if !(== self.whatiheard 1s) goto 0x0004D8
0x0003E4:
    if (== self.itemgone 1s) goto 0x00040C
0x0003F8:
    push (== self.itemgone 2s)
    goto 0x000410
0x00040C:
    push 1s
0x000410:
    if !pop goto 0x000438
0x000414:
    self.mercymod = 10s
    stog.msg[0s] = "That's&a little&better."
0x000438:
    if !(> self.mercymod 170s) goto 0x000468
0x00044C:
    stog.msg[0s] = "Er...&Those&are&real."
    goto 0x0004A0
0x000468:
    if !(== self.itemgone 3s) goto 0x0004A0
0x00047C:
    self.mercymod = 200s
    stog.msg[0s] = "A weight&has been&lifted."
0x0004A0:
    if !(== self.ung 1s) goto 0x0004CC
0x0004B4:
    stog.msg[0s] = "Thanks&for&nothing!"
0x0004CC:
    self.ung = 0s
0x0004D8:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0005E8:
    exit
