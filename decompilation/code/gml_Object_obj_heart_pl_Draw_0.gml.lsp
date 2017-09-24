0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 16777215))
    push (var 1s)
    push -5s
    push 3s:idealborder
    push -5s
    call (draw_rectangle[]:int32 1s:idealborder -5s 2s:idealborder -5s 0s:idealborder)
    call (draw_set_color[]:int32 (var 255s))
    if !(== self.shot 1s) goto 0x000114
0x0000C0:
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 26s) (+ self.x 10s) (+ self.y 23s) (+ self.x 6s))
0x000114:
    exit
