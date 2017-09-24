0x000000:
    if !(== self.active 1s) goto 0x000108
0x000014:
    self.visible = 1s
    if !(== self.off 0s) goto 0x0000A4
0x000034:
    if !(< self.alpha 2.2d) goto 0x0000A4
0x000050:
    self.alpha = (+ self.alpha 0.05d)
    if !(== self.gggg 1s) goto 0x0000A4
0x000084:
    self.alpha = (+ self.alpha 0.1d)
0x0000A4:
    call (draw_set_font[]:int32 self.myfont)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 self.alpha)
    call (draw_text[]:int32 self.newstring self.y self.x)
0x000108:
    if !(== self.off 1s) goto 0x000198
0x00011C:
    self.alpha = (- self.alpha 0.05d)
    if !(== self.gggg 1s) goto 0x000170
0x000150:
    self.alpha = (- self.alpha 0.05d)
0x000170:
    if !(< self.alpha 0.1d) goto 0x000198
0x00018C:
    call (instance_destroy[]:int32 )
0x000198:
    call (draw_set_alpha[]:int32 (var 1s))
0x0001AC:
    exit
