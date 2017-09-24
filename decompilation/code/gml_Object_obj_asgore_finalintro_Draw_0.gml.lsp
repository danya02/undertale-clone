0x000000:
    global.myfight = -999s
    if !(== self.con -10s) goto 0x000164
0x000020:
    [obj_heart].x = -999s
    global.mnfight = 999s
    global.myfight = 999s
    pushenv 782s 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    popenv 0x00004C
0x00005C:
    pushenv 785s 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    popenv 0x000064
0x000074:
    global.msc = 0s
    global.typer = 61s
    if !(== self.murder 0s) goto 0x000144
0x0000A0:
    stog.msg[0s] = "* (A strange light fills the&  room.^4) %"
    stog.msg[1s] = "* (Twilight is shining through&  the barrier.^4) %"
    stog.msg[2s] = "* (It seems your journey is&  finally over.^4) %"
    stog.msg[3s] = "     * (You're filled with&          DETERMINATION.^5) %%"
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    self.con = -9s
    goto 0x000164
0x000144:
    self.con = -8s
    stog.alarm[4s] = 10s
0x000164:
    if !(== self.con -9s) goto 0x000194
0x000178:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x0001E0
0x00019C:
    [obj_heart].x = -999s
    global.mnfight = 999s
    global.myfight = 999s
    self.con = -8s
    stog.alarm[4s] = 30s
0x0001E0:
    if !(== self.con -8s) goto 0x000218
0x0001F4:
    [obj_heart].x = -999s
    global.mnfight = 999s
    global.myfight = 999s
0x000218:
    if !(== self.con -7s) goto 0x00038C
0x00022C:
    pushenv 782s 0x000240
0x000234:
    call (instance_destroy[]:int32 )
0x000240:
    popenv 0x000234
0x000244:
    pushenv 785s 0x000258
0x00024C:
    call (instance_destroy[]:int32 )
0x000258:
    popenv 0x00024C
0x00025C:
    global.typer = 62s
    stog.msg[0s] = "Human.../"
    stog.msg[1s] = "\\E1It was&nice to&meet&you./"
    stog.msg[2s] = "\\E0Goodbye./%%"
    self.con = -6s
    if !(== self.murder 1s) goto 0x00033C
0x0002D0:
    stog.msg[0s] = "\\E1Now,&now./"
    stog.msg[1s] = "There's&no need&to&fight./"
    stog.msg[2s] = "Why not&settle&this.../"
    stog.msg[3s] = "Over a&nice cup&of tea?/%%"
    self.con = -120s
0x00033C:
    self.blcon2 = (instance_create[]:int32 (var 186s) (var 120s) (var 500s))
    self.blconwd2 = (instance_create[]:int32 (var 782s) (var 130s) (var 525s))
0x00038C:
    if !(== self.con -6s) goto 0x0003BC
0x0003A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if !pop goto 0x000438
0x0003C4:
    pushenv 186s 0x0003D8
0x0003CC:
    call (instance_destroy[]:int32 )
0x0003D8:
    popenv 0x0003CC
0x0003DC:
    self.con = 3s
    if !(== self.special_end 1s) goto 0x000438
0x0003FC:
    self.con = -100s
    call (instance_create[]:int32 (var 1675s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x000438:
    if !(== self.con 2s) goto 0x000470
0x00044C:
    [obj_heart].x = -999s
    global.mnfight = 999s
    global.myfight = 999s
0x000470:
    if !(== self.con 3s) goto 0x0004F0
0x000484:
    call (snd_play[]:int32 (var 13s))
    self.image_index = 0s
    self.sprite_index = 605s
    self.image_speed = 0s
    self.con = 6.1d
    stog.alarm[4s] = 5s
    self.hspeed = -20s
0x0004F0:
    if !(== self.con 6.1d) goto 0x000594
0x00050C:
    self.sc = (scr_afterimage[]:int32 (var 0s) (var 0s))
    push 2s
    stog.size* = (int32 self.sc)
    push 2s
    stog.image_xscale* = (int32 self.sc)
    push 2s
    stog.image_yscale* = (int32 self.sc)
    push 0.9d
    stog.image_alpha* = (int32 self.sc)
0x000594:
    if !(== self.con 7.1d) goto 0x0005DC
0x0005B0:
    self.hspeed = 0s
    self.con = 7s
    stog.alarm[4s] = 20s
0x0005DC:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(< self.con 3s) goto 0x0006AC
0x000644:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 12s) (+ self.x 138s) global.faceemotion (var 604s))
0x0006AC:
    if !(== self.con 8s) goto 0x000858
