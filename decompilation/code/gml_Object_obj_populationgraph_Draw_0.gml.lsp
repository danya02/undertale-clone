0x000000:
    if !(== self.tough 0s) goto 0x0002A8
0x000014:
    call (draw_set_color[]:int32 (var 4235519))
    self.i = 0s
    if !(< self.i 7s) goto 0x000124
0x00004C:
    push (var 2s)
    push self.y
    call (draw_line_width[]:int32 (+ -1s (int32 (+ self.i 1s)):point) (- (+ (+ self.x (* self.i 10s)) 10s) self.off) self.y (+ -1s (int32 self.i):point) (- (+ self.x (* self.i 10s)) self.off))
    self.i = (+ self.i 1s)
    goto 0x000038
0x000124:
    self.off = (+ self.off 1s)
    if !(> self.off 9s) goto 0x0001F0
0x000150:
    self.i = 0s
    if !(< self.i 7s) goto 0x0001C4
0x000170:
    push -1s
    stog.point[(int32 self.i)] = (int32 (+ self.i 1s)):point
    self.i = (+ self.i 1s)
    goto 0x00015C
0x0001C4:
    stog.point[7s] = (random[]:int32 (var 50s))
    self.off = 0s
0x0001F0:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 1s) (+ self.y 60s) (+ self.x 70s) (- self.y 20s) (- self.x 10s))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text[]:int32 (var "POPULATION") (- self.y 50s) (- self.x 20s))
0x0002A8:
    if !(== self.tough 1s) goto 0x00054C
0x0002BC:
    call (draw_set_color[]:int32 (var 255s))
    self.i = 0s
    if !(< self.i 7s) goto 0x0003C8
0x0002F0:
    push (var 2s)
    push self.y
    call (draw_line_width[]:int32 (+ -1s (int32 (+ self.i 1s)):point) (- (+ (+ self.x (* self.i 10s)) 10s) self.off) self.y (+ -1s (int32 self.i):point) (- (+ self.x (* self.i 10s)) self.off))
    self.i = (+ self.i 1s)
    goto 0x0002DC
0x0003C8:
    self.off = (+ self.off 3s)
    if !(> self.off 9s) goto 0x000494
0x0003F4:
    self.i = 0s
    if !(< self.i 7s) goto 0x000468
0x000414:
    push -1s
    stog.point[(int32 self.i)] = (int32 (+ self.i 1s)):point
    self.i = (+ self.i 1s)
    goto 0x000400
0x000468:
    stog.point[7s] = (random[]:int32 (var 80s))
    self.off = 0s
0x000494:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 1s) (+ self.y 100s) (+ self.x 70s) (- self.y 20s) (- self.x 10s))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text[]:int32 (var "TENSION") (- self.y 50s) (- self.x 20s))
0x00054C:
    exit
