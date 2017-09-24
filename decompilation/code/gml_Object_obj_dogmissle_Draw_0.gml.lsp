0x000000:
    if !(< self.x -10s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    if !(== self.anchor 1s) goto 0x000108
0x000034:
    self.x = (+ 544.x 34s)
    self.y = (+ 544.y 16s)
    self.off = (- self.off 2s)
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) self.y (+ self.x (* self.off 2s)) self.sprite_height (- 0s self.off) (var 0s) (var 0s) (var 0s) self.sprite_index)
0x000108:
    if !(== self.anchor 0s) goto 0x000174
0x00011C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x000174:
    exit
