0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    if !(<= global.testhp 0s) goto 0x000070
0x00002C:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Game Under") (var 20s) (var 100s))
    goto 0x0000B0
0x000070:
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "Big Wienener Zone.") (var 20s) (var 100s))
0x0000B0:
    call (draw_text[]:int32 (var "Hall of failure.") (var 80s) (var 100s))
    self.i = 26s
    if !(< self.i 57s) goto 0x000194
0x0000F8:
    push (+ (+ "Attack " (string[]:int32 self.i)) " : ")
    call (draw_text[]:int32 (+ -5s (string[]:int32 (int32 self.i):failure)) (+ 100s (* (- self.i 26s) 12s)) (var 50s))
    self.i = (+ self.i 1s)
    goto 0x0000E4
0x000194:
    call (draw_text[]:int32 (var "TAke a screenshot#of this every time#for balancing purposes.") (var 240s) (var 300s))
    call (draw_text[]:int32 (var "Hold SPACEBAR to restart from#Attack 30") (var 360s) (var 300s))
0x0001E4:
    exit
