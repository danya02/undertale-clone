0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 120s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = " sn...& o...& wy..."
    if !(== self.whatiheard 4s) goto 0x0000F4
0x00009C:
    if !(== self.joke 1s) goto 0x0000C8
0x0000B0:
    stog.msg[0s] = " haha...& i...& remem..&  ber..."
0x0000C8:
    if !(== self.joke 2s) goto 0x0000F4
0x0000DC:
    stog.msg[0s] = " haha...& thank...& you..."
0x0000F4:
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
0x000204:
    exit
