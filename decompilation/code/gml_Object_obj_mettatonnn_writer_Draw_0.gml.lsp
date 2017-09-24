0x000000:
    self.maxed = 307.mettamt
    self.maxeda = self.maxed
    if !(> self.maxeda 13s) goto 0x000040
0x000034:
    self.maxeda = 13s
0x000040:
    self.maxedb = (- self.maxed 13s)
    if !(> self.maxedb 20s) goto 0x000078
0x00006C:
    self.maxedb = 20s
0x000078:
    self.maxedc = (- self.maxed 32s)
    call (draw_set_font[]:int32 (var 1s))
    self.i = 0s
    if !(< self.i self.maxeda) goto 0x000158
0x0000C8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (var "n") (+ 82s (random[]:int32 (var 1s))) (+ (+ 431s (random[]:int32 (var 1s))) (* self.i 14s)))
    self.i = (+ self.i 1s)
    goto 0x0000B0
0x000158:
    if !(> self.maxedb 0s) goto 0x000230
0x00016C:
    self.i = 0s
    if !(< self.i self.maxedb) goto 0x000230
0x000190:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 270s) (var 1s) (var 1s) (var "n") (+ 116s (* self.i 16s)) (+ (- self.room_width 6s) (random[]:int32 (var 1s))))
    self.i = (+ self.i 1s)
    goto 0x000178
0x000230:
    if !(> self.maxedc 0s) goto 0x000314
0x000244:
    self.i = 0s
    if !(< self.i self.maxedc) goto 0x000314
0x000268:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 180s) (var 1s) (var 1s) (var "n") (- self.room_height 20s) (- (+ (- self.room_width 40s) (random[]:int32 (var 1s))) (* self.i 16s)))
    self.i = (+ self.i 1s)
    goto 0x000250
0x000314:
    exit
