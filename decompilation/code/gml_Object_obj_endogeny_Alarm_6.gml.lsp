0x000000:
    if !(> self.mycommand 50s) goto 0x000024
0x000014:
    self.mycommand = 0s
    goto 0x000030
0x000024:
    self.mycommand = 90s
0x000030:
    global.border = 5s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0000CC:
    exit
