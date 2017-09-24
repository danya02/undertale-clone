0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2299s))
    if !(== self.shock 0s) goto 0x000288
0x00006C:
    if !(== self.smooch 0s) goto 0x0000D8
0x000080:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.face (var 803s))
0x0000D8:
    if !(== self.smooch 1s) goto 0x0001B0
0x0000EC:
    if !(> self.smooch_ang -50s) goto 0x000140
0x000100:
    self.smooch_ang = (- self.smooch_ang 0.5d)
    self.s_i = (+ self.s_i 0.25d)
0x000140:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.smooch_ang (var 2s) (var 2s) (+ self.y 40s) (+ self.x 44s) (floor[]:int32 self.s_i) (var 2300s))
0x0001B0:
    if !(== self.smooch 2s) goto 0x000288
0x0001C4:
    if !(> self.smooch_ang -50s) goto 0x000218
0x0001D8:
    self.smooch_ang = (- self.smooch_ang 0.5d)
    self.s_i = (+ self.s_i 0.25d)
0x000218:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.smooch_ang (var 2s) (var 2s) (+ self.y 40s) (+ self.x 44s) (floor[]:int32 self.s_i) (var 2301s))
0x000288:
    if !(== self.shock 1s) goto 0x0002FC
0x00029C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 2s) self.x (var 0s) (var 2332s))
0x0002FC:
    exit
