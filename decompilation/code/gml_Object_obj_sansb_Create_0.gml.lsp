0x000000:
    if !(< global.plot 201s) goto 0x000020
0x000014:
    global.plot = 201s
0x000020:
    call (scr_monstersetup[]:int32 )
    self.image_speed = 0s
    self.part1 = 517s
    self.mypart1 = (instance_create[]:int32 self.part1 self.y self.x)
    stog.alarm[9s] = 8s
    self.hurtanim = 0s
    self.hurtsound = 96s
    self.talked = 0s
    self.whatiheard = -1s
    self.attacked = 0s
    self.killed = 0s
    global.heard = 0s
    self.takedamage = 0s
    self.mercymod = -99999
    self.sha = 0s
    self.shb = 0s
    self.ht = 100s
    self.wd = 120s
    self.con = 1s
    stog.alarm[4s] = 30s
    [obj_borderparent].visible = 0s
    global.mnfight = 99s
    global.myfight = 99s
    global.faceemotion = 4s
    self.normalfight = 0s
    [obj_heart].visible = 0s
    self.beamsfx = (caster_load[]:int32 (var "music/sfx/sfx_rainbowbeam_1.ogg"))
    self.beamsfx_a = (caster_load[]:int32 (var "music/sfx/sfx_a_gigatalk.ogg"))
    self.beam_up_sfx = (caster_load[]:int32 (var "music/sfx/sfx_segapower.ogg"))
    self.cutsfx = (caster_load[]:int32 (var "music/sfx/sfx_cinematiccut.ogg"))
    self.p_cut = 0s
    self.p_beam = 0s
    self.p_power = 0s
    self.hit_try = 0s
    self.hit_reached = 0s
    self.timer_on = 0s
    self.turn = 0s
    self.turns = 0s
    self.part = 0s
    self.skip = 0s
    if !(== self.skip 0s) goto 0x0002C4
0x000284:
    self.birdnoise = (caster_load[]:int32 (var "music/birdnoise.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.birdnoise)
0x0002C4:
    if !(== self.skip 1s) goto 0x0003AC
0x0002D8:
    self.con = -1s
    pushenv (int32 self.mypart1) 0x000300
0x0002F4:
    self.bounce = 1s
0x000300:
    popenv 0x0002F4
0x000304:
    [obj_borderparent].visible = 1s
    stog.msg[0s] = "* Skipped ahead."
    global.mnfight = 3s
    global.myfight = 0s
    global.faceemotion = 0s
    self.normalfight = 1s
    [obj_heart].visible = 1s
    stog.flag[271s] = 1s
    call (caster_loop[]:int32 (var 0.95d) (var 0.95d) global.batmusic)
0x0003AC:
    self.drama = 0s
    self.mercy_death = 0s
    self.nx = 0s
    global.seriousbattle = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.ini_f = (ini_read_real[]:int32 (var 0s) (var "F") (var "Sans"))
    self.intro = (ini_read_real[]:int32 (var 0s) (var "Intro") (var "Sans"))
    call (ini_write_real[]:int32 (+ self.ini_f 1s) (var "F") (var "Sans"))
    call (ini_close[]:int32 )
0x000494:
    exit
