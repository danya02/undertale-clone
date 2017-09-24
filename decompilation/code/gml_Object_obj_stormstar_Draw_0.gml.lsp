0x000000:
    self.xxxxx = self.xxxx
    self.yyyyy = self.yyyy
    self.xxxx = self.xxx
    self.yyyy = self.yyy
    self.xxx = self.xx
    self.yyy = self.yy
    self.xx = self.xprevious
    self.yy = self.yprevious
    call (draw_sprite_ext[]:int32 (- self.image_alpha 0.65d) self.image_blend self.image_angle self.image_yscale self.image_xscale self.yyyyy self.xxxxx (var 1s) self.sprite_index)
    call (draw_sprite_ext[]:int32 (- self.image_alpha 0.5d) self.image_blend self.image_angle self.image_yscale self.image_xscale self.yyy self.xxx (var 1s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.big 1s) goto 0x0002D8
0x0001B0:
    call (draw_set_circle_precision[]:int32 (var 16s))
    call (draw_set_color[]:int32 self.image_blend)
    if !(== self.oo 0s) goto 0x0001FC
0x0001EC:
    self.oo = 1s
    goto 0x000208
0x0001FC:
    self.oo = 0s
0x000208:
    if !(== self.oo 0s) goto 0x000248
0x00021C:
    call (draw_set_alpha[]:int32 (- 0.25d (- 1s self.image_alpha)))
0x000248:
    if !(== self.oo 1s) goto 0x000288
0x00025C:
    call (draw_set_alpha[]:int32 (- 0.5d (- 1s self.image_alpha)))
0x000288:
    call (draw_circle[]:int32 (var 0s) (+ 200s (* self.oo 20s)) self.y self.x)
    call (draw_set_alpha[]:int32 (var 1s))
0x0002D8:
    if !(> self.aa 0s) goto 0x000308
0x0002EC:
    self.image_angle = (+ self.image_angle self.aa)
0x000308:
    exit
