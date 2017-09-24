0x000000:
    if !(== self.moved 0s) goto 0x0000E0
0x000014:
    stog.alarm[0s] = -1s
    self.i = 0s
    if !(< self.i self.cn) goto 0x0000D4
0x00004C:
    push -1s
    pushenv (int32 (int32 self.i):c) 0x0000B4
0x00006C:
    call (move_towards_point[]:int32 (var 2s) (+ 743.y 6s) (+ 743.x 6s))
    self.friction = -0.2d
0x0000B4:
    popenv 0x00006C
0x0000B8:
    self.i = (+ self.i 1s)
    goto 0x000034
0x0000D4:
    self.moved = 1s
0x0000E0:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(< self.image_alpha -0.4d) goto 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    exit