0x0006C0:
    self.image_speed = 0.5d
    if !(== self.image_index 2s) goto 0x00070C
0x0006E8:
    call (caster_play[]:int32 (var 1s) (var 1s) self.cutsound)
0x00070C:
    if !(>= self.image_index 2s) goto 0x000734
0x000720:
    push (< self.image_index 4s)
    goto 0x000738
0x000734:
    push 0s
0x000738:
    if !pop goto 0x0007E0
0x00073C:
    call (draw_set_alpha[]:int32 (var 0.5d))
    if !(== self.image_index 3s) goto 0x000780
0x00076C:
    call (draw_set_alpha[]:int32 (var 1s))
0x000780:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -1s) (var -1s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0007E0:
    if !(== self.image_index 4s) goto 0x000818
0x0007F4:
    call (scr_shake[]:int32 (var 2s) (var 3s) (var 6s))
0x000818:
    if !(>= self.image_index 13s) goto 0x000858
0x00082C:
    self.image_speed = 0s
    self.con = 9s
    stog.alarm[4s] = 20s
0x000858:
    if !(== self.con 9s) goto 0x000884
0x00086C:
    self.image_speed = 0s
    self.image_index = 13s
0x000884:
    if !(== self.con 10s) goto 0x0009C0
0x000898:
    [obj_battlecontroller].drawrect = 0s
    self.background_color = 16777215
    self.image_blend = 0s
    [obj_fightbt].image_blend = 0s
    [obj_itembt].image_blend = 0s
    [obj_talkbt].image_blend = 0s
    self.image_index = 0s
    self.image_speed = 0s
    self.g = (instance_create[]:int32 (var 481s) (var 140s) (var 268s))
    push 255s
    stog.image_blend* = (int32 self.g)
    push 2s
    stog.image_xscale* = (int32 self.g)
    push 2s
    stog.image_yscale* = (int32 self.g)
    [obj_mercybutton_shatter].image_blend = 0s
    self.con = 12s
    stog.alarm[4s] = 20s
    self.vvv = 2.5d
    call (snd_play[]:int32 (var 13s))
0x0009C0:
    if !(== self.con 12s) goto 0x000BD4
0x0009D4:
    push 14.3d
    stog.hspeed* = (int32 self.g)
    push -13s
    stog.vspeed* = (int32 self.g)
    stog.image_angle* = (- (int32 self.g):image_angle 4.5d)
    self.hspeed = (/ (- 500s self.x) (double 20s))
    push -1000000
    stog.depth* = (int32 self.g)
    self.sc = (scr_afterimage[]:int32 (var 0s) (var 0s))
    push 2s
    stog.size* = (int32 self.sc)
    push 2s
    stog.image_xscale* = (int32 self.sc)
    push 2s
    stog.image_yscale* = (int32 self.sc)
    push 0.9d
    stog.image_alpha* = (int32 self.sc)
    push 100s
    stog.depth* = (int32 self.sc)
    pushenv (int32 self.g) 0x000BD0
0x000B2C:
    push (int32 self.g)
    self.sc = (scr_afterimage[]:int32 (var 0s) (var 0s))
    push -99999
    stog.depth* = (int32 self.sc)
    push 2s
    stog.size* = (int32 self.sc)
    push 2s
    stog.image_xscale* = (int32 self.sc)
    push 2s
    stog.image_yscale* = (int32 self.sc)
    push 0.9d
    stog.image_alpha* = (int32 self.sc)
0x000BD0:
    popenv 0x000B2C
0x000BD4:
    if !(== self.con 13s) goto 0x000C7C
0x000BE8:
    if !(> self.vvv 0s) goto 0x000C1C
0x000BFC:
    self.vvv = (- self.vvv 0.1d)
0x000C1C:
    push 0s
    stog.hspeed* = (int32 self.g)
    push self.vvv
    stog.vspeed* = (int32 self.g)
    self.hspeed = 0s
    self.con = 18s
    stog.alarm[4s] = 30s
0x000C7C:
    if !(== self.con 18s) goto 0x000CFC
0x000C90:
    if !(> self.vvv 0s) goto 0x000CC4
0x000CA4:
    self.vvv = (- self.vvv 0.1d)
0x000CC4:
    push 0s
    stog.hspeed* = (int32 self.g)
    push (- self.vvv)
    stog.vspeed* = (int32 self.g)
0x000CFC:
    if !(== self.con 19s) goto 0x000DAC
0x000D10:
    call (caster_free[]:int32 (var -3s))
    call (caster_play[]:int32 (var 1s) (var 1s) self.swipesound)
    global.batmusic = (caster_load[]:int32 (var "music/vsasgore.ogg"))
    self.w_on = 0s
    self.whiteout = 0s
    self.blackout = 0s
    push 100s
    stog.vspeed* = (int32 self.g)
    self.con = 20s
0x000DAC:
    if !(== self.con 20s) goto 0x000E9C
0x000DC0:
    pushenv (int32 self.g) 0x000E98
0x000DD0:
    self.sc = (scr_afterimage[]:int32 (var 0s) (var 0s))
    push (+ self.depth 1s)
    stog.depth* = (int32 self.sc)
    push -99999
    stog.depth* = (int32 self.sc)
    push 2s
    stog.size* = (int32 self.sc)
    push 2s
    stog.image_xscale* = (int32 self.sc)
    push 2s
    stog.image_yscale* = (int32 self.sc)
    push 0.9d
    stog.image_alpha* = (int32 self.sc)
0x000E98:
    popenv 0x000DD0
0x000E9C:
    if !(== self.con 40s) goto 0x0012B0
0x000EB0:
    self.depth = -100000
    if !(== self.w_on 0s) goto 0x000EF4
0x000ED4:
    self.whiteout = (+ self.whiteout 0.08d)
0x000EF4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 self.whiteout)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -1s) (var -1s))
    if !(>= self.whiteout 1.8d) goto 0x000F7C
