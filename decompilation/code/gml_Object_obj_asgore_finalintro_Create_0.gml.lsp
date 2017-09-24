0x000000:
    global.batmusic = (caster_load[]:int32 (var "music/bergentruckung.ogg"))
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000048
0x00003C:
    self.murder = 1s
0x000048:
    self.image_speed = 0s
    self.image_index = 0s
    self.con = -10s
    self.face_index = 0s
    global.mnfight = -999s
    global.myfight = -999s
    [obj_heart].x = -999s
    [obj_fightbt].sprite_index = 6s
    [obj_itembt].sprite_index = 8s
    [obj_talkbt].sprite_index = 13s
    pushenv 754s 0x0000D4
0x0000C8:
    self.visible = 0s
0x0000D4:
    popenv 0x0000C8
0x0000D8:
    if !(== self.murder 0s) goto 0x000110
0x0000EC:
    call (instance_create[]:int32 (var 480s) 754.y 754.x)
0x000110:
    pushenv 185s 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    popenv 0x000118
0x000128:
    [obj_borderparent].visible = 0s
    global.faceemotion = 0s
    global.mercy = 2s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.skip = 0s
    push -5s
    if !(> 10s:tempvalue 0s) goto 0x0001BC
0x00018C:
    push -5s
    if !(< 493s:flag 12s) goto 0x0001BC
0x0001A8:
    push (== self.murder 0s)
    goto 0x0001C0
0x0001BC:
    push 0s
0x0001C0:
    if !pop goto 0x000204
0x0001C4:
    self.skip = 1s
    self.con = 2s
    stog.alarm[4s] = 15s
    call (caster_free[]:int32 (var -3s))
0x000204:
    [obj_heart].visible = 0s
    global.seriousbattle = 1s
    self.cutsound = (caster_load[]:int32 (var "music/sfx_cinematiccut.ogg"))
    self.swipesound = (caster_load[]:int32 (var "music/sfx_swipe.ogg"))
    self.special_end = 0s
    push -5s
    if !(>= 493s:flag 12s) goto 0x000290
0x00027C:
    push (== self.murder 0s)
    goto 0x000294
0x000290:
    push 0s
0x000294:
    if !pop goto 0x0002D0
0x000298:
    self.special_end = 1s
    self.con = -10s
    self.skip = 0s
    stog.alarm[4s] = 0s
0x0002D0:
    if !(== self.skip 0s) goto 0x0002F8
0x0002E4:
    push (== self.murder 0s)
    goto 0x0002FC
0x0002F8:
    push 0s
0x0002FC:
    if !pop goto 0x000324
0x000300:
    call (caster_play[]:int32 (var 1s) (var 1s) global.batmusic)
0x000324:
    if !(== self.murder 1s) goto 0x000344
0x000338:
    global.faceemotion = 1s
0x000344:
    exit
