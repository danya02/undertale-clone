0x000000:
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_index = 0s
    self.image_speed = 0s
    self.typeno = 0s
    self.typeamt = 2s
    stog.type[0s] = 1s
    stog.type[1s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[2s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[3s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[4s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[5s] = (choose[]:int32 (var 2s) (var 1s))
    stog.type[6s] = (choose[]:int32 (var 2s) (var 1s))
    self.flashtimer = 7s
    self.on = 0s
    self.con = 0s
    self.diff = 3s
    stog.alarm[3s] = 30s
    call (snd_play[]:int32 (var 106s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    self.flash = (caster_load[]:int32 (var "music/sfx_eyeflash.ogg"))
    [obj_asgoreb_body].visible = 0s
    [obj_asgorespear].color = 0s
    [obj_asgorespear].armtest = 0s
    [obj_asgorespear].visible = 0s
    self.x = (- 488.x 50s)
    self.y = 488.y
0x00023C:
    exit
