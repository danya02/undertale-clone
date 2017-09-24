0x000000:
    self.side = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.sider 0s) goto 0x000294
0x00003C:
    if !(== self.side 0s) goto 0x000104
0x000050:
    self.ff = (instance_create[]:int32 (var 1650s) (var 200s) (+ 100s (random[]:int32 (var 400s))))
    push self.id
    stog.parent* = (int32 self.ff)
    pushenv (int32 self.ff) 0x000100
0x0000B4:
    call (move_towards_point[]:int32 (var 11s) (+ (int32 self.parent):y 115s) (+ (int32 self.parent):x 65s))
0x000100:
    popenv 0x0000B4
0x000104:
    if !(== self.side 1s) goto 0x0001CC
0x000118:
    self.ff = (instance_create[]:int32 (var 1650s) (+ 200s (random[]:int32 (var 300s))) (var 680s))
    push self.id
    stog.parent* = (int32 self.ff)
    pushenv (int32 self.ff) 0x0001C8
0x00017C:
    call (move_towards_point[]:int32 (var 11s) (+ (int32 self.parent):y 115s) (+ (int32 self.parent):x 65s))
0x0001C8:
    popenv 0x00017C
0x0001CC:
    if !(== self.side 2s) goto 0x000294
0x0001E0:
    self.ff = (instance_create[]:int32 (var 1650s) (var 500s) (+ 100s (random[]:int32 (var 700s))))
    push self.id
    stog.parent* = (int32 self.ff)
    pushenv (int32 self.ff) 0x000290
0x000244:
    call (move_towards_point[]:int32 (var 11s) (+ (int32 self.parent):y 115s) (+ (int32 self.parent):x 65s))
0x000290:
    popenv 0x000244
0x000294:
    if !(== self.sider 1s) goto 0x000500
0x0002A8:
    if !(== self.side 0s) goto 0x000370
0x0002BC:
    self.ff = (instance_create[]:int32 (var 1650s) (var 200s) (+ 100s (random[]:int32 (var 400s))))
    push self.id
    stog.parent* = (int32 self.ff)
    pushenv (int32 self.ff) 0x00036C
0x000320:
    call (move_towards_point[]:int32 (var 11s) (+ (int32 self.parent):y 115s) (- (int32 self.parent):x 65s))
0x00036C:
    popenv 0x000320
0x000370:
    if !(== self.side 1s) goto 0x000438
0x000384:
    self.ff = (instance_create[]:int32 (var 1650s) (+ 200s (random[]:int32 (var 300s))) (var -30s))
    push self.id
    stog.parent* = (int32 self.ff)
    pushenv (int32 self.ff) 0x000434
0x0003E8:
    call (move_towards_point[]:int32 (var 11s) (+ (int32 self.parent):y 115s) (- (int32 self.parent):x 65s))
0x000434:
    popenv 0x0003E8
0x000438:
    if !(== self.side 2s) goto 0x000500
0x00044C:
    self.ff = (instance_create[]:int32 (var 1650s) (var 500s) (+ -100s (random[]:int32 (var 660s))))
    push self.id
    stog.parent* = (int32 self.ff)
    pushenv (int32 self.ff) 0x0004FC
0x0004B0:
    call (move_towards_point[]:int32 (var 11s) (+ (int32 self.parent):y 115s) (- (int32 self.parent):x 65s))
0x0004FC:
    popenv 0x0004B0
0x000500:
    self.amt = (+ self.amt 1s)
    stog.alarm[2s] = 2s
    if !(> self.amt 35s) goto 0x00056C
0x000540:
    stog.alarm[2s] = -1s
    self.wait = 0s
    self.con = 5s
0x00056C:
    exit
