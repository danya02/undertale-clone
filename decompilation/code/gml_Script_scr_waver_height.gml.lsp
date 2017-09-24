0x000000:
    self.b = self.argument0
    self.c = self.argument1
    self.a = (+ self.a 1s)
    self.i = self.sprite_height
    if !(> self.i 0s) goto 0x0001A0
0x00005C:
    self.a = (+ self.a 1s)
    if !(> self.c 0s) goto 0x0000A8
0x000088:
    self.c = (- self.c 0.1d)
0x0000A8:
    if !(< self.c 0s) goto 0x0000DC
0x0000BC:
    self.c = (- self.c 0.1d)
0x0000DC:
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s) (+ self.y self.i) (+ self.x (* (sin[]:int32 (/ self.a self.b)) self.c)) (var 1s) self.sprite_width self.i (var 0s) self.image_index self.sprite_index)
    self.i = (- self.i 1s)
    goto 0x000048
0x0001A0:
    exit
