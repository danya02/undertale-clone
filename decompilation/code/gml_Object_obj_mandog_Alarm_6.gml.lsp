0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 52s) (- self.x 123s))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000B8
0x0000A4:
    push (< self.mycommand 25s)
    goto 0x0000BC
0x0000B8:
    push 0s
0x0000BC:
    if !pop goto 0x0000D8
0x0000C0:
    stog.msg[0s] = "Take my&wife...&'s fleas."
0x0000D8:
    if !(>= self.mycommand 25s) goto 0x000100
0x0000EC:
    push (< self.mycommand 50s)
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000120
0x000108:
    stog.msg[0s] = "Don't&touch my&hot dog."
0x000120:
    if !(>= self.mycommand 50s) goto 0x000148
0x000134:
    push (< self.mycommand 75s)
    goto 0x00014C
0x000148:
    push 0s
0x00014C:
    if !pop goto 0x000168
0x000150:
    stog.msg[0s] = "No. 2&Nuzzle&Champs&'98!!"
0x000168:
    if !(>= self.mycommand 75s) goto 0x000190
0x00017C:
    push (<= self.mycommand 100s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001B0
0x000198:
    stog.msg[0s] = "Let's&kick&human&tail!!"
0x0001B0:
    if !(bool (instance_exists[]:int32 (var 246s))) goto 0x000304
0x0001C8:
    if (== self.whatiheard 1s) goto 0x0001F0
0x0001DC:
    push (== 246.whatiheard 1s)
    goto 0x0001F4
0x0001F0:
    push 1s
0x0001F4:
    if !pop goto 0x00023C
0x0001F8:
    stog.msg[0s] = "Hm?&What's&that&smell?"
    if !(> self.smell 0s) goto 0x00023C
0x000224:
    stog.msg[0s] = "What!&Smells&like a&..."
0x00023C:
    if !(== self.whatiheard 3s) goto 0x000298
0x000250:
    if !(< self.smell 2s) goto 0x000280
0x000264:
    stog.msg[0s] = "Paws off&you&smelly&human."
    goto 0x000298
0x000280:
    stog.msg[0s] = "Wow!!!&Pet by&another&pup!!!"
0x000298:
    if !(== 246.whatiheard 3s) goto 0x000304
0x0002AC:
    if !(< self.smell 2s) goto 0x0002D8
0x0002C0:
    stog.msg[0s] = "Stop!&Don't&touch&her!"
0x0002D8:
    if !(>= self.smell 2s) goto 0x000304
0x0002EC:
    stog.msg[0s] = "What&about&me......&........"
0x000304:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x000388
0x000318:
    stog.monsterdef[(int32 self.myself)] = -30s
    self.mercymod = -1000s
    if !(< self.mycommand 50s) goto 0x000370
0x000354:
    stog.msg[0s] = "Whine."
    goto 0x000388
0x000370:
    stog.msg[0s] = "Whimper."
0x000388:
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
0x000498:
    exit
