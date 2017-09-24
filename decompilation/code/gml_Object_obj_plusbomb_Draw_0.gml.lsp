0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.side 1s) goto 0x0000D4
0x000040:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 28s) (+ (+ (+ self.x 22s) self.sprite_width) 1s) (+ self.y 6s) (+ (+ (+ self.x 2s) self.sprite_width) 1s))
0x0000D4:
    if !(== self.side 2s) goto 0x00017C
0x0000E8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 28s) (- (- (+ self.x 22s) self.sprite_width) 1s) (+ self.y 6s) (- (- (+ self.x 2s) self.sprite_width) 1s))
0x00017C:
    exit
