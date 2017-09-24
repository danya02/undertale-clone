0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 155s))
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
    stog.msg[0s] = "It's not&like I&LIKE&you."
0x0000C0:
    if !(>= self.mycommand 25s) goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "Id...&Idiot!"
0x0000EC:
    if !(>= self.mycommand 50s) goto 0x000118
0x000100:
    stog.msg[0s] = "Hmph!&Don't&get in&my way."
0x000118:
    if !(>= self.mycommand 75s) goto 0x000144
0x00012C:
    stog.msg[0s] = ">_<...&Human&..."
0x000144:
    if !(>= self.graze 5s) goto 0x0001CC
0x000158:
    if !(>= self.mycommand 0s) goto 0x000180
0x00016C:
    push (< self.mycommand 50s)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0001A0
0x000188:
    stog.msg[0s] = "...&H-human&...&...?"
0x0001A0:
    if !(>= self.mycommand 50s) goto 0x0001CC
0x0001B4:
    stog.msg[0s] = "Id...&Idiot!"
0x0001CC:
    if !(== self.whatiheard 1s) goto 0x000224
0x0001E0:
    stog.msg[0s] = "Eeeeh?&H-human&...?"
    if !(>= self.graze 5s) goto 0x000224
0x00020C:
    stog.msg[0s] = "Human,&I..."
0x000224:
    if !(== self.whatiheard 3s) goto 0x00027C
0x000238:
    stog.msg[0s] = "Huh!?&Y-you&sicko!"
    if !(>= self.graze 5s) goto 0x00027C
0x000264:
    stog.msg[0s] = "Ah...&Is that&true...?"
0x00027C:
    if !(== self.whatiheard 9s) goto 0x0002D4
0x000290:
    stog.msg[0s] = "No way!&Why&would I&like YOU"
    if !(>= self.graze 5s) goto 0x0002D4
0x0002BC:
    stog.msg[0s] = "Human,&I..."
0x0002D4:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    global.border = 17s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0003E4:
    exit
