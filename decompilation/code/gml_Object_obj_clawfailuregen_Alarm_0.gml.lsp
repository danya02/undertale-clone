0x000000:
    if !(== self.type 0s) goto 0x0000D8
0x000014:
    self.xx = (+ (* (choose[]:int32 (var -1s) (var 1s)) (+ 50s (random[]:int32 (var 240s)))) 743.x)
    push -5s
    push (+ 2s:idealborder 20s)
    push -5s
    self.yy = (+ 3s:idealborder (random[]:int32 (- (- -5s 2s:idealborder) 40s)))
    call (instance_create[]:int32 (var 532s) self.yy self.xx)
0x0000D8:
    if !(== self.type 1s) goto 0x0001D0
0x0000EC:
    if (<= (dup int32) 0) goto 0x0001CC
0x00011C:
    push (int32 (+ 1s (random[]:int32 (var 7s))))
    self.xx = (+ (* (choose[]:int32 (var -1s) (var 1s)) (+ 50s (random[]:int32 (var 50s)))) 743.x)
    push -5s
    self.yy = (- 2s:idealborder (random[]:int32 (var 30s)))
    call (instance_create[]:int32 (var 533s) self.yy self.xx)
    if (bool (- pop 1)) goto 0x00011C
0x0001CC:
    push (- pop 1)
    pop
0x0001D0:
    if !(== self.type 2s) goto 0x0002E4
0x0001E4:
    if (<= (dup int32) 0) goto 0x0002E0
0x000214:
    push (int32 (+ 1s (random[]:int32 (var 7s))))
    self.xx = (+ (* (choose[]:int32 (var -1s) (var 1s)) (+ 200s (random[]:int32 (var 50s)))) 743.x)
    push -5s
    self.yy = (- 2s:idealborder (random[]:int32 (var 30s)))
    self.gr = (instance_create[]:int32 (var 533s) self.yy self.xx)
    push 1s
    stog.gravity_direction* = (int32 self.gr)
    if (bool (- pop 1)) goto 0x000214
0x0002E0:
    push (- pop 1)
    pop
0x0002E4:
    exit
