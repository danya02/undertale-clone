0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.fun 0s) goto 0x000088
0x00006C:
    call (script_execute[]:int32 (var 2s) (var 106s))
0x000088:
    call (scr_depth[]:int32 )
0x000094:
    exit
