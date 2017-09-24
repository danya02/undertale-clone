0x000000:
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (+ (int32 self.view_current):view_yview 10s)
    self.f = 188s
    self.yf = 8s
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ 127s self.yy) self.yf) (+ (+ 116s self.xx) self.f) (+ (+ 74s self.yy) self.yf) (+ (+ 16s self.xx) self.f))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ (+ 124s self.yy) self.yf) (+ (+ 113s self.xx) self.f) (+ (+ 77s self.yy) self.yf) (+ (+ 19s self.xx) self.f))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (+ (+ "$ - " (string[]:int32 global.gold)) "G") (+ 90s self.yy) (+ (+ 30s self.xx) self.f))
    call (scr_itemroom[]:int32 )
    call (draw_text[]:int32 (+ (+ "SPACE - " (string[]:int32 self.itemhold)) "/8") (+ 110s self.yy) (+ (+ 30s self.xx) self.f))
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0002B4
0x0002A8:
    call (instance_destroy[]:int32 )
0x0002B4:
    exit
