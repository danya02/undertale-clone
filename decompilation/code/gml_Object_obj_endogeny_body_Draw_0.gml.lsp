0x000000:
    self.xx = (- (random[]:int32 self.shaker) (random[]:int32 self.shaker))
    self.yy = (- (random[]:int32 self.shaker) (random[]:int32 self.shaker))
    if !(== self.spared 0s) goto 0x000154
0x00006C:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.yy) (+ self.x self.xx) (var 0s) (var 715s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.yy) (+ self.x self.xx) (floor[]:int32 self.mouth) (var 717s))
0x000154:
    if !(== self.spared 1s) goto 0x000248
0x000168:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.yy) (+ self.x self.xx) (var 0s) (var 716s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y self.yy) (+ self.x self.xx) (var 0s) (var 717s))
0x000248:
    self.mouth = (+ self.mouth self.mouthspeed)
    if !(== self.spared 1s) goto 0x000290
0x000278:
    self.mouthspeed = 0s
    self.shaker = 0s
0x000290:
    if !(== self.fader 1s) goto 0x0002D8
0x0002A4:
    if !(> self.image_alpha 0s) goto 0x0002D8
0x0002B8:
    self.image_alpha = (- self.image_alpha 0.02d)
0x0002D8:
    exit
