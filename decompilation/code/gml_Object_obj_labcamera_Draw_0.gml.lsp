0x000000:
    if !(== self.drawnlab 1s) goto 0x000028
0x000014:
    push (!= global.entrance 3s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x00005C:
    call (draw_set_color[]:int32 (var 16776960))
    if !(== self.altglow 0s) goto 0x000098
0x000088:
    self.altglow = 1s
    goto 0x0000A4
0x000098:
    self.altglow = 0s
0x0000A4:
    if !(== self.altglow 0s) goto 0x0000D8
0x0000B8:
    call (draw_set_alpha[]:int32 (var 0.1d))
    goto 0x0000F4
0x0000D8:
    call (draw_set_alpha[]:int32 (var 0.3d))
0x0000F4:
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 39s) (+ self.x 59s) self.y self.x)
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1825s))
0x000178:
    exit
