0x000000:
    if !(< self.dr 0.5d) goto 0x00003C
0x00001C:
    self.dr = (+ self.dr 0.1d)
0x00003C:
    if !(< global.turntimer 6s) goto 0x000070
0x000050:
    self.dr = (- self.dr 0.2d)
0x000070:
    call (draw_set_alpha[]:int32 self.dr)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(<= global.turntimer 0s) goto 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    exit
