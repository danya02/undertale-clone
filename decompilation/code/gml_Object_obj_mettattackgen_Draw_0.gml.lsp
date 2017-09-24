0x000000:
    if !(<= global.turntimer 9s) goto 0x000020
0x000014:
    self.dark = 0s
0x000020:
    if !(== self.dark 1s) goto 0x000050
0x000034:
    push (< self.darkamt 0.5d)
    goto 0x000054
0x000050:
    push 0s
0x000054:
    if !pop goto 0x000078
0x000058:
    self.darkamt = (+ self.darkamt 0.05d)
0x000078:
    if !(== self.dark 0s) goto 0x0000A0
0x00008C:
    push (> self.darkamt 0s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000C8
0x0000A8:
    self.darkamt = (- self.darkamt 0.05d)
0x0000C8:
    call (draw_set_alpha[]:int32 self.darkamt)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -20s) (var -20s))
    call (draw_set_alpha[]:int32 (var 1s))
0x000138:
    exit
