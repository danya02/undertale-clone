0x000000:
    self.timer = -30s
    self.death = 0s
    if !(bool (file_exists[]:int32 (var "system_information_963"))) goto 0x000040
0x000034:
    self.death = 1s
0x000040:
    self.doreground = (instance_create[]:int32 (var 1363s) self.y self.x)
    push 2464s
    stog.sprite_index* = (int32 self.doreground)
    push 1s
    stog.visible* = (int32 self.doreground)
    push 500s
    stog.depth* = (int32 self.doreground)
    self.fix = 0s
    self.image_index = 0s
    self.image_speed = 0s
    self.dooropen = (caster_load[]:int32 (var "music/end/dooropen.ogg"))
    self.crickets = (caster_load[]:int32 (var "music/end/crickets.ogg"))
    self.doorclose = (caster_load[]:int32 (var "music/end/doorclose.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 1s) self.crickets)
    global.inbattle = 0s
0x000160:
    exit
