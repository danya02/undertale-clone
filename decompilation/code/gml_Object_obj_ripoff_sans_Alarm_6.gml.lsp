0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) (- self.y 40s) (- self.x 110s))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== self.talkt 0s) goto 0x0000BC
0x0000A4:
    stog.msg[0s] = "just&give&up.&i did."
0x0000BC:
    if !(== self.talkt 1s) goto 0x0000E8
0x0000D0:
    stog.msg[0s] = "why&even&try?"
0x0000E8:
    if !(== self.talkt 2s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "you'll&never&see 'em&again."
0x000114:
    if !(== self.talkt 2s) goto 0x000134
0x000128:
    self.talkt = 0s
0x000134:
    if !(== self.talkt 1s) goto 0x000154
0x000148:
    self.talkt = 2s
0x000154:
    if !(== self.talkt 0s) goto 0x000174
0x000168:
    self.talkt = 1s
0x000174:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000278:
    exit
