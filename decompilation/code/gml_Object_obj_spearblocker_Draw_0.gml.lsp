0x000000:
    call (draw_set_circle_precision[]:int32 (var 12s))
    if !(< self.flash 2s) goto 0x000040
0x000028:
    call (draw_set_color[]:int32 self.x_blue)
    goto 0x000054
0x000040:
    call (draw_set_color[]:int32 (var 255s))
0x000054:
    self.flash = (- self.flash 1s)
    self.t = (degtorad[]:int32 self.dir)
    self.r = 30s
    call (draw_line_width[]:int32 (var 3s) (+ (+ self.y (* (sin[]:int32 self.t) self.r)) (* (cos[]:int32 self.t) self.r)) (+ (+ self.x (* (- (cos[]:int32 self.t)) self.r)) (* (sin[]:int32 self.t) self.r)) (+ (+ self.y (* (sin[]:int32 self.t) self.r)) (* (- (cos[]:int32 self.t)) self.r)) (+ (- self.x (* (cos[]:int32 self.t) self.r)) (* (- (sin[]:int32 self.t)) self.r)))
    call (draw_set_color[]:int32 self.x_blue)
    call (draw_line_width[]:int32 (var 3s) (+ (+ self.y (/ (* (sin[]:int32 (- self.t 0.2d)) self.r) (double 2s))) (/ (* (cos[]:int32 (- self.t 0.2d)) self.r) (double 2s))) (+ (+ self.x (/ (* (- (cos[]:int32 (- self.t 0.2d))) self.r) (double 2s))) (/ (* (sin[]:int32 (- self.t 0.2d)) self.r) (double 2s))) (+ (+ self.y (* (sin[]:int32 self.t) self.r)) (* (- (cos[]:int32 self.t)) self.r)) (+ (- self.x (* (cos[]:int32 self.t) self.r)) (* (- (sin[]:int32 self.t)) self.r)))
    call (draw_set_color[]:int32 (var 32768))
    call (draw_circle[]:int32 (var 1s) self.r self.y self.x)
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0003FC
0x0003F0:
    self.idealdir = 90s
0x0003FC:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000420
0x000414:
    self.idealdir = 270s
0x000420:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000444
0x000438:
    self.idealdir = 0s
0x000444:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000468
0x00045C:
    self.idealdir = 180s
0x000468:
    if !(!= self.dir self.idealdir) goto 0x000788
0x000480:
    if !(== self.idealdir 0s) goto 0x0004A8
0x000494:
    push (> self.dir 180s)
    goto 0x0004AC
0x0004A8:
    push 0s
0x0004AC:
    if !pop goto 0x0004D4
0x0004B0:
    self.neg = 1s
    self.dir = (- self.dir 360s)
0x0004D4:
    if !(>= self.dir 0s) goto 0x000510
0x0004E8:
    if !(< self.dir 90s) goto 0x000510
0x0004FC:
    push (== self.idealdir 270s)
    goto 0x000514
0x000510:
    push 0s
0x000514:
    if !pop goto 0x000530
0x000518:
    self.neg = 2s
    self.dir = 360s
0x000530:
    if !(== self.neg 0s) goto 0x000608
0x000544:
    self.dir = (% self.dir 360s)
    self.dif = (- self.idealdir self.dir)
    self.dir = (+ self.dir (* self.dif 0.666666666666667d))
    if !(< self.dir 0s) goto 0x0005D0
0x0005B8:
    self.dir = (+ self.dir 360s)
0x0005D0:
    if !(< (abs[]:int32 self.dif) 15s) goto 0x000608
0x0005EC:
    self.dir = self.idealdir
    self.neg = 0s
0x000608:
    if !(== self.neg 1s) goto 0x0006D8
0x00061C:
    self.dir = (% self.dir 360s)
    self.dif = (abs[]:int32 (- self.idealdir self.dir))
    self.dir = (+ self.dir (* self.dif 0.666666666666667d))
    if !(< (abs[]:int32 (- (abs[]:int32 self.idealdir) (abs[]:int32 self.dir))) 15s) goto 0x0006D8
0x0006BC:
    self.dir = self.idealdir
    self.neg = 0s
0x0006D8:
    if !(== self.neg 2s) goto 0x000788
0x0006EC:
    self.dif = (- self.idealdir self.dir)
    self.dir = (+ self.dir (* self.dif 0.666666666666667d))
    if !(< (abs[]:int32 (- (abs[]:int32 self.idealdir) (abs[]:int32 self.dir))) 15s) goto 0x000788
