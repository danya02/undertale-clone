0x000000:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    global.faceemotion = 0s
    global.facechoice = 0s
    self.face_speed = 0.2d
    self.face_index = 0s
    self.cn = -2s
    stog.alarm[2s] = 15s
    global.inbattle = 1s
    self.joke = 0s
    self.choice = 0s
    self.choicer = 0s
    global.border = 11s
    call (SCR_BORDERSETUP[]:int32 (var 0s))
    call (instance_create[]:int32 (var 759s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 761s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 758s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 760s) (var 0s) (var 0s))
    self.datemusic = (caster_load[]:int32 (var "music/date.ogg"))
    self.datefight = (caster_load[]:int32 (var "music/date_fight.ogg"))
    self.datetense = (caster_load[]:int32 (var "music/date_tense.ogg"))
    self.datevolume = 1s
    self.sha = 0s
    self.haty = 0s
    self.blcon = 5475834
    self.present = 0s
    self.graph = 4384134
    self.friendgraph = (instance_create[]:int32 (var 161s) (var -64s) (var 256s))
    self.textskip = 1s
0x000234:
    exit
