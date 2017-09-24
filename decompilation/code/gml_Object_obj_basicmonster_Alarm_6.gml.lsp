0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Default"
    if !(< self.mycommand 75s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "No 2"
0x0000B4:
    if !(< self.mycommand 50s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "No 3"
0x0000E0:
    if !(< self.mycommand 25s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "No 4"
0x00010C:
    if !(== self.whatiheard 1s) goto 0x000138
0x000120:
    stog.msg[0s] = "Action1"
0x000138:
    if !(== self.whatiheard 3s) goto 0x000164
0x00014C:
    stog.msg[0s] = "Action2"
0x000164:
    if !(== self.whatiheard 4s) goto 0x000190
0x000178:
    stog.msg[0s] = "Action3"
0x000190:
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
0x0002A0:
    exit
