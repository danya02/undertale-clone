0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.y 10s) (+ self.x 100s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000A4
0x00008C:
    stog.msg[0s] = "Hisssss"
0x0000A4:
    if !(>= self.mycommand 25s) goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "Hisssss"
0x0000D0:
    if !(>= self.mycommand 50s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "Hisssss"
0x0000FC:
    if !(>= self.mycommand 75s) goto 0x000128
0x000110:
    stog.msg[0s] = "Herssss"
0x000128:
    if !(== self.ate 1s) goto 0x000154
0x00013C:
    stog.msg[0s] = "Ate&Your&Green&Snakes"
0x000154:
    if !(== self.whatiheard 3s) goto 0x000180
0x000168:
    stog.msg[0s] = "Don't&Be Rude"
0x000180:
    if !(== self.whatiheard 4s) goto 0x0001AC
0x000194:
    stog.msg[0s] = "Eat Your&Green&Tasty&Snakes"
0x0001AC:
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
0x0002BC:
    exit
