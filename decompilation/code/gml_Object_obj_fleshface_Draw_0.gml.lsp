0x000000:
    if !(== self.frozen 0s) goto 0x000034
0x000014:
    self.siner = (+ self.siner 1.2d)
0x000034:
    if !(== self.desperate 0s) goto 0x00017C
0x000048:
    self.siner = (- self.siner 0.2d)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) (+ self.y (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) (+ (+ self.y 12s) (* (sin[]:int32 (/ self.siner (double 2s))) 6s)) (+ self.x 32s) (/ self.siner (double 8s)) (var 2157s))
0x00017C:
    if !(== self.desperate 1s) goto 0x0002A4
0x000190:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) (+ self.y (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 1s) (var 1s) (+ (+ self.y 14s) (* (sin[]:int32 (/ self.siner (double 2s))) 7s)) (+ self.x 32s) (/ self.siner (double 8s)) (var 2157s))
0x0002A4:
    exit
