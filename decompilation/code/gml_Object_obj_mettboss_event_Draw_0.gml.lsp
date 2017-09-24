0x000000:
    if !(== self.drawblack 1s) goto 0x000110
0x000014:
    if !(< self.bl 20s) goto 0x000040
0x000028:
    self.bl = (+ self.bl 4s)
0x000040:
    if !(> self.bl 20s) goto 0x000074
0x000054:
    self.bl = 20s
    call (snd_play[]:int32 (var 106s))
0x000074:
    call (draw_set_color[]:int32 self.x_maroon)
    call (draw_rectangle[]:int32 (var 0s) (var 880s) (var 140s) (+ 840s self.bly) (+ 140s self.bl))
    call (draw_rectangle[]:int32 (var 0s) (var 880s) (var 180s) (+ 840s self.bly) (- 180s self.bl))
0x000110:
    exit
