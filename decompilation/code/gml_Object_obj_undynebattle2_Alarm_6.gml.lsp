0x000000:
    self.blcon = (instance_create[]:int32 (var 187s) self.blcony self.blconx)
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "..."
    if !(== self.turnt 0s) goto 0x0000AC
0x000094:
    stog.msg[0s] = "Show me what&you've got!"
0x0000AC:
    if !(== self.turnt 1s) goto 0x0000D8
0x0000C0:
    stog.msg[0s] = "Do your worst!"
0x0000D8:
    if !(== self.turnt 2s) goto 0x000104
0x0000EC:
    stog.msg[0s] = "What's the&matter, scared?"
0x000104:
    if !(== self.turnt 3s) goto 0x000130
0x000118:
    stog.msg[0s] = "\\E6What the hell&is the holdup?"
0x000130:
    if !(== self.turnt 4s) goto 0x00015C
0x000144:
    stog.msg[0s] = "COME ON ALREADY!"
0x00015C:
    if !(== self.turnt 5s) goto 0x000188
0x000170:
    stog.msg[0s] = "IT'S GETTING&HOT IN HERE!"
0x000188:
    self.turnt = (+ self.turnt 1s)
    stog.msg[1s] = "%%%"
    global.typer = 41s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    global.border = 17s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0002B0:
    exit
