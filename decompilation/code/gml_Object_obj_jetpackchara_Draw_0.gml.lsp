0x000000:
    push -1s
    self.xx = 0s:view_xview
    push -1s
    self.yy = 0s:view_yview
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    self.timertime = (- self.timertime 1s)
    if !(< self.timertime 300s) goto 0x0000A8
0x000088:
    self.timertime = (+ self.timertime 0.25d)
0x0000A8:
    exit
