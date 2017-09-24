0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(== self.shock 0s) goto 0x0000D0
0x000068:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 30s) (+ self.x 122s) self.face (var 2291s))
0x0000D0:
    if !(== self.shock 1s) goto 0x00014C
0x0000E4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 30s) (+ self.x 122s) (var 0s) (var 2315s))
0x00014C:
    exit
