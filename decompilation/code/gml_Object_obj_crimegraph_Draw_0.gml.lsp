0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 1s) (+ (+ self.y (* self.sprite_width 4s)) 2s) (+ (+ self.x (* self.sprite_width 4s)) 2s) (- self.y 2s) (- self.x 2s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 3.5d (random[]:int32 (var 0.5d))) (+ 3.5d (random[]:int32 (var 0.5d))) (+ self.y (* self.sprite_height 2s)) (+ self.x (* self.sprite_width 2s)) (var 0s) self.sprite_index)
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text[]:int32 (var "CRIME") (+ self.y 40s) (- self.x 80s))
0x0001A0:
    exit
