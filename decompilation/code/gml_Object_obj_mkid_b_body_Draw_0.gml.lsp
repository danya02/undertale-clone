0x000000:
    if !(== self.type 0s) goto 0x000074
0x000014:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x -5s 20s:flag self.sprite_index)
0x000074:
    if !(== self.type 1s) goto 0x0000E0
0x000088:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x global.faceemotion self.sprite_index)
0x0000E0:
    exit
