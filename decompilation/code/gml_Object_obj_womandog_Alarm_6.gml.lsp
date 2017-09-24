0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 52s) (+ self.x 224s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "(...)"
    if !(bool (instance_exists[]:int32 (var 245s))) goto 0x000234
0x0000A8:
    self.m = 245s
    if !(>= (int32 self.m):mycommand 0s) goto 0x0000F4
0x0000D4:
    push (< (int32 self.m):mycommand 25s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000114
0x0000FC:
    stog.msg[0s] = "(Don't,&actually&...)"
0x000114:
    if !(>= (int32 self.m):mycommand 25s) goto 0x000154
0x000134:
    push (< (int32 self.m):mycommand 50s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000174
0x00015C:
    stog.msg[0s] = "(He&means&me.)"
0x000174:
    if !(>= (int32 self.m):mycommand 50s) goto 0x0001B4
0x000194:
    push (< (int32 self.m):mycommand 75s)
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "(Of&course&we were&second.)"
0x0001D4:
    if !(>= (int32 self.m):mycommand 75s) goto 0x000214
0x0001F4:
    push (<= (int32 self.m):mycommand 100s)
    goto 0x000218
0x000214:
    push 0s
0x000218:
    if !pop goto 0x000234
0x00021C:
    stog.msg[0s] = "(Do&humans&have&tails?)"
0x000234:
    if !(bool (instance_exists[]:int32 (var 245s))) goto 0x000388
0x00024C:
    if (== self.whatiheard 1s) goto 0x000274
0x000260:
    push (== 245.whatiheard 1s)
    goto 0x000278
0x000274:
    push 1s
0x000278:
    if !pop goto 0x0002C0
0x00027C:
    stog.msg[0s] = "(Smell&mystery)"
    if !(> self.smell 0s) goto 0x0002C0
0x0002A8:
    stog.msg[0s] = "(Are you&actually&a little&puppy!?)"
0x0002C0:
    if !(== self.whatiheard 3s) goto 0x00031C
0x0002D4:
    if !(< self.smell 2s) goto 0x000304
0x0002E8:
    stog.msg[0s] = "(Beware&of&dog.)"
    goto 0x00031C
0x000304:
    stog.msg[0s] = "(A dog&that pets&dogs...&Amazing!)"
0x00031C:
    if !(== 245.whatiheard 3s) goto 0x000388
0x000330:
    if !(< self.smell 2s) goto 0x00035C
0x000344:
    stog.msg[0s] = "(That's&not your&husband,&OK?)"
0x00035C:
    if !(>= self.smell 2s) goto 0x000388
0x000370:
    stog.msg[0s] = "(Well.&Don't&leave me&out!)"
0x000388:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000448
0x00039C:
    self.mercymod = -1000s
    if !(< self.mycommand 33s) goto 0x0003D4
0x0003BC:
    stog.msg[0s] = "(Misery&awaits&you.)"
0x0003D4:
    if !(>= self.mycommand 33s) goto 0x000400
0x0003E8:
    stog.msg[0s] = "(Kneel&and&suffer!)"
0x000400:
    if !(>= self.mycommand 66s) goto 0x00042C
0x000414:
    stog.msg[0s] = "(I'll&chop you&in&half!)"
0x00042C:
    stog.monsterdef[(int32 self.myself)] = -8s
0x000448:
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
0x000558:
    exit
