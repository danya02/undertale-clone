0x000000:
    self.siner = (+ self.siner 1s)
    self.i = 0s
    if !(< self.i self.image_yscale) goto 0x000190
0x00003C:
    if !(== self.i 0s) goto 0x0000D8
0x000050:
    call (draw_sprite_ext[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 16s)))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 40s)) self.x self.image_index (var 910s))
0x0000D8:
    if !(> self.i 0s) goto 0x000174
0x0000EC:
    call (draw_sprite_ext[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 16s)))) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 40s)) self.x self.image_index self.sprite_index)
0x000174:
    self.i = (+ self.i 1s)
    goto 0x000024
0x000190:
    exit