0x00076C:
    self.dir = self.idealdir
    self.neg = 0s
0x000788:
    if !(== self.old 1s) goto 0x000AC8
0x00079C:
    if !(!= self.dir self.idealdir) goto 0x000AC8
0x0007B4:
    if !(== (- self.dir self.idealdir) 180s) goto 0x0008F4
0x0007D4:
    if !(== self.dir 0s) goto 0x0007FC
0x0007E8:
    push (== self.idealdir 180s)
    goto 0x000800
0x0007FC:
    push 0s
0x000800:
    if !pop goto 0x00081C
0x000804:
    self.dir = (- self.dir 90s)
0x00081C:
    if !(== self.dir 90s) goto 0x000844
0x000830:
    push (== self.idealdir 270s)
    goto 0x000848
0x000844:
    push 0s
0x000848:
    if !pop goto 0x000864
0x00084C:
    self.dir = (- self.dir 90s)
0x000864:
    if !(== self.dir 180s) goto 0x00088C
0x000878:
    push (== self.idealdir 0s)
    goto 0x000890
0x00088C:
    push 0s
0x000890:
    if !pop goto 0x0008AC
0x000894:
    self.dir = (- self.dir 90s)
0x0008AC:
    if !(== self.dir 270s) goto 0x0008D4
0x0008C0:
    push (== self.idealdir 90s)
    goto 0x0008D8
0x0008D4:
    push 0s
0x0008D8:
    if !pop goto 0x0008F4
0x0008DC:
    self.dir = (- self.dir 90s)
0x0008F4:
    if !(> self.dir 0s) goto 0x000930
0x000908:
    if !(< self.dir 180s) goto 0x000930
0x00091C:
    push (== self.idealdir 0s)
    goto 0x000934
0x000930:
    push 0s
0x000934:
    if !pop goto 0x000950
0x000938:
    self.dir = (- self.dir 60s)
0x000950:
    if !(> self.dir 180s) goto 0x00098C
0x000964:
    if !(< self.dir 360s) goto 0x00098C
0x000978:
    push (== self.idealdir 180s)
    goto 0x000990
0x00098C:
    push 0s
0x000990:
    if !pop goto 0x0009AC
0x000994:
    self.dir = (- self.dir 60s)
0x0009AC:
    if !(> self.dir 90s) goto 0x0009E8
0x0009C0:
    if !(< self.dir 270s) goto 0x0009E8
0x0009D4:
    push (== self.idealdir 90s)
    goto 0x0009EC
0x0009E8:
    push 0s
0x0009EC:
    if !pop goto 0x000A08
0x0009F0:
    self.dir = (- self.dir 60s)
0x000A08:
    if (> self.dir 270s) goto 0x000A4C
0x000A1C:
    if !(<= self.dir 0s) goto 0x000A44
0x000A30:
    push (== self.idealdir 270s)
    goto 0x000A48
0x000A44:
    push 0s
0x000A48:
    goto 0x000A50
0x000A4C:
    push 1s
0x000A50:
    if !pop goto 0x000A6C
0x000A54:
    self.dir = (- self.dir 60s)
0x000A6C:
    self.dir = (+ self.dir 30s)
    self.dir = (% self.dir 360s)
    if !(< self.dir 0s) goto 0x000AC8
0x000AB0:
    self.dir = (+ self.dir 360s)
0x000AC8:
    self.tideal = (degtorad[]:int32 self.idealdir)
    self.col = (collision_line[]:int32 (var 1s) (var 0s) (var 265s) (+ (+ self.y (* (sin[]:int32 self.tideal) self.r)) (* (cos[]:int32 self.tideal) self.r)) (+ (+ self.x (* (- (cos[]:int32 self.tideal)) self.r)) (* (sin[]:int32 self.tideal) self.r)) (+ (+ self.y (* (sin[]:int32 self.tideal) self.r)) (* (- (cos[]:int32 self.tideal)) self.r)) (+ (- self.x (* (cos[]:int32 self.tideal) self.r)) (* (- (sin[]:int32 self.tideal)) self.r)))
    if !(!= self.col -4s) goto 0x000C5C
0x000C48:
    call (event_user[]:int32 (var 4s))
0x000C5C:
    self.col2 = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 265s) (+ self.y 5s) (+ self.x 5s) (- self.y 5s) (- self.x 5s))
    if !(!= self.col2 -4s) goto 0x000CEC
0x000CD8:
    call (event_user[]:int32 (var 5s))
0x000CEC:
    exit
