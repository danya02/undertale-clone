0x000000:
    self.splode = (+ self.splode 1s)
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    if !(< self.i 16s) goto 0x0001F0
0x000050:
    self.alp = (- (/ self.splode (double 12s)) (* 0.06d self.i))
    if !(< self.alp 0s) goto 0x0000A8
0x00009C:
    self.alp = 0s
0x0000A8:
    if !(> self.alp 1s) goto 0x0000C8
0x0000BC:
    self.alp = 1s
0x0000C8:
    call (draw_set_alpha[]:int32 self.alp)
    call (draw_rectangle[]:int32 (var 0s) (- (/ self.room_height (double 2s)) (* 8s self.i)) self.room_width (- (/ self.room_height (double 2s)) (* 8s (+ self.i 1s))) (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ (/ self.room_height (double 2s)) (* 8s self.i)) self.room_width (+ (/ self.room_height (double 2s)) (* 8s (+ self.i 1s))) (var 0s))
    self.i = (+ self.i 1s)
    goto 0x00003C
0x0001F0:
    call (draw_set_alpha[]:int32 (var 1s))
0x000204:
    exit
