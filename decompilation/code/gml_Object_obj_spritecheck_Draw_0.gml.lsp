0x000000:
    global.awfultest = (+ global.awfultest 1s)
    if !(bool (sprite_exists[]:int32 global.awfultest)) goto 0x0000F0
0x000030:
    self.ir = 0s
    if !(< self.ir 40s) goto 0x0000EC
0x000050:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (* self.ir 2s) 1s) (+ (* self.ir 2s) 1s) self.ir (floor[]:int32 global.awfultest))
    self.ir = (+ self.ir 1s)
    goto 0x00003C
0x0000EC:
    goto 0x000100
0x0000F0:
    self.ricardo = global.awfultest
0x000100:
    call (draw_set_font[]:int32 (var 1s))
    call (draw_set_color[]:int32 (var 16754964))
    call (draw_text[]:int32 self.ricardo (var 400s) (var 100s))
    call (draw_sprite[]:int32 (var 200s) (var 200s) (var 0s) (var 305s))
0x00017C:
    exit
