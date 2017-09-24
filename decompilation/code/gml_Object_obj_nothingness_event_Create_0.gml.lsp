0x000000:
    self.skip = 0s
    self.con = 0s
    stog.alarm[0s] = 18000s
    self.wind = (caster_load[]:int32 (var "music/f_wind2.ogg"))
    call (caster_loop[]:int32 (var 0.7d) (var 0.8d) self.wind)
    [obj_time].canquit = 0s
    self.mc = (instance_create[]:int32 (var 1570s) (var -20s) (var -20s))
    push 0s
    stog.visible* = (int32 self.mc)
    call (window_set_caption[]:int32 (var " "))
0x0000E0:
    exit
