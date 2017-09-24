0x000000:
    if !(bool (instance_exists[]:int32 (var 254s))) goto 0x0000F0
0x000018:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 209s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (/ (- 254.y self.ystart) (double 3s))) self.x (var 0s) (var 208s))
    goto 0x0001A0
0x0000F0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 209s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 208s))
0x0001A0:
    exit
