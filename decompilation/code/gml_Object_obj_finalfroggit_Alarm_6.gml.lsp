0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 20s) (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000A0
0x00008C:
    push (< self.mycommand 30s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000C0
0x0000A8:
    stog.msg[0s] = "Robbit,&robbit."
0x0000C0:
    if !(>= self.mycommand 30s) goto 0x0000E8
0x0000D4:
    push (< self.mycommand 50s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x000108
0x0000F0:
    stog.msg[0s] = "Creak,&creak."
0x000108:
    if !(>= self.mycommand 50s) goto 0x000130
0x00011C:
    push (< self.mycommand 80s)
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x000150
0x000138:
    stog.msg[0s] = "Skip,&jump."
0x000150:
    if !(>= self.mycommand 80s) goto 0x000178
0x000164:
    push (<= self.mycommand 100s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x000198
0x000180:
    stog.msg[0s] = "Woof."
0x000198:
    if !(== self.whatiheard 1s) goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "Shudder,&shudder."
0x0001C4:
    if !(== self.whatiheard 3s) goto 0x0001F0
0x0001D8:
    stog.msg[0s] = "Nod,&nod."
0x0001F0:
    if !(== self.whatiheard 4s) goto 0x00021C
0x000204:
    stog.msg[0s] = "(Thought&-ful&croak)"
0x00021C:
    if !(== self.impress 1s) goto 0x000248
0x000230:
    stog.msg[0s] = "(Impress&-ed&ribbit)"
0x000248:
    self.impress = 0s
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
0x000364:
    exit
