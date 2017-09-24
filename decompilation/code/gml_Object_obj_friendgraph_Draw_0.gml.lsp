0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 1s))
    self.stringo = ""
    push -5s
    if !(== 66s:flag 1s) goto 0x000068
0x000058:
    self.stringo = "DATE POWER"
0x000068:
    push -5s
    if !(== 66s:flag 0s) goto 0x000094
0x000084:
    self.stringo = "FRIENDSHIP"
0x000094:
    call (draw_text[]:int32 self.stringo (- self.y 36s) self.x)
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 27s) (+ (+ self.x self.maxlength) 3s) (- self.y 3s) (- self.x 3s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 25s) (+ (+ self.x self.maxlength) 1s) (- self.y 1s) (- self.x 1s))
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 24s) (+ self.x self.maxlength) self.y self.x)
    self.siner = (+ self.siner 1s)
    self.value = (+ 200s (* (sin[]:int32 (/ (* self.siner (/ (* 10s self.length) self.maxlength)) (double 10s))) (+ 20s (* 35s (/ self.length self.maxlength)))))
    if !(> self.value 255s) goto 0x0002A0
0x000294:
    self.value = 255s
0x0002A0:
    if !(< self.value 180s) goto 0x0002C0
0x0002B4:
    self.value = 180s
0x0002C0:
    call (draw_set_color[]:int32 (make_color_hsv[]:int32 self.value (var 255s) (var 160s)))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 24s) (+ self.x self.length) self.y self.x)
    if !(> self.ideallength self.length) goto 0x000364
0x00034C:
    self.length = (+ self.length 1s)
0x000364:
    if !(< self.ideallength self.length) goto 0x000394
0x00037C:
    self.length = (- self.length 1s)
0x000394:
    exit
