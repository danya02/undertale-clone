0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000204
0x000018:
    self.x1 = (- 1570.x 10s)
    self.x2 = (+ 1570.x 30s)
    self.y1 = (- 1570.y 5s)
    self.y2 = (+ 1570.y 35s)
    call (draw_sprite_ext[]:int32 self.glowamt (var 16777215) (var 0s) (var 1s) (var 1s) self.y1 self.x1 (var 0s) (var 1556s))
    call (draw_set_alpha[]:int32 self.glowamt)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.glowyes 1s) goto 0x0001B0
0x000120:
    self.glowamt = (+ 0.5d (/ 1570.x (double 1200s)))
    self.curvol = (- self.maxvol (/ 1570.x (double 600s)))
    if !(<= self.curvol 0s) goto 0x000194
0x000188:
    self.curvol = 0s
0x000194:
    call (caster_set_volume[]:int32 self.curvol global.currentsong)
0x0001B0:
    if !(== self.glowyes 2s) goto 0x000204
0x0001C4:
    self.glowamt = (- self.glowamt 0.02d)
    if !(<= self.glowamt 0s) goto 0x000204
0x0001F8:
    call (instance_destroy[]:int32 )
0x000204:
    exit
