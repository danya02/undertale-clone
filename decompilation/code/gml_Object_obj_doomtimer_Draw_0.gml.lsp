0x000000:
    self.dx = (floor[]:int32 (/ self.doomtime (double 30s)))
    self.dx2 = (floor[]:int32 (/ self.doomtime (double 180s)))
    if !(== global.inbattle 1s) goto 0x00013C
0x00005C:
    call (draw_set_font[]:int32 (var 1s))
    call (draw_set_color[]:int32 (var 65535))
    if !(>= self.dx 120s) goto 0x0000A8
0x00009C:
    self.truezero = 1s
0x0000A8:
    if !(== self.truezero 0s) goto 0x000100
0x0000BC:
    call (draw_text[]:int32 (+ "TIME:" (string[]:int32 (- 120s self.dx))) (var 20s) (var 500s))
    goto 0x00013C
0x000100:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_text[]:int32 (var "TIME:0") (var 20s) (var 500s))
0x00013C:
    exit
