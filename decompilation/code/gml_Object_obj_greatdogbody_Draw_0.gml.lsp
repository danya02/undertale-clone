0x000000:
    self.g = 0s
    if !(bool (instance_exists[]:int32 (var 224s))) goto 0x000070
0x000024:
    if !(<= 224.dogignore 2s) goto 0x000070
0x000038:
    call (draw_self_custom_x[]:int32 (var 250s) (var 0s) (var 999s) (var 0s))
    self.g = 1s
0x000070:
    if !(== self.g 0s) goto 0x00011C
0x000084:
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) self.image_yscale self.image_xscale self.y (+ self.x (* 44s self.image_xscale)) (/ (- 250s self.y) self.image_yscale) (var 17s) (var 0s) (var 43s) self.image_index self.sprite_index)
0x00011C:
    exit
