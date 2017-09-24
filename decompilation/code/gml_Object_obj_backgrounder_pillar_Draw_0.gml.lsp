0x000000:
    self.i = 0s
    if !(< self.i 9s) goto 0x0000D8
0x000020:
    call (draw_sprite[]:int32 (var 0s) (+ self.x (* 230s self.i)) self.image_index self.sprite_index)
    if !(== self.i 5s) goto 0x0000BC
0x000074:
    call (draw_sprite[]:int32 (var 0s) (+ (+ self.x (* 230s self.i)) 110s) self.image_index self.sprite_index)
0x0000BC:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000D8:
    exit
