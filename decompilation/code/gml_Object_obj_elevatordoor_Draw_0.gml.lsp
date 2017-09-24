0x000000:
    call (draw_sprite[]:int32 self.y self.x (var 1s) self.sprite_index)
    call (draw_sprite_part[]:int32 self.y self.x (var 50s) (- 20s self.side) (var 0s) self.side (var 0s) (var 1849s))
    call (draw_sprite_part[]:int32 self.y (+ (+ self.x 20s) self.side) (var 50s) (- 20s self.side) (var 0s) (var 0s) (var 0s) (var 1849s))
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
0x000114:
    exit
