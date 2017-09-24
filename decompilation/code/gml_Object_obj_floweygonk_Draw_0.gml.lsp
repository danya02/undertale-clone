0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(>= self.s_i 0s) goto 0x000080
0x00006C:
    push (<= self.s_i 5s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x000120
0x000088:
    self.s_i = (+ self.s_i 0.334d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1.5d) (var 1.5d) (- self.y 40s) (+ self.x 20s) self.s_i (var 757s))
0x000120:
    exit
