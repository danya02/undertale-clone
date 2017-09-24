0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000180
0x000018:
    self.x1 = (- 1570.x 10s)
    self.x2 = (+ 1570.x 30s)
    self.y1 = (- 1570.y 5s)
    self.y2 = (+ 1570.y 35s)
    call (draw_sprite_ext[]:int32 self.glowamt (var 16777215) (var 0s) (var 1s) (var 1s) self.y1 self.x1 (var 0s) (var 1556s))
    call (draw_set_alpha[]:int32 self.glowamt)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(< self.glowamt 0.98d) goto 0x000180
0x000128:
    if !(> global.plot 117s) goto 0x000160
0x00013C:
    self.glowamt = (+ self.glowamt 0.001d)
    goto 0x000180
0x000160:
    self.glowamt = (+ self.glowamt 0.003d)
0x000180:
    exit
