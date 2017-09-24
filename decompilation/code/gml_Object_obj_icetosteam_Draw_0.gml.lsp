0x000000:
    call (draw_sprite_ext[]:int32 (* (- 1s self.whitepro) self.image_alpha) (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x (var 0s) (var 917s))
    call (draw_sprite_ext[]:int32 (* self.whitepro self.image_alpha) (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x (var 0s) (var 918s))
    self.timer = (+ self.timer 1s)
    if !(< self.timer 30s) goto 0x000114
0x0000FC:
    self.x = (+ self.x 3s)
0x000114:
    if !(== self.timer 30s) goto 0x00013C
0x000128:
    self.gravity = 0.3d
0x00013C:
    if !(== self.timer 52s) goto 0x00017C
0x000150:
    call (snd_play[]:int32 (var 91s))
    self.gravity = 0s
    self.vspeed = 0s
0x00017C:
    if !(>= self.timer 53s) goto 0x00026C
0x000190:
    call (instance_create[]:int32 (var 58s) self.y (+ (- self.x 19s) (random[]:int32 (var 38s))))
    self.whitepro = (+ self.whitepro 0.05d)
    self.image_yscale = (- self.image_yscale 0.03d)
    self.y = (+ self.y 0.5d)
    if !(< self.image_yscale 0.3d) goto 0x00026C
0x00024C:
    self.image_alpha = (- self.image_alpha 0.1d)
0x00026C:
    if !(< self.image_yscale 0.01d) goto 0x000294
0x000288:
    self.d = 1s
0x000294:
    if !(>= self.timer 90s) goto 0x0002B4
0x0002A8:
    self.d = 1s
0x0002B4:
    if !(== self.d 1s) goto 0x000378
0x0002C8:
    self.x = -30s
    self.y = (+ self.ystart (floor[]:int32 (random[]:int32 (var 22s))))
    self.whitepro = 0s
    self.timer = -10s
    self.d = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.whitepro = 0s
    self.gravity = 0s
    self.hspeed = 0s
    self.vspeed = 0s
    self.image_alpha = 1s
0x000378:
    exit
