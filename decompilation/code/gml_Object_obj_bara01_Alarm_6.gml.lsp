0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ (+ self.y 55s) 32s) (+ (+ self.x 165s) 28s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000B0
0x00009C:
    push (< self.mycommand 25s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "Like,&give us&the soul&brah."
0x0000D0:
    if !(>= self.mycommand 25s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "Like,&\"you're&dead\"&and all."
0x0000FC:
    if !(>= self.mycommand 50s) goto 0x000128
0x000110:
    stog.msg[0s] = "Like,&prepare&to die,&right?"
0x000128:
    if !(>= self.mycommand 75s) goto 0x000154
0x00013C:
    stog.msg[0s] = "Like,&perish&and&stuff."
0x000154:
    if !(== self.shake 1s) goto 0x000180
0x000168:
    stog.msg[0s] = "D...&Dude..."
0x000180:
    if !(== self.turn0 0s) goto 0x0001AC
0x000194:
    stog.msg[0s] = "Like,&team&attack!"
0x0001AC:
    self.turn0 = 1s
    if !(== self.whatiheard 3s) goto 0x000210
0x0001CC:
    stog.msg[0s] = "Like...&what?&I don't&get it."
    if !(== self.toldhim 1s) goto 0x000210
0x0001F8:
    stog.msg[0s] = "I...&I..."
0x000210:
    if !(== self.whatiheard 1s) goto 0x00023C
0x000224:
    stog.msg[0s] = "Like,&hands&off the&merch."
0x00023C:
    if !(== self.whatiheard 12s) goto 0x000268
0x000250:
    stog.msg[0s] = "H-HEY,&STOP&THAT!!"
0x000268:
    self.pop = (scr_monstersum[]:int32 )
    if !(< self.pop 2s) goto 0x000404
0x00028C:
    if !(>= self.mycommand 0s) goto 0x0002B4
0x0002A0:
    push (< self.mycommand 25s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x0002D4
0x0002BC:
    stog.msg[0s] = "02...&this is,&like,&for you."
0x0002D4:
    if !(>= self.mycommand 25s) goto 0x000300
0x0002E8:
    stog.msg[0s] = "Like,&02..."
0x000300:
    if !(>= self.mycommand 50s) goto 0x00032C
0x000314:
    stog.msg[0s] = "02...&are you&really.."
0x00032C:
    if !(>= self.mycommand 75s) goto 0x000358
0x000340:
    stog.msg[0s] = "..."
0x000358:
    if !(== self.freshdeath 0s) goto 0x000380
0x00036C:
    push (< self.mercymod 1s)
    goto 0x000384
0x000380:
    push 0s
0x000384:
    if !pop goto 0x0003A0
0x000388:
    stog.msg[0s] = "02...&I never&told&him..."
0x0003A0:
    if !(== self.freshdeath 0s) goto 0x0003C8
0x0003B4:
    push (> self.mercymod 100s)
    goto 0x0003CC
0x0003C8:
    push 0s
0x0003CC:
    if !pop goto 0x0003E8
0x0003D0:
    stog.msg[0s] = "02!?&B-but&why!?"
0x0003E8:
    self.freshdeath = 1s
    self.mercymod = -99999
0x000404:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 15s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000514:
    exit
