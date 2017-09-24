0x000000:
    if !(== self.spec 0s) goto 0x00017C
0x000014:
    self.i = 0s
    push self.i
    if !(< -1s 0s:rno) goto 0x00017C
0x000040:
    push self.x
    push -1s
    push 0s:rang
    self.xx = (+ (+ (* self.i 360s) (/ -1s 0s:rno)) (lengthdir_x[]:int32 -1s 0s:r))
    push self.y
    push -1s
    push 0s:rang
    self.yy = (+ (+ (* self.i 360s) (/ -1s 0s:rno)) (lengthdir_y[]:int32 -1s 0s:r))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.yy self.xx (var 0s) (var 2406s))
    self.i = (+ self.i 1s)
    goto 0x000020
0x00017C:
    if !(== self.spec 1s) goto 0x0003CC
0x000190:
    self.i = 0s
    push self.i
    if !(< -1s 0s:rno) goto 0x0003CC
0x0001BC:
    push self.x
    push -1s
    push 0s:rang
    self.xx = (+ (+ (* self.i 360s) (/ -1s 0s:rno)) (lengthdir_x[]:int32 -1s 0s:r))
    push self.y
    push -1s
    push 0s:rang
    self.yy = (+ (+ (* self.i 360s) (/ -1s 0s:rno)) (lengthdir_y[]:int32 -1s 0s:r))
    if !(== self.i 0s) goto 0x0002A8
0x000298:
    self.col = 16776960
0x0002A8:
    if !(== self.i 1s) goto 0x0002CC
0x0002BC:
    self.col = 16711680
0x0002CC:
    if !(== self.i 2s) goto 0x0002F0
0x0002E0:
    self.col = 32768
0x0002F0:
    if !(== self.i 3s) goto 0x000314
0x000304:
    self.col = 65535
0x000314:
    if !(== self.i 4s) goto 0x000338
0x000328:
    self.col = 4235519
0x000338:
    if !(== self.i 5s) goto 0x00035C
0x00034C:
    self.col = 8388736
0x00035C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.col (var 0s) (var 1s) (var 1s) self.yy self.xx (var 0s) (var 2407s))
    self.i = (+ self.i 1s)
    goto 0x00019C
0x0003CC:
    push -1s
    push 0s
    stog.rang[0s:rang] = (+ -1s 0s:raspeed)
    push -1s
    push 0s
    stog.r[0s:r] = (+ -1s 0s:rspeed)
    if !(< self.image_alpha 1s) goto 0x000460
0x000440:
    self.image_alpha = (+ self.image_alpha 0.02d)
0x000460:
    if !(== self.spec 1s) goto 0x0004D8
0x000474:
    push -1s
    if !(> 0s:r 30s) goto 0x0004D8
0x000490:
    stog.r[0s] = 30s
    stog.alarm[5s] = -1s
    stog.rspeed[0s] = 0s
    self.depth = -2s
0x0004D8:
    exit
