0x000000:
    if !(== self.rewed 0s) goto 0x000078
0x000014:
    push -5s
    push (- (- 3s:idealborder self.sprite_height) 5s)
    call (draw_sprite[]:int32 -5s (- (- 1s:idealborder self.sprite_width) 5s) self.image_index (var 520s))
0x000078:
    if !(== self.rewed 1s) goto 0x0000F0
0x00008C:
    push -5s
    push (- (- 3s:idealborder self.sprite_height) 5s)
    call (draw_sprite[]:int32 -5s (- (- 1s:idealborder self.sprite_width) 5s) self.image_index (var 521s))
0x0000F0:
    exit
