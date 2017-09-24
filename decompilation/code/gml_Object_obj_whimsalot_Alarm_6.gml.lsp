0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x000098
0x000084:
    push (< self.mycommand 30s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000B8
0x0000A0:
    stog.msg[0s] = "No&regrets."
0x0000B8:
    if !(>= self.mycommand 30s) goto 0x0000E0
0x0000CC:
    push (< self.mycommand 50s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000100
0x0000E8:
    stog.msg[0s] = "I've&made my&choice."
0x000100:
    if !(>= self.mycommand 50s) goto 0x000128
0x000114:
    push (< self.mycommand 80s)
    goto 0x00012C
0x000128:
    push 0s
0x00012C:
    if !pop goto 0x000148
0x000130:
    stog.msg[0s] = "Not this&time."
0x000148:
    if !(>= self.mycommand 80s) goto 0x000170
0x00015C:
    push (<= self.mycommand 100s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x000190
0x000178:
    stog.msg[0s] = "*Shine&shine*"
0x000190:
    if !(== self.whatiheard 1s) goto 0x0001BC
0x0001A4:
    stog.msg[0s] = "I'm not&afraid&of you."
0x0001BC:
    if !(== self.whatiheard 3s) goto 0x0001E8
0x0001D0:
    stog.msg[0s] = "I've&made&my&peace."
0x0001E8:
    if !(== self.whatiheard 4s) goto 0x000244
0x0001FC:
    if !(< self.mycommand 50s) goto 0x00022C
0x000210:
    stog.msg[0s] = "Don't&give&up!"
    goto 0x000244
0x00022C:
    stog.msg[0s] = "There's&still&hope."
0x000244:
    if !(== self.impress 1s) goto 0x000270
0x000258:
    stog.msg[0s] = "Courage&..."
0x000270:
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
0x00038C:
    exit
