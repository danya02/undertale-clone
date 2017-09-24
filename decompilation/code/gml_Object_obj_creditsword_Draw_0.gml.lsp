0x000000:
    if !(== self.active 1s) goto 0x0001CC
0x000014:
    if !(== self.fader 0s) goto 0x00003C
0x000028:
    push (< self.alpha 1s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000064
0x000044:
    self.alpha = (+ self.alpha 0.05d)
0x000064:
    call (draw_set_alpha[]:int32 self.alpha)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_text_transformed[]:int32 (var 0s) (* self.size 2s) (* self.size 2s) self.text self.y self.x)
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text_transformed[]:int32 (var 0s) self.size self.size self.text2 (+ (+ self.y self.height) (* 4s self.size)) self.x)
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.fader 1s) goto 0x0001AC
0x00018C:
    self.alpha = (- self.alpha 0.05d)
0x0001AC:
    if !(< self.alpha 0s) goto 0x0001CC
0x0001C0:
    call (instance_destroy[]:int32 )
0x0001CC:
    exit
