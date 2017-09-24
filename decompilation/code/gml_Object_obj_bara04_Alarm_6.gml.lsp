0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 55s) (+ self.x 165s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000A0
0x00008C:
    push (< self.mycommand 25s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000C0
0x0000A8:
    stog.msg[0s] = "Hmph,&try not&to mess&this up."
0x0000C0:
    if !(>= self.mycommand 25s) goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "I'll&take you&down&alone!"
0x0000EC:
    if !(>= self.mycommand 50s) goto 0x000118
0x000100:
    stog.msg[0s] = "Sigh...&team&attack,&I guess."
0x000118:
    if !(>= self.mycommand 75s) goto 0x000144
0x00012C:
    stog.msg[0s] = "I'm a&one&woman&army."
0x000144:
    if !(== self.shake 1s) goto 0x000170
0x000158:
    stog.msg[0s] = "D...&Dude..."
0x000170:
    if !(== self.whatiheard 3s) goto 0x0001C8
0x000184:
    stog.msg[0s] = "What&are you&talking&about?"
    if !(== self.toldhim 1s) goto 0x0001C8
0x0001B0:
    stog.msg[0s] = "My...&glove..."
0x0001C8:
    if !(== self.whatiheard 1s) goto 0x000220
0x0001DC:
    stog.msg[0s] = "Don't&touch&that!!"
    if !(== self.toldhim 1s) goto 0x000220
0x000208:
    stog.msg[0s] = ",.."
0x000220:
    if !(== self.whatiheard 12s) goto 0x00024C
0x000234:
    stog.msg[0s] = "H-HEY,&STOP&THAT!!"
0x00024C:
    self.pop = (scr_monstersum[]:int32 )
    if !(< self.pop 2s) goto 0x0003E8
0x000270:
    if !(>= self.mycommand 0s) goto 0x000298
0x000284:
    push (< self.mycommand 25s)
    goto 0x00029C
0x000298:
    push 0s
0x00029C:
    if !pop goto 0x0002B8
0x0002A0:
    stog.msg[0s] = "03!&I didn't&want&this..."
0x0002B8:
    if !(>= self.mycommand 25s) goto 0x0002E4
0x0002CC:
    stog.msg[0s] = "03...&03..."
0x0002E4:
    if !(>= self.mycommand 50s) goto 0x000310
0x0002F8:
    stog.msg[0s] = "03...&answer&me..."
0x000310:
    if !(>= self.mycommand 75s) goto 0x00033C
0x000324:
    stog.msg[0s] = "..."
0x00033C:
    if !(== self.freshdeath 0s) goto 0x000364
0x000350:
    push (< self.mercymod 1s)
    goto 0x000368
0x000364:
    push 0s
0x000368:
    if !pop goto 0x000384
0x00036C:
    stog.msg[0s] = "03!&I never&said&sorry..."
0x000384:
    if !(== self.freshdeath 0s) goto 0x0003AC
0x000398:
    push (> self.mercymod 100s)
    goto 0x0003B0
0x0003AC:
    push 0s
0x0003B0:
    if !pop goto 0x0003CC
0x0003B4:
    stog.msg[0s] = "03...!?&Why,&you..."
0x0003CC:
    self.freshdeath = 1s
    self.mercymod = -99999
0x0003E8:
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
0x0004F8:
    exit
