0x000000:
    global.inbattle = 1s
    global.facing = 2s
    stog.flag[20s] = 0s
    global.faceemotion = 0s
    self.image_speed = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.stepper = 0s
    self.doomcon = 0s
    self.shudder = 8s
    stog.flag[17s] = 1s
    [obj_borderparent].visible = 0s
    [obj_fakeheart].visible = 0s
    stog.alarm[2s] = 80s
    [obj_fakeheart].move = 0s
    self.memx = 748.x
    self.memy = 748.y
    self.wind = (caster_load[]:int32 (var "music/f_wind2.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) self.wind)
    self.vol = 0.8d
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    self.writing = 0s
    self.con = 0s
    self.remno = -1s
    self.idno = 834783
    self.fader = 0s
0x0001A8:
    exit
