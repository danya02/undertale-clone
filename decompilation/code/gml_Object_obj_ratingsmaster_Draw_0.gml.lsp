0x000000:
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    self.siner = (+ self.siner 1s)
    if !(== self.active 1s) goto 0x000808
0x000058:
    call (draw_text_transformed[]:int32 (var 0s) (- 2s (* (cos[]:int32 (/ self.siner (double 4s))) 0.05d)) (- 2s (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (+ "RATINGS " (string[]:int32 global.ratings)) (+ self.y (cos[]:int32 (/ self.siner (double 4s)))) (+ (+ self.x 20s) (sin[]:int32 (/ self.siner (double 4s)))))
    self.i = 0s
    if !(< self.i 6s) goto 0x000490
0x000168:
    push -1s
    if !(>= (int32 self.i):rq_v 0s) goto 0x0001DC
0x00018C:
    push "+"
    self.thisv = (+ -1s (string[]:int32 (int32 self.i):rq_v))
    call (draw_set_color[]:int32 (var 65280))
    goto 0x000218
0x0001DC:
    push -1s
    self.thisv = (string[]:int32 (int32 self.i):rq_v)
    call (draw_set_color[]:int32 (var 255s))
0x000218:
    push -1s
    stog.rq_s[(+ (int32 self.i):rq_s (* 1s (/ (+ self.i 2s) (double 2s))))] = (int32 self.i)
    push -1s
    if !(> (int32 self.i):rq_s 120s) goto 0x0002C0
0x000288:
    push 170s
    call (draw_set_alpha[]:int32 (/ (- -1s (int32 self.i):rq_s) (double 50s)))
0x0002C0:
    push (double 70s)
    self.ww = (/ -1s (+ (string_width[]:int32 (int32 self.i):rq) 1s))
    self.xx = 0s
    push -1s
    if !(< (int32 self.i):rq_s 10s) goto 0x000388
0x00032C:
    push -1s
    push (* (cos[]:int32 (int32 self.i):rq_s) 21s)
    self.xx = (/ -1s (+ (* (int32 self.i):rq_s 2s) 1s))
0x000388:
    push (var 0s)
    call (draw_text_transformed[]:int32 (var 1s) (* 1s self.ww) -1s (int32 self.i):rq (+ (+ self.y 140s) (* self.i 12s)) (+ (+ self.x 60s) self.xx))
    call (draw_text[]:int32 self.thisv (+ (+ self.y 140s) (* self.i 12s)) (+ (+ self.x 130s) self.xx))
    call (draw_set_alpha[]:int32 (var 1s))
    self.i = (+ self.i 1s)
    goto 0x000154
0x000490:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_line_width[]:int32 (var 3s) (+ self.y 130s) (+ self.x 10s) (+ self.y 40s) (+ self.x 10s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_line_width[]:int32 (var 3s) (+ self.y 130s) (+ self.x 180s) (+ self.y 130s) (+ self.x 10s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_line[]:int32 (+ self.y 55s) (+ self.x 180s) (+ self.y 55s) (+ self.x 10s))
    self.ratingsy = (* global.ratings 0.0075d)
    call (draw_set_color[]:int32 (var 16776960))
    call (draw_line[]:int32 (- (+ self.y 130s) self.ratingsy) (+ self.x 180s) (- (+ self.y 130s) self.ratingsy) (+ self.x 10s))
    self.i = 0s
    if !(< self.i 9s) goto 0x000808
0x000688:
    call (draw_set_color[]:int32 (var 16711935))
    push -1s
    stog.rpy[(int32 self.i)] = (* (int32 self.i):rp 0.0075d)
    push -1s
    stog.rpy[(int32 (+ self.i 1s))] = (* (int32 (+ self.i 1s)):rp 0.0075d)
    push (var 2s)
    push (+ self.y 130s)
    call (draw_line_width[]:int32 (- -1s (int32 (+ self.i 1s)):rpy) (+ (+ self.x 30s) (* self.i 20s)) (+ self.y 130s) (- -1s (int32 self.i):rpy) (+ (+ self.x 10s) (* self.i 20s)))
    self.i = (+ self.i 1s)
    goto 0x000674
0x000808:
    if !(> self.checkhp global.hp) goto 0x00088C
0x000820:
    self.curtype = 1s
    if !(== self.boastmode 1s) goto 0x000858
0x000840:
    self.curtype = 2s
    self.boastmode = 0s
0x000858:
    if !(== self.heel 1s) goto 0x000878
0x00086C:
    self.curtype = 3s
0x000878:
    call (event_user[]:int32 (var 0s))
0x00088C:
    self.checkhp = global.hp
    if !(== self.boastmode 1s) goto 0x000A0C
0x0008B0:
    if !(> global.turntimer 0s) goto 0x0008D8
0x0008C4:
    push (== global.mnfight 2s)
    goto 0x0008DC
0x0008D8:
    push 0s
0x0008DC:
    if !pop goto 0x0009AC
0x0008E0:
    if !(== self.o_ob 0s) goto 0x000904
0x0008F4:
    self.o_ob = 1s
    goto 0x000910
0x000904:
    self.o_ob = 0s
0x000910:
    if !(== self.o_ob 0s) goto 0x00093C
0x000924:
    global.ratings = (+ global.ratings 1s)
0x00093C:
    if !(== self.o_ob 1s) goto 0x000968
0x000950:
    global.ratings = (+ global.ratings 2s)
0x000968:
    if !(bool (instance_exists[]:int32 (var 403s))) goto 0x0009AC
0x000980:
    if !(>= 403.turns 20s) goto 0x0009AC
0x000994:
    global.ratings = (+ global.ratings 2s)
0x0009AC:
    if !(== global.myfight 0s) goto 0x0009D4
0x0009C0:
    push (== global.mnfight 0s)
    goto 0x0009D8
0x0009D4:
    push 0s
0x0009D8:
    if !pop goto 0x0009E8
0x0009DC:
    self.boastmode = 0s
0x0009E8:
    if !(bool (instance_exists[]:int32 (var 409s))) goto 0x000A0C
0x000A00:
    self.boastmode = 0s
0x000A0C:
    if !(== self.heel 1s) goto 0x000A5C
0x000A20:
    if !(== global.myfight 0s) goto 0x000A48
0x000A34:
    push (== global.mnfight 0s)
    goto 0x000A4C
0x000A48:
    push 0s
0x000A4C:
    if !pop goto 0x000A5C
0x000A50:
    self.heel = 0s
0x000A5C:
    call (event_user[]:int32 (var 1s))
    if !(== self.novel_armor 1s) goto 0x000AB0
0x000A84:
    self.curtype = 6s
    call (event_user[]:int32 (var 0s))
    self.novel_armor = 0s
0x000AB0:
    if !(== global.mnfight 0s) goto 0x000AD8
0x000AC4:
    push (== global.myfight 0s)
    goto 0x000ADC
0x000AD8:
    push 0s
0x000ADC:
    if !pop goto 0x000B78
0x000AE0:
    self.timeloss = (+ self.timeloss 1s)
    self.o_o = (+ self.o_o 1s)
    if !(> self.o_o 3s) goto 0x000B30
0x000B24:
    self.o_o = 0s
0x000B30:
    if !(< self.timeloss 4000s) goto 0x000B58
0x000B44:
    push (== self.o_o 0s)
    goto 0x000B5C
0x000B58:
    push 0s
0x000B5C:
    if !pop goto 0x000B78
0x000B60:
    global.ratings = (- global.ratings 1s)
0x000B78:
    exit
