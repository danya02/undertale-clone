0x000000:
    if !(bool (instance_exists[]:int32 self.parent)) goto 0x000098
0x000018:
    call (draw_sprite_ext[]:int32 (int32 self.parent):image_alpha (var 16777215) (var 0s) (int32 self.parent):image_yscale (int32 self.parent):image_xscale self.y self.x self.image_index self.sprite_index)
    goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    exit
