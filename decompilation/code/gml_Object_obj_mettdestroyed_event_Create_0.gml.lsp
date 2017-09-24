0x000000:
    self.con = 1s
    if !(> global.plot 193s) goto 0x000030
0x000020:
    call (instance_destroy[]:int32 )
    exit
0x000030:
    if !(>= global.plot 192s) goto 0x000230
0x000044:
    self.sl = (instance_create[]:int32 (var 8s) (var 840s) (var 140s))
    self.sl2 = (instance_create[]:int32 (var 8s) (var 710s) (var 145s))
    self.brokemett = (scr_marker[]:int32 (var 1658s) (var 700s) (var 140s))
    pushenv (int32 self.brokemett) 0x0000D8
0x0000CC:
    call (scr_depth[]:int32 )
0x0000D8:
    popenv 0x0000CC
0x0000DC:
    push -5s
    if !(== 425s:flag 0s) goto 0x000160
0x0000F8:
    push 1668s
    stog.sprite_index* = (int32 self.brokemett)
    stog.x* = (+ (int32 self.brokemett):x 6s)
    stog.y* = (- (int32 self.brokemett):y 3s)
0x000160:
    push (int32 self.brokemett)
    push (int32 self.brokemett)
    self.ii = (instance_create[]:int32 (var 1344s) (var 700s) (var 140s))
    self.ii = (instance_create[]:int32 (var 1344s) (var 700s) (var 160s))
    self.al2 = (instance_create[]:int32 (var 1170s) (var 710s) (var 150s))
    push (int32 self.al2):utsprite
    stog.sprite_index* = (int32 self.al2)
    push 1s
    stog.fun* = (int32 self.al2)
    self.con = 587458478547L
    goto 0x0003EC
0x000230:
    self.sl = (instance_create[]:int32 (var 8s) (var 840s) (var 140s))
    self.brokemett = (scr_marker[]:int32 (var 1658s) (var 700s) (var 140s))
    pushenv (int32 self.brokemett) 0x00029C
0x000290:
    call (scr_depth[]:int32 )
0x00029C:
    popenv 0x000290
0x0002A0:
    push -5s
    if !(== 425s:flag 0s) goto 0x000324
0x0002BC:
    push 1668s
    stog.sprite_index* = (int32 self.brokemett)
    stog.x* = (+ (int32 self.brokemett):x 6s)
    stog.y* = (- (int32 self.brokemett):y 3s)
0x000324:
    push (int32 self.brokemett)
    push (int32 self.brokemett)
    self.ii = (instance_create[]:int32 (var 1344s) (var 700s) (var 140s))
    self.ii = (instance_create[]:int32 (var 1344s) (var 700s) (var 160s))
    self.sl2 = (instance_create[]:int32 (var 8s) (var 710s) (var 145s))
    [obj_mainchara].x = 150s
    [obj_mainchara].y = 750s
    global.facing = 2s
    global.interact = 1s
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = 1570s
0x0003EC:
    self.x_maroon = (merge_color[]:int32 (var 0.35d) (var 128s) (var 0s))
0x00041C:
    exit
