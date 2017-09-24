0x000000:
    stog.msg[0s] = "Hot!!!&Error."
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 110s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000B0
0x00009C:
    push (< self.mycommand 25s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "Burn,&baby,&BURN!"
0x0000D0:
    if !(>= self.mycommand 25s) goto 0x0000F8
0x0000E4:
    push (< self.mycommand 50s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x000118
0x000100:
    stog.msg[0s] = "Hot&enough&for&ya!?"
0x000118:
    if !(>= self.mycommand 50s) goto 0x000140
0x00012C:
    push (< self.mycommand 75s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x000160
0x000148:
    stog.msg[0s] = "Feel&the&heat."
0x000160:
    if !(>= self.mycommand 75s) goto 0x000188
0x000174:
    push (< self.mycommand 100s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001A8
0x000190:
    stog.msg[0s] = "Is it&cold in&here?"
0x0001A8:
    if !(== self.whatiheard 1s) goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "Hot!!&HOT!!&Hotter!&HOTTER!!"
0x0001D4:
    if !(== self.whatiheard 3s) goto 0x000200
0x0001E8:
    stog.msg[0s] = "BRRRR!&What's&the&deal!?"
0x000200:
    if !(== self.whatiheard 4s) goto 0x00022C
0x000214:
    stog.msg[0s] = "Sorry!!&I'm all&tied&up!!"
0x00022C:
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
0x00033C:
    exit
