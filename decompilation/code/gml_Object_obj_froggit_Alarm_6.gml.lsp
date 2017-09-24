0x000000:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x self.sprite_width))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x00007C
0x000068:
    push (< self.mycommand 30s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x00009C
0x000084:
    stog.msg[0s] = "Ribbit,&ribbit."
0x00009C:
    if !(>= self.mycommand 30s) goto 0x0000C4
0x0000B0:
    push (< self.mycommand 50s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x0000E4
0x0000CC:
    stog.msg[0s] = "Croak,&croak."
0x0000E4:
    if !(>= self.mycommand 50s) goto 0x00010C
0x0000F8:
    push (< self.mycommand 80s)
    goto 0x000110
0x00010C:
    push 0s
0x000110:
    if !pop goto 0x00012C
0x000114:
    stog.msg[0s] = "Hop,&hop."
0x00012C:
    if !(>= self.mycommand 80s) goto 0x000154
0x000140:
    push (<= self.mycommand 100s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000174
0x00015C:
    stog.msg[0s] = "Meow."
0x000174:
    if !(== self.whatiheard 3s) goto 0x0001B4
0x000188:
    stog.msg[0s] = "(Blushes&deeply.)&Ribbit.."
    stog.alarm[5s] = 108s
0x0001B4:
    if !(== self.whatiheard 1s) goto 0x0001E0
0x0001C8:
    stog.msg[0s] = "Shiver,&shiver."
0x0001E0:
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
0x0002F0:
    exit
