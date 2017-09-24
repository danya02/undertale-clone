0x000000:
    self.siner = (+ self.siner 1s)
    self.i = 0s
    if !(< self.i self.image_yscale) goto 0x000238
0x00003C:
    if !(== self.i 0s) goto 0x00012C
0x000050:
    call (draw_sprite_ext[]:int32 (abs[]:int32 (sin[]:int32 (- (/ self.i (double 2s)) (/ self.siner (double 12s))))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 40s)) (+ self.x (* (cos[]:int32 (/ (+ self.siner (* self.i 4s)) (double 12s))) 10s)) self.image_index (var 910s))
0x00012C:
    if !(> self.i 0s) goto 0x00021C
0x000140:
    call (draw_sprite_ext[]:int32 (abs[]:int32 (sin[]:int32 (- (/ self.i (double 2s)) (/ self.siner (double 12s))))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 40s)) (+ self.x (* (cos[]:int32 (/ (+ self.siner (* self.i 4s)) (double 12s))) 10s)) self.image_index self.sprite_index)
0x00021C:
    self.i = (+ self.i 1s)
    goto 0x000024
0x000238:
    exit
