0x000000:
    if !(== self.defeat 0s) goto 0x000040
0x000014:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
0x000040:
    if !(== self.defeat 1s) goto 0x000134
0x000054:
    self.dxtimer = (+ self.dxtimer 1s)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y (- self.x self.dx1) (var 1s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y (+ self.x self.dx2) (var 2s) self.sprite_index)
0x000134:
    if !(> self.dxtimer 25s) goto 0x0001F8
0x000148:
    if !(== self.dxtimer 26s) goto 0x000170
0x00015C:
    call (snd_play[]:int32 (var 30s))
0x000170:
    self.image_alpha = (- self.image_alpha 0.04d)
    self.dx1 = (+ self.dx1 0.5d)
    self.dx2 = (+ self.dx2 0.5d)
    if !(< self.image_alpha 0.1d) goto 0x0001F8
0x0001EC:
    call (instance_destroy[]:int32 )
0x0001F8:
    exit
