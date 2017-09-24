0x000000:
    if !(== self.pause 1s) goto 0x00003C
0x000014:
    self.siner = 0s
    self.x = (int32 self.parent):x
0x00003C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (- 2s (* (sin[]:int32 (/ self.siner (double 3s))) 0.15d)) (var 2s) (+ (+ self.offy self.y) 90s) (+ self.x self.offx) (var 0s) (var 471s))
    if !(== self.pause 0s) goto 0x0001D4
0x0000F4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 6s)))) 2s) (var 2s) (var 2s) (+ (+ self.offy self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 4s)) (+ (+ self.offx self.x) (* (sin[]:int32 (/ self.siner (double 6s))) 10s)) (var 0s) (var 469s))
0x0001D4:
    if !(== self.pause 1s) goto 0x0002C8
0x0001E8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 6s)))) 2s) (var 2s) (var 2s) (+ (+ self.offy self.y) (* (sin[]:int32 (/ self.siner (double 3s))) 4s)) (+ (+ self.offx self.x) (* (sin[]:int32 (/ self.siner (double 6s))) 10s)) (var 0s) (var 470s))
0x0002C8:
    self.siner = (+ self.siner 1s)
    self.anim = (+ self.anim 1s)
0x0002F8:
    exit
