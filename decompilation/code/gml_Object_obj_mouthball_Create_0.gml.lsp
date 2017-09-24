0x000000:
    self.siner = 0s
    self.xprev3 = self.x
    self.yprev3 = self.y
    self.xprev2 = self.x
    self.yprev2 = self.y
    self.xprev4 = self.xprev3
    self.yprev4 = self.yprev3
    self.num = 5s
    self.size = 0.8d
    stog.alarm[0s] = 1s
    stog.alarm[1s] = 6s
    self.bounces = 0s
    self.pb = 0s
    self.maxer = 0s
    self.visible = 0s
    self.image_xscale = (+ self.maxer (* (sin[]:int32 (/ self.siner (double 6s))) 0.1d))
    self.image_yscale = (+ self.maxer (* (sin[]:int32 (/ self.siner (double 6s))) 0.1d))
    self.dt = (instance_create[]:int32 (var 1658s) self.y self.x)
    call (instance_create[]:int32 (var 1633s) self.y self.x)
    pushenv 1585s 0x0001DC
0x0001B8:
    call (caster_play[]:int32 (var 1s) (var 1s) self.sfx_generate)
0x0001DC:
    popenv 0x0001B8
0x0001E0:
    self.image_blend = (merge_color[]:int32 (var 0.3d) (var 16777215) (var 32768))
0x000218:
    exit
