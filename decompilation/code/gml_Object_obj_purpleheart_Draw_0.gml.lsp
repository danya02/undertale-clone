0x000000:
    call (draw_set_color[]:int32 (var 8388736))
    if !(== self.type 0s) goto 0x0000F8
0x00002C:
    self.i = 0s
    if !(< self.i self.yamt) goto 0x0000F8
0x000050:
    call (draw_line[]:int32 (+ (+ self.yzero (* self.yspace self.i)) self.yoff) (+ self.xmid self.xlen) (+ (+ self.yzero (* self.yspace self.i)) self.yoff) (- self.xmid self.xlen))
    self.i = (+ self.i 1s)
    goto 0x000038
0x0000F8:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x000124:
    exit
