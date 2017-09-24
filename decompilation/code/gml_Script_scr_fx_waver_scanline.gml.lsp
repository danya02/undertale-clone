0x000000:
    self.b = self.argument0
    self.c = self.argument1
    self.d = self.argument2
    self.a = (+ self.a 1s)
    self.i = 0s
    if !(< self.i self.sprite_height) goto 0x00016C
0x00006C:
    self.a = (+ self.a 1s)
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 2s) (var 2s) (+ self.y (* self.i 2s)) (+ self.x (* (sin[]:int32 (/ self.a self.b)) self.c)) (* (* 1s (sin[]:int32 self.a)) self.d) self.sprite_width self.i (var 0s) self.image_index self.sprite_index)
    self.i = (+ self.i 1s)
    goto 0x000054
0x00016C:
    exit
