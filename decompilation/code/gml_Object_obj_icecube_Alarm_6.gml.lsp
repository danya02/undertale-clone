0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.ystart 50s) (- (+ self.x self.sprite_width) 8s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(>= self.mycommand 0s) goto 0x0000AC
0x000098:
    push (< self.mycommand 25s)
    goto 0x0000B0
0x0000AC:
    push 0s
0x0000B0:
    if !pop goto 0x0000CC
0x0000B4:
    stog.msg[0s] = "I...&I..."
0x0000CC:
    if !(>= self.mycommand 25s) goto 0x0000F4
0x0000E0:
    push (< self.mycommand 50s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000114
0x0000FC:
    stog.msg[0s] = "What can&I say..."
0x000114:
    if !(>= self.mycommand 50s) goto 0x00013C
0x000128:
    push (< self.mycommand 75s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x00015C
0x000144:
    stog.msg[0s] = "What's&the&point..."
0x00015C:
    if !(>= self.mycommand 75s) goto 0x000184
0x000170:
    push (<= self.mycommand 101s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A4
0x00018C:
    stog.msg[0s] = "So...&Cold..."
0x0001A4:
    if !(== self.happy 1s) goto 0x0002D8
0x0001B8:
    if !(>= self.mycommand 0s) goto 0x0001E0
0x0001CC:
    push (< self.mycommand 25s)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x000200
0x0001E8:
    stog.msg[0s] = "Yeah...&I like&my hair&too."
0x000200:
    if !(>= self.mycommand 25s) goto 0x000228
0x000214:
    push (< self.mycommand 50s)
    goto 0x00022C
0x000228:
    push 0s
0x00022C:
    if !pop goto 0x000248
0x000230:
    stog.msg[0s] = "Hmm...&Hats are&for&posers."
0x000248:
    if !(>= self.mycommand 50s) goto 0x000270
0x00025C:
    push (< self.mycommand 75s)
    goto 0x000274
0x000270:
    push 0s
0x000274:
    if !pop goto 0x000290
0x000278:
    stog.msg[0s] = "So I can&still&impress&you?"
0x000290:
    if !(>= self.mycommand 75s) goto 0x0002B8
0x0002A4:
    push (<= self.mycommand 101s)
    goto 0x0002BC
0x0002B8:
    push 0s
0x0002BC:
    if !pop goto 0x0002D8
0x0002C0:
    stog.msg[0s] = "I wanted&you to&see me&as cool."
0x0002D8:
    if !(== self.whatiheard 20s) goto 0x00037C
0x0002EC:
    if !(== self.gg 0s) goto 0x000318
0x000300:
    stog.msg[0s] = "Haha!&That was&ACTUALLY&funny!"
0x000318:
    if !(== self.gg 1s) goto 0x000344
0x00032C:
    stog.msg[0s] = "Ha!&Imitated&it spot-&on!"
0x000344:
    if !(== self.gg 2s) goto 0x000370
0x000358:
    stog.msg[0s] = "That's&the best&one in&a while!"
0x000370:
    self.mercymod = 200s
0x00037C:
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
0x00048C:
    exit
