0x000000:
    self.image_speed = 0s
    self.moving = 0s
    self.x1 = 101s
    self.y1 = 60s
    self.x2 = (- (- 220s self.sprite_width) 1s)
    self.y2 = 115s
    call (caster_free[]:int32 (var -3s))
    self.beat = (caster_load[]:int32 (var "music/coolbeat.ogg"))
    global.interact = 1s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0000BC
0x0000B0:
    [obj_mainchara].visible = 0s
0x0000BC:
    self.mc = (instance_create[]:int32 (var 1363s) self.y self.x)
    push 1051s
    stog.sprite_index* = (int32 self.mc)
    push 500020
    stog.depth* = (int32 self.mc)
    push 1s
    stog.visible* = (int32 self.mc)
    self.canmove = 0s
    self.playing = 0s
    self.con = 0s
    self.mclock = 1s
    stog.alarm[3s] = 30s
    self.GR = 0s
0x000180:
    exit
