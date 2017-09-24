0x000000:
    if !(> self.hspeed 0s) goto 0x00006C
0x000014:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index (var 134s))
0x00006C:
    if !(< self.hspeed 0s) goto 0x0000D8
0x000080:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index (var 135s))
0x0000D8:
    if !(> self.vspeed 0s) goto 0x000144
0x0000EC:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index (var 137s))
0x000144:
    if !(< self.vspeed 0s) goto 0x0001B0
0x000158:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index (var 136s))
0x0001B0:
    exit
