0x000000:
    call (caster_free[]:int32 (var -3s))
    global.interact = 0s
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    global.faceemotion = 0s
    global.facechoice = 0s
    self.face_speed = 0.2d
    self.face_index = 0s
    self.cn = -2s
    stog.alarm[4s] = 15s
    self.skip = 0s
    global.inbattle = 1s
    self.choice = 0s
    self.choicer = 0s
    global.border = 11s
    call (SCR_BORDERSETUP[]:int32 (var 0s))
    call (instance_create[]:int32 (var 759s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 761s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 758s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 760s) (var 0s) (var 0s))
    self.datemusic = (caster_load[]:int32 (var "music/date.ogg"))
    self.lab = (caster_load[]:int32 (var "music/lab.ogg"))
    self.datevolume = 1s
    self.sha = 0s
    self.haty = 0s
    self.blcon = 5475834
    self.present = 0s
    [obj_adate_body].x = self.room_width
    stog.flag[20s] = 0s
    self.fadeamt = 0s
    self.fadeouter = 0s
    self.pitch = 1s
0x00023C:
    exit
