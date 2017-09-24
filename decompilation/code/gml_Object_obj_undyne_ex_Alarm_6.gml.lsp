0x000000:
    self.blcontype = 0s
    self.uncancel = 0s
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(> self.mycommand 50s) goto 0x000080
0x00006C:
    push (!= 743.sprite_index 39s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x000098
0x000088:
    self.borderspec = 1s
    goto 0x0000A4
0x000098:
    self.borderspec = 0s
0x0000A4:
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    if !(== 743.sprite_index 39s) goto 0x0001AC
0x000154:
    global.border = 13s
    [obj_heart].x = (- (/ self.room_width (double 2s)) 8s)
    [obj_heart].y = (+ 759.y 34s)
    self.greenlock = 1s
    goto 0x00026C
0x0001AC:
    [obj_heart].x = (- (/ self.room_width (double 2s)) 8s)
    [obj_heart].y = (+ 759.y 34s)
    global.border = 31s
    if (== self.orderb 0s) goto 0x00021C
0x000208:
    push (== self.orderb 6s)
    goto 0x000220
0x00021C:
    push 1s
0x000220:
    if !pop goto 0x000230
0x000224:
    global.border = 7s
0x000230:
    if (== self.orderb 1s) goto 0x000258
0x000244:
    push (== self.orderb 7s)
    goto 0x00025C
0x000258:
    push 1s
0x00025C:
    if !pop goto 0x00026C
0x000260:
    global.border = 14s
0x00026C:
    self.damagecause = 0s
0x000278:
    exit
