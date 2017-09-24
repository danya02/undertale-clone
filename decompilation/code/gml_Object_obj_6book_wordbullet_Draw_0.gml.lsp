0x000000:
    self.counter = (+ self.counter 1s)
    call (draw_set_font[]:int32 (var 10s))
    self.width = (string_width[]:int32 self.word)
    self.factor = (/ (double 100s) self.width)
    call (draw_set_color[]:int32 self.image_blend)
    call (draw_text_transformed[]:int32 (var 0s) (var 4.2d) self.factor self.word self.y self.x)
    if !(> self.hspeed 0s) goto 0x0000E0
0x0000CC:
    push (> self.x 405s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x0000F4
0x0000E8:
    call (instance_destroy[]:int32 )
0x0000F4:
    if !(< self.hspeed 0s) goto 0x00011C
0x000108:
    push (< self.x 120s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000130
0x000124:
    call (instance_destroy[]:int32 )
0x000130:
    if !(== self.type 2s) goto 0x0001D4
0x000144:
    self.shake = (+ self.shake 0.2d)
    self.x = (+ self.x (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
    self.y = (+ self.y (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
0x0001D4:
    exit