0x000F70:
    self.w_on = 1s
0x000F7C:
    if !(== self.w_on 1s) goto 0x00129C
0x000F90:
    self.blackout = (+ self.blackout 0.05d)
    if !(== self.skip 1s) goto 0x000FE0
0x000FC4:
    push (< self.blackout 5.5d)
    goto 0x000FE4
0x000FE0:
    push 0s
0x000FE4:
    if !pop goto 0x001008
0x000FE8:
    self.blackout = (+ self.blackout 0.05d)
0x001008:
    call (draw_set_alpha[]:int32 self.blackout)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -1s) (var -1s))
    if !(== self.blackout 5.5d) goto 0x0010A4
0x001080:
    call (caster_loop[]:int32 (var 1s) (var 1s) global.batmusic)
0x0010A4:
    self.fdhjfd = 9999s
    if !(== self.blackout 7s) goto 0x00129C
0x0010C4:
    self.con = 50s
    global.mnfight = 0s
    global.myfight = 0s
    self.background_color = 0s
    [obj_battlecontroller].drawrect = 1s
    [obj_fightbt].image_blend = 16777215
    [obj_itembt].image_blend = 16777215
    [obj_talkbt].image_blend = 16777215
    [obj_fightbt].sprite_index = 5s
    [obj_itembt].sprite_index = 7s
    [obj_talkbt].sprite_index = 12s
    [obj_borderparent].visible = 1s
    call (instance_create[]:int32 (var 484s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 483s) (var 0s) (var 0s))
    [obj_heart].visible = 1s
    global.mnfight = 3s
    global.myfight = -1s
    global.bmenuno = 0s
    stog.monster[0s] = 0s
    stog.monster[1s] = 0s
    stog.monster[2s] = 0s
    stog.monstertype[0s] = 52s
    stog.monsterinstance[0s] = (instance_create[]:int32 (var 478s) (var 8s) (var 208s))
    global.msc = 0s
    stog.msg[0s] = "* ASGORE attacks!"
    call (draw_set_alpha[]:int32 (var 1s))
    call (instance_destroy[]:int32 )
0x00129C:
    call (draw_set_alpha[]:int32 (var 1s))
0x0012B0:
    if !(== self.con -120s) goto 0x0012E0
0x0012C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012E4
0x0012E0:
    push 0s
0x0012E4:
    if !pop goto 0x001370
0x0012E8:
    pushenv 186s 0x0012FC
0x0012F0:
    call (instance_destroy[]:int32 )
0x0012FC:
    popenv 0x0012F0
0x001300:
    global.stretch = 1s
    self.sl = (instance_create[]:int32 (var 733s) (var 120s) (var 320s))
    push -90000
    stog.depth* = (int32 self.sl)
    self.con = -119s
    stog.alarm[4s] = 25s
0x001370:
    if !(== self.con -118s) goto 0x0013F0
0x001384:
    call (snd_play[]:int32 (var 51s))
    self.asg = (instance_create[]:int32 (var 493s) (var 46s) (var 128s))
    global.faceemotion = 3s
    push 1s
    stog.murder* = (int32 self.asg)
    call (instance_destroy[]:int32 )
0x0013F0:
    exit
