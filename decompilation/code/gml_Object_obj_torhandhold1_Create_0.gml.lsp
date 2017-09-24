0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    global.plot = 7.5d
    self.image_speed = 0s
    self.dsprite = 1113s
    self.usprite = 1117s
    self.lsprite = 1108s
    self.rsprite = 1114s
    self.dtsprite = 1105s
    self.utsprite = 1111s
    self.ltsprite = 1110s
    self.rtsprite = 1109s
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 0s
    [obj_mainchara].visible = 0s
    [obj_mainchara].y = (+ self.y 28s)
    call (path_start[]:int32 (var 0s) (var 0s) (var 1s) (var 14s))
    global.phasing = 1s
    [obj_spiketile2].solid = 0s
    pushenv 1570s 0x000174
0x000148:
    call (path_start[]:int32 (var 0s) (var 0s) (var 1s) (var 14s))
0x000174:
    popenv 0x000148
0x000178:
    global.interact = 6s
    self.conversation = 0s
    self.phone = 0s
0x00019C:
    exit
