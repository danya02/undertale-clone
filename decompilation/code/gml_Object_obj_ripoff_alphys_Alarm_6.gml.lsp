0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 110s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = "Default"
    if !(== self.talkt 0s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "You hate&me^1,&don't&you...?"
0x0000B4:
    if !(== self.talkt 1s) goto 0x0000E0
0x0000C8:
    stog.msg[0s] = "I've got&to keep&lying..."
0x0000E0:
    if !(== self.talkt 2s) goto 0x00010C
0x0000F4:
    stog.msg[0s] = "All I do&is hurt&people."
0x00010C:
    if !(== self.talkt 2s) goto 0x00012C
0x000120:
    self.talkt = 0s
0x00012C:
    if !(== self.talkt 1s) goto 0x00014C
0x000140:
    self.talkt = 2s
0x00014C:
    if !(== self.talkt 0s) goto 0x00016C
0x000160:
    self.talkt = 1s
0x00016C:
    if !(== self.turns 0s) goto 0x000190
0x000180:
    self.turns = 1s
    goto 0x00019C
0x000190:
    self.turns = 0s
0x00019C:
    stog.msg[1s] = "%%%"
    global.typer = 74s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 22s))
    global.border = 24s
    if !(== self.turns 0s) goto 0x00023C
0x000230:
    global.border = 26s
0x00023C:
    if !(== self.turns 1s) goto 0x00025C
0x000250:
    global.border = 24s
0x00025C:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0002EC:
    exit
