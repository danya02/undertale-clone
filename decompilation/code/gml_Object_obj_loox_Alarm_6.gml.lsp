0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.ystart 8s) (- (+ self.x self.sprite_width) 8s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x00008C
0x000078:
    push (< self.mycommand 20s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000AC
0x000094:
    stog.msg[0s] = "I've got&my eye&on you."
0x0000AC:
    if !(>= self.mycommand 20s) goto 0x0000D4
0x0000C0:
    push (< self.mycommand 40s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000F4
0x0000DC:
    stog.msg[0s] = "Don't&point&that&at me."
0x0000F4:
    if !(>= self.mycommand 40s) goto 0x00011C
0x000108:
    push (< self.mycommand 60s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x00013C
0x000124:
    stog.msg[0s] = "Quit&staring&at me."
0x00013C:
    if !(>= self.mycommand 60s) goto 0x000164
0x000150:
    push (<= self.mycommand 80s)
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x000184
0x00016C:
    stog.msg[0s] = "What an&eyesore."
0x000184:
    if !(>= self.mycommand 80s) goto 0x0001AC
0x000198:
    push (<= self.mycommand 100s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x0001CC
0x0001B4:
    stog.msg[0s] = "How&about a&staring&contest?"
0x0001CC:
    if !(== global.turn 0s) goto 0x0001F8
0x0001E0:
    stog.msg[0s] = "Please&don't&pick on&me."
0x0001F8:
    if !(== self.whatiheard 1s) goto 0x000224
0x00020C:
    stog.msg[0s] = "Finally&someone&gets it."
0x000224:
    if !(== self.whatiheard 3s) goto 0x000250
0x000238:
    stog.msg[0s] = "You rude&little&snipe!"
0x000250:
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
0x000360:
    exit
