0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 55s) (- self.x self.blconx))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.attacked = 0s
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000C8
0x0000B4:
    push (< self.mycommand 25s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x0000E8
0x0000D0:
    stog.msg[0s] = "..."
0x0000E8:
    if !(>= self.mycommand 25s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "..."
0x000114:
    if !(>= self.mycommand 50s) goto 0x000140
0x000128:
    stog.msg[0s] = "...&..."
0x000140:
    if !(>= self.mycommand 75s) goto 0x00016C
0x000154:
    stog.msg[0s] = "..."
0x00016C:
    self.turn0 = 1s
    if !(== self.whatiheard 3s) goto 0x0001A4
0x00018C:
    stog.msg[0s] = "I know,&but..."
0x0001A4:
    if !(== self.whatiheard 1s) goto 0x0001FC
0x0001B8:
    stog.msg[0s] = "Glove...&getting&looser."
    if !(== self.shirtless 1s) goto 0x0001FC
0x0001E4:
    stog.msg[0s] = "Nice&to meet&you???"
0x0001FC:
    self.pop = (scr_monstersum[]:int32 )
    if !(< self.pop 2s) goto 0x000398
0x000220:
    if !(>= self.mycommand 0s) goto 0x000248
0x000234:
    push (< self.mycommand 25s)
    goto 0x00024C
0x000248:
    push 0s
0x00024C:
    if !pop goto 0x000268
0x000250:
    stog.msg[0s] = "..."
0x000268:
    if !(>= self.mycommand 25s) goto 0x000294
0x00027C:
    stog.msg[0s] = "..."
0x000294:
    if !(>= self.mycommand 50s) goto 0x0002C0
0x0002A8:
    stog.msg[0s] = "..."
0x0002C0:
    if !(>= self.mycommand 75s) goto 0x0002EC
0x0002D4:
    stog.msg[0s] = "..."
0x0002EC:
    if !(== self.freshdeath 0s) goto 0x000314
0x000300:
    push (< self.mercymod 1s)
    goto 0x000318
0x000314:
    push 0s
0x000318:
    if !pop goto 0x000334
0x00031C:
    stog.msg[0s] = "04...!!&Why&didn't&I..."
0x000334:
    if !(== self.freshdeath 0s) goto 0x00035C
0x000348:
    push (> self.mercymod 100s)
    goto 0x000360
0x00035C:
    push 0s
0x000360:
    if !pop goto 0x00037C
0x000364:
    stog.msg[0s] = "04!?&You...&YOU...!"
0x00037C:
    self.freshdeath = 1s
    self.mercymod = -99999
0x000398:
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
0x0004A8:
    exit
