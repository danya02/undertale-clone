0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(< global.hp global.maxhp) goto 0x0000FC
0x000088:
    if !(>= self.mycommand 0s) goto 0x0000B0
0x00009C:
    push (< self.mycommand 50s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "Ah! I'll&help!&Healing&magmas!"
0x0000D0:
    if !(>= self.mycommand 50s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "You're&hurt!&I'll&help!!!"
0x0000FC:
    if !(>= global.hp global.maxhp) goto 0x000188
0x000114:
    if !(>= self.mycommand 0s) goto 0x00013C
0x000128:
    push (< self.mycommand 50s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x00015C
0x000144:
    stog.msg[0s] = "Thunder!&Helpful&speed&up!!!"
0x00015C:
    if !(>= self.mycommand 50s) goto 0x000188
0x000170:
    stog.msg[0s] = "Speed&will&help&dodge!!"
0x000188:
    if !(> self.criticize 0s) goto 0x000210
0x00019C:
    if !(>= self.mycommand 0s) goto 0x0001C4
0x0001B0:
    push (< self.mycommand 50s)
    goto 0x0001C8
0x0001C4:
    push 0s
0x0001C8:
    if !pop goto 0x0001E4
0x0001CC:
    stog.msg[0s] = "Ahh..."
0x0001E4:
    if !(>= self.mycommand 50s) goto 0x000210
0x0001F8:
    stog.msg[0s] = "Does&not&help..."
0x000210:
    if !(> self.hug 0s) goto 0x000298
0x000224:
    if !(>= self.mycommand 0s) goto 0x00024C
0x000238:
    push (< self.mycommand 50s)
    goto 0x000250
0x00024C:
    push 0s
0x000250:
    if !pop goto 0x00026C
0x000254:
    stog.msg[0s] = "Oh!&Ah!&I'm&helping!"
0x00026C:
    if !(>= self.mycommand 50s) goto 0x000298
0x000280:
    stog.msg[0s] = "Feels&so&warm..."
0x000298:
    if !(> self.encourage 0s) goto 0x000320
0x0002AC:
    if !(>= self.mycommand 0s) goto 0x0002D4
0x0002C0:
    push (< self.mycommand 50s)
    goto 0x0002D8
0x0002D4:
    push 0s
0x0002D8:
    if !pop goto 0x0002F4
0x0002DC:
    stog.msg[0s] = "Ahh!&Tries&the&hardest!"
0x0002F4:
    if !(>= self.mycommand 50s) goto 0x000320
0x000308:
    stog.msg[0s] = "Works&hard!&Works&hot!"
0x000320:
    if !(== self.whatiheard 1s) goto 0x000364
0x000334:
    stog.msg[0s] = "Ahh!&Ahh!&Does&my best!"
    push 389s
    stog.face* = (int32 self.mypart1)
0x000364:
    if !(== self.whatiheard 3s) goto 0x0003D4
0x000378:
    push 391s
    stog.face* = (int32 self.mypart1)
    stog.msg[0s] = "Ahh...&Not...&helping?&OK..."
    if !(== self.criticize 2s) goto 0x0003D4
0x0003BC:
    stog.msg[0s] = "Trash...&rump...&Ahh..."
0x0003D4:
    if !(== self.whatiheard 4s) goto 0x000470
0x0003E8:
    push 390s
    stog.face* = (int32 self.mypart1)
    stog.msg[0s] = "Ahh...&So...&LOVEY!"
    if !(== self.hug 2s) goto 0x000444
0x00042C:
    stog.msg[0s] = "Hug...&continue&..."
0x000444:
    if !(== self.hug 3s) goto 0x000470
0x000458:
    stog.msg[0s] = "Starting&to get&weird."
0x000470:
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
0x000580:
    exit
