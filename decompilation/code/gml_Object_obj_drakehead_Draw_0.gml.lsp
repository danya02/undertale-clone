0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(bool (instance_exists[]:int32 (var 253s))) goto 0x0000C8
0x000070:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 205s))
0x0000C8:
    exit
