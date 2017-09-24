0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 125s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(< self.mycommand 20s) goto 0x00009C
0x000084:
    stog.msg[0s] = "Abra&cadabra."
0x00009C:
    if !(>= self.mycommand 20s) goto 0x0000C8
0x0000B0:
    stog.msg[0s] = "Alakazam&!!"
0x0000C8:
    if !(>= self.mycommand 40s) goto 0x0000F4
0x0000DC:
    stog.msg[0s] = "Tinkle&tinkle&hoy."
0x0000F4:
    if !(>= self.mycommand 60s) goto 0x000120
0x000108:
    stog.msg[0s] = "Hocus&pocus."
0x000120:
    if !(>= self.mycommand 80s) goto 0x00014C
0x000134:
    stog.msg[0s] = "Please&and&thank&you."
0x00014C:
    if !(== self.mercymod 300s) goto 0x000184
0x000160:
    self.mercymod = 299s
    stog.msg[0s] = "Ah^1!&A fellow&wizard!"
0x000184:
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
0x000294:
    exit
