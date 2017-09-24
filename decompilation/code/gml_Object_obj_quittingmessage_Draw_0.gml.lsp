0x000000:
    if !(bool (instance_exists[]:int32 (var 1569s))) goto 0x0000B8
0x000018:
    if !(> 1569.quit 0s) goto 0x0000A8
0x00002C:
    push self.image_alpha
    push (var 16777215)
    call (draw_sprite_ext[]:int32 (var 0s) (var 1s) (var 1s) -1s (int32 self.view_current):view_yview -1s (int32 self.view_current):view_xview self.image_index self.sprite_index)
    goto 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    goto 0x0000C4
0x0000B8:
    call (instance_destroy[]:int32 )
0x0000C4:
    if !(< self.image_alpha 0.9d) goto 0x000100
0x0000E0:
    self.image_alpha = (+ self.image_alpha 0.1d)
0x000100:
    exit
