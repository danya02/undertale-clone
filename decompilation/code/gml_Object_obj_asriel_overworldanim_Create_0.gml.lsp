0x000000:
    self.image_speed = 0s
    self.rsprite = 2421s
    self.lsprite = 2424s
    self.dsprite = 2417s
    self.usprite = 2419s
    self.sprite_index = 2416s
    self.con = 1s
    self.timer = 0s
    stog.alarm[4s] = 200s
    self.powered = 0s
    self.emerge = 0s
    call (instance_create[]:int32 (var 1527s) (var 0s) (var 0s))
    self.mc_real = (instance_create[]:int32 (var 1570s) (+ self.y 60s) self.x)
    push 0s
    stog.visible* = (int32 self.mc_real)
    push 1s
    stog.cutscene* = (int32 self.mc_real)
    self.mc = (scr_marker[]:int32 (var 1044s) (+ self.y 60s) self.x)
    push 0s
    stog.image_speed* = (int32 self.mc)
    push (+ self.depth 3s)
    stog.depth* = (int32 self.mc)
    global.facing = 2s
    global.interact = 1s
    self.thisy = self.ystart
    self.musicbox = (caster_load[]:int32 (var "music/musicbox.ogg"))
    self.xpart = (caster_load[]:int32 (var "music/xpart_back.ogg"))
0x0001DC:
    exit
