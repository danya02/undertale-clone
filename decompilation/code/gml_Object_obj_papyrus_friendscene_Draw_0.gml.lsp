0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(== self.shock 0s) goto 0x0000D4
0x00006C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 2s) (+ self.x 40s) self.face (var 783s))
0x0000D4:
    if !(== self.shock 1s) goto 0x000150
0x0000E8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 2s) (+ self.x 40s) (var 0s) (var 2319s))
0x000150:
    exit
