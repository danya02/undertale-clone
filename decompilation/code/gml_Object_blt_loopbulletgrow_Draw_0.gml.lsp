0x000000:
    if !(== self.blue 1s) goto 0x000028
0x000014:
    push (!= self.sprite_index 153s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    self.sprite_index = 153s
0x00003C:
    if !(== self.cl 0s) goto 0x000070
0x000050:
    call (draw_self_border[]:int32 (var 8s) (var 8s))
    goto 0x00009C
0x000070:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x00009C:
    exit
