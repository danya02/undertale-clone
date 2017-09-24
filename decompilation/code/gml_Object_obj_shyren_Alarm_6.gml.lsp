0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 25s) (+ self.x 95s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "....&....&toot&...."
    if !(>= self.mycommand 50s) goto 0x0000BC
0x0000A4:
    stog.msg[0s] = "....&....&hum hum"
0x0000BC:
    if !(== self.encourage 1s) goto 0x0000E8
0x0000D0:
    stog.msg[0s] = "si re,&si re&si mi&si mi"
0x0000E8:
    if !(== self.encourage 2s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "Si Fa&Si Fa&So Fa So&Mi Re Re"
0x000114:
    if !(== self.encourage 3s) goto 0x000140
0x000128:
    stog.msg[0s] = "Mi So&Mi So&Mi Si Mi&La Si So"
0x000140:
    if !(== self.encourage 4s) goto 0x00016C
0x000154:
    stog.msg[0s] = "(agg-&ressive&tooting)"
0x00016C:
    if !(== self.encourage 5s) goto 0x000198
0x000180:
    stog.msg[0s] = "(final&toot)"
0x000198:
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
0x0002A8:
    exit
