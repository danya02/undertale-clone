0x000000:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 0.3d))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (- 1s (/ self.xreveal (double 40s))))
    call (draw_rectangle[]:int32 (var 0s) (var 300s) (- 160s self.xreveal) (var -10s) (var -10s))
    call (draw_rectangle[]:int32 (var 0s) (var 300s) (var 340s) (var -10s) (+ 160s self.xreveal))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.con 1s) goto 0x000138
0x00012C:
    global.interact = 1s
0x000138:
    if !(== self.con 2s) goto 0x0001D8
0x00014C:
    if !(== self.xreveal 0s) goto 0x000174
0x000160:
    call (snd_play[]:int32 (var 13s))
0x000174:
    self.xreveal = (+ self.xreveal 2s)
    if !(>= self.xreveal 20s) goto 0x0001D8
0x0001A0:
    call (snd_play[]:int32 (var 21s))
    self.xreveal = 20s
    global.interact = 0s
    self.con = 3s
0x0001D8:
    exit
