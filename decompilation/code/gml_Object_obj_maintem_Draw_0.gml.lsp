0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 62s) (+ (+ self.x 50s) self.length) (+ self.y 36s) (+ self.x 48s))
    call (draw_sprite[]:int32 self.y (+ (+ self.x self.sprite_width) self.length) self.image_index (var 119s))
0x0000E8:
    exit
