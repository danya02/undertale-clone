0x000000:
    push -1s
    stog.split[(+ (int32 self.splitno):split 1s)] = (int32 self.splitno)
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_halign[]:int32 (var 0s))
    self.i = 0s
    if !(< self.i (+ self.splitno 1s)) goto 0x000118
0x000094:
    push -1s
    push (int32 self.i):split
    push -1s
    call (draw_text[]:int32 (+ (+ 0s:view_yview 10s) (* self.i 15s)) -1s (+ 0s:view_xview 10s))
    self.i = (+ self.i 1s)
    goto 0x000074
0x000118:
    exit
