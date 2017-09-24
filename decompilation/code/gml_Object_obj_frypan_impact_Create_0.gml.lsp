0x000000:
    self.image_speed = 1s
    self.ang = (* 6s (choose[]:int32 (var -1s) (var 1s)))
    self.size = 2s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.siner = 0s
    self.form = 0s
    self.crit = 0s
    self.pansfx = (caster_load[]:int32 (var "music/sfx_frypan.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.pansfx)
    self.i = 0s
    if !(< self.i 8s) goto 0x00016C
0x0000DC:
    self.g = (instance_create[]:int32 (var 730s) self.y self.x)
    push (/ (* self.i 360s) (double 8s))
    stog.direction* = (int32 self.g)
    push self.image_blend
    stog.image_blend* = (int32 self.g)
    self.i = (+ self.i 1s)
    goto 0x0000C8
0x00016C:
    stog.alarm[6s] = 70s
    stog.alarm[1s] = 1s
0x000194:
    exit
