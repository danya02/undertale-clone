0x000000:
    self.side = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.side 0s) goto 0x000088
0x000034:
    push -5s
    self.y = (- (- 2s:idealborder self.sprite_height) 5s)
    self.vspeed = (+ 9s (random[]:int32 (var 0.5d)))
0x000088:
    if !(== self.side 1s) goto 0x0000E4
0x00009C:
    self.vspeed = (- -9s (random[]:int32 (var 0.5d)))
    push -5s
    self.y = (+ 3s:idealborder 5s)
0x0000E4:
    self.hspeed = (* (random[]:int32 (var 0.5d)) (choose[]:int32 (var -1s) (var 1s)))
0x000120:
    exit
