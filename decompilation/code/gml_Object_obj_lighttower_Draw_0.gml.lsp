0x000000:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 992s))
    call (draw_sprite[]:int32 (+ self.y 11s) (+ self.x 25s) (/ self.ts (double 6s)) (var 994s))
    if !(== self.on 1s) goto 0x0000E8
0x000088:
    call (draw_sprite[]:int32 (+ self.y 11s) (+ self.x 25s) (/ self.ts (double 6s)) (var 993s))
    self.ts = (+ self.ts 1s)
0x0000E8:
    exit
