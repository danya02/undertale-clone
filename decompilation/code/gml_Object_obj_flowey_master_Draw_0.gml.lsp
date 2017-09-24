0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    self.savetimer = (- self.savetimer 1s)
    self.loadtimer = (- self.loadtimer 1s)
    if !(> self.savetimer 0s) goto 0x0001DC
0x000070:
    call (draw_set_color[]:int32 (var 65535))
    self.sta = (/ (+ 10s self.savetimer) (double 20s))
    if !(> self.sta 1s) goto 0x0000CC
0x0000C0:
    self.sta = 1s
0x0000CC:
    call (draw_set_alpha[]:int32 self.sta)
    if !(== self.fileset 2s) goto 0x000134
0x0000F4:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 2 SAVED") (var 430s) (var 20s))
0x000134:
    if !(== self.fileset 3s) goto 0x000188
0x000148:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 3 SAVED") (var 430s) (var 20s))
0x000188:
    if !(== self.fileset 6s) goto 0x0001DC
0x00019C:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 6 SAVED") (var 430s) (var 20s))
0x0001DC:
    if !(> self.loadtimer 0s) goto 0x000444
0x0001F0:
    self.sta = (/ (+ 10s self.loadtimer) (double 20s))
    if !(> self.sta 1s) goto 0x000234
0x000228:
    self.sta = 1s
0x000234:
    call (draw_set_alpha[]:int32 self.sta)
    if (== self.fileset 3s) goto 0x000298
0x00025C:
    if (== self.fileset 4s) goto 0x000298
0x000270:
    if (== self.fileset 5s) goto 0x000298
0x000284:
    push (== self.fileset 6s)
    goto 0x00029C
0x000298:
    push 1s
0x00029C:
    if !pop goto 0x000404
0x0002A0:
    if !(== self.fileset 3s) goto 0x000304
0x0002B4:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 3 LOADED") (+ 430s self.fly) (+ 20s self.flx))
0x000304:
    if !(== self.fileset 4s) goto 0x000358
0x000318:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 4 LOADED") (var 430s) (var 20s))
0x000358:
    if !(== self.fileset 5s) goto 0x0003AC
0x00036C:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "LOAD FAILED") (var 430s) (var 20s))
0x0003AC:
    if !(== self.fileset 6s) goto 0x000400
0x0003C0:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 6 LOADED") (var 430s) (var 20s))
0x000400:
    goto 0x000444
0x000404:
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) (var "FILE 2 LOADED") (var 430s) (var 20s))
0x000444:
    if !(== self.darkmode 1s) goto 0x0004CC
0x000458:
    [obj_vsflowey_heart].depth = -25s
    if !(< self.darkvalue 1s) goto 0x000498
0x000478:
    self.darkvalue = (+ self.darkvalue 0.05d)
0x000498:
    call (draw_set_alpha[]:int32 self.darkvalue)
    if !(== self.darkvalue 1s) goto 0x0004CC
0x0004C0:
    self.darkmode = 2s
0x0004CC:
    if !(== self.darkmode 3s) goto 0x000550
0x0004E0:
    if !(> self.darkvalue 0s) goto 0x000518
0x0004F4:
    self.darkvalue = (- self.darkvalue 0.05d)
    goto 0x00053C
0x000518:
    [obj_vsflowey_heart].depth = 10s
    self.darkmode = 0s
    self.darkvalue = 0s
0x00053C:
    call (draw_set_alpha[]:int32 self.darkvalue)
0x000550:
    if !(> self.darkmode 0s) goto 0x0005AC
0x000564:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 500s) (var 700s) (var -20s) (var -20s))
0x0005AC:
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.pd 1s) goto 0x0006A0
0x0005D4:
    if !(> self.soulpitch 0s) goto 0x000664
0x0005E8:
    self.soulpitch = (- self.soulpitch 0.02d)
    push self.soulpitch
    call (caster_set_pitch[]:int32 -1s (int32 global.soul_rescue):mus_soul)
    push self.soulpitch
    call (caster_set_volume[]:int32 -1s (int32 global.soul_rescue):mus_soul)
    goto 0x0006A0
0x000664:
    push -1s
    call (caster_stop[]:int32 (int32 global.soul_rescue):mus_soul)
    self.soulpitch = 1s
    self.pd = -1s
0x0006A0:
    if !(== self.drawhp 1s) goto 0x000764
0x0006B4:
    call (draw_set_color[]:int32 (var 128s))
    call (draw_rectangle[]:int32 (var 0s) (var 470s) (var 345s) (var 450s) (var 295s))
    call (draw_set_color[]:int32 (var 65535))
    if !(> global.my_hp 0s) goto 0x000764
0x000728:
    call (draw_rectangle[]:int32 (var 0s) (var 470s) (+ 295s global.my_hp) (var 450s) (var 295s))
0x000764:
    if !(> self.dcon 0s) goto 0x00232C
0x000778:
    if !(== self.destroyercon 1s) goto 0x0007AC
0x00078C:
    self.destroyercon = 2s
    stog.alarm[10s] = 1s
0x0007AC:
    if !(== self.dcon 2s) goto 0x000814
0x0007C0:
    call (snd_play[]:int32 (var 136s))
    pushenv 1587s 0x0007F0
0x0007DC:
    call (event_user[]:int32 (var 1s))
0x0007F0:
    popenv 0x0007DC
0x0007F4:
    self.dcon = 3s
    stog.alarm[4s] = 30s
0x000814:
    if !(== self.dcon 4s) goto 0x00087C
0x000828:
    call (snd_play[]:int32 (var 136s))
    pushenv 1587s 0x000858
0x000844:
    call (event_user[]:int32 (var 1s))
0x000858:
    popenv 0x000844
0x00085C:
    self.dcon = 5s
    stog.alarm[4s] = 60s
0x00087C:
    if !(== self.dcon 6s) goto 0x00095C
0x000890:
    self.sfx_glock = (caster_load[]:int32 (var "music/f_glock.ogg"))
    self.sfx_shake = (caster_load[]:int32 (var "music/f_destroyed.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.7d) self.sfx_shake)
    self.lsh = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 0s
    stog.decay* = (int32 self.lsh)
    self.dcon = 7s
    stog.alarm[4s] = 45s
0x00095C:
    if !(== self.dcon 8s) goto 0x000A28
0x000970:
    self.dcon = 10s
    global.typer = 75s
    stog.msg[0s] = "* No... NO!!!/"
    stog.msg[1s] = "* This CAN'T be&  happening!!!/"
    stog.msg[2s] = "* You... YOU.../%%"
    stog.msg[3s] = "%%%"
    pushenv 1598s 0x0009FC
0x0009F0:
    call (instance_destroy[]:int32 )
0x0009FC:
    popenv 0x0009F0
0x000A00:
    self.tw = (instance_create[]:int32 (var 1598s) (var 300s) (var 170s))
0x000A28:
    if !(== self.dcon 10s) goto 0x000A78
0x000A3C:
    if !(== (instance_exists[]:int32 self.tw) 0s) goto 0x000A78
0x000A58:
    self.dcon = 11s
    stog.alarm[4s] = 30s
0x000A78:
    if !(>= self.dcon 2s) goto 0x000AA0
0x000A8C:
    push (<= self.dcon 12s)
    goto 0x000AA4
0x000AA0:
    push 0s
0x000AA4:
    if !pop goto 0x000AC0
0x000AA8:
    pushenv 1596s 0x000ABC
0x000AB0:
    call (instance_destroy[]:int32 )
0x000ABC:
    popenv 0x000AB0
0x000AC0:
    if !(== self.dcon 12s) goto 0x000C78
0x000AD4:
    global.soul_rescue = 0s
    global.my_hp = 50s
    self.loadtimer = 90s
    self.fileset = 3s
    global.my_hp = 50s
    [obj_vsflowey_heart].move = 1s
    [obj_vsflowey_heart].depth = -4s
    [obj_vsflowey_heart].x = 314s
    [obj_vsflowey_heart].y = 422s
    [obj_vsflowey_heart].special = 1s
    [obj_vsflowey_heart].sprite_index = 2270s
    pushenv 1587s 0x000B6C
0x000B60:
    self.tvmode = 10s
0x000B6C:
    popenv 0x000B60
0x000B70:
    call (caster_stop[]:int32 (var -3s))
    call (caster_play[]:int32 (var 1s) (var 1s) self.sfx_glock)
    pushenv 1598s 0x000BBC
0x000BB0:
    call (instance_destroy[]:int32 )
0x000BBC:
    popenv 0x000BB0
0x000BC0:
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
    pushenv 1582s 0x000BFC
0x000BF0:
    call (instance_destroy[]:int32 )
0x000BFC:
    popenv 0x000BF0
0x000C00:
    pushenv 1586s 0x000C2C
0x000C08:
    self.siner = 0s
    self.desperate = 0s
    self.frozen = 0s
0x000C2C:
    popenv 0x000C08
0x000C30:
    pushenv 1599s 0x000C54
0x000C38:
    self.dmg = 0s
    self.apparenthp = global.floweymaxhp
0x000C54:
    popenv 0x000C38
0x000C58:
    self.dcon = 13s
    stog.alarm[4s] = 90s
0x000C78:
    if !(== self.dcon 14s) goto 0x000CFC
0x000C8C:
    global.typer = 76s
    stog.msg[0s] = "* You^2 IDIOT^5. %%"
    pushenv 1598s 0x000CC4
0x000CB8:
    call (instance_destroy[]:int32 )
0x000CC4:
    popenv 0x000CB8
0x000CC8:
    self.dcon = 15s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 300s) (var 170s))
0x000CFC:
    if !(== self.dcon 15s) goto 0x000D64
0x000D10:
    if !(== (instance_exists[]:int32 self.tw2) 0s) goto 0x000D64
0x000D2C:
    pushenv 1599s 0x000D40
0x000D34:
    call (instance_destroy[]:int32 )
0x000D40:
    popenv 0x000D34
0x000D44:
    self.dcon = 16s
    stog.alarm[4s] = 15s
0x000D64:
    if !(== self.dcon 17s) goto 0x000DB4
0x000D78:
    pushenv 1587s 0x000D8C
0x000D80:
    self.tvmode = 20s
0x000D8C:
    popenv 0x000D80
0x000D90:
    self.fileset = 3s
    self.destroyercon = 1s
    self.dcon = 18s
0x000DB4:
    if !(== self.dcon 20s) goto 0x000E14
0x000DC8:
    pushenv 1587s 0x000DDC
0x000DD0:
    self.tvmode = 21s
0x000DDC:
    popenv 0x000DD0
0x000DE0:
    [obj_vsflowey_heart].move = 0s
    self.dcon = 20.1d
    stog.alarm[4s] = 50s
0x000E14:
    if !(== self.dcon 21.1d) goto 0x000EAC
0x000E30:
    [obj_vsflowey_heart].move = 0s
    self.sfg = (instance_create[]:int32 (var 1647s) (+ 1581.y 8s) (+ 1581.x 8s))
    self.fileset = 6s
    self.savetimer = 20s
    self.dcon = 21s
    stog.alarm[4s] = 40s
0x000EAC:
    if !(== self.dcon 22s) goto 0x000F3C
0x000EC0:
    [obj_vsflowey_heart].move = 1s
    self.mus_worry = (caster_load[]:int32 (var "music/yourbestfriend_3.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.85d) self.mus_worry)
    self.dcon = 23s
    stog.alarm[4s] = 20s
0x000F3C:
    if !(== self.dcon 24s) goto 0x001110
0x000F50:
    global.typer = 76s
    stog.msg[0s] = "* Hee hee hee./"
    stog.msg[1s] = "* Did you REALLY&  think.../"
    stog.msg[2s] = "* You could&  defeat ME!?/"
    stog.msg[3s] = "\\E5* I am the GOD of&  this world./"
    stog.msg[4s] = "\\E6* And YOU?/"
    stog.msg[5s] = "* You're HOPELESS./"
    stog.msg[6s] = "* Hopeless and&  alone.../"
    stog.msg[7s] = "\\E0* Golly^1, that's&  right!/"
    stog.msg[8s] = "\\E7* Your WORTHLESS&  friends.../"
    stog.msg[9s] = "\\E8* ... can't save&  you now./"
    stog.msg[10s] = "\\E1* Call for help^1.&* I dare you./"
    stog.msg[11s] = "\\E5* Cry into the&  darkness!/"
    stog.msg[12s] = "\\E8\"Mommy^1! Daddy^1!\"&\"Somebody help!\"/"
    stog.msg[13s] = "\\E5* See what good&  it does you!/%%"
    stog.msg[14s] = "%%%"
    pushenv 1598s 0x0010D8
0x0010CC:
    call (instance_destroy[]:int32 )
0x0010D8:
    popenv 0x0010CC
0x0010DC:
    self.dcon = 25s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x001110:
    if !(== self.dcon 25s) goto 0x001360
0x001124:
    if !(bool (instance_exists[]:int32 (var 1598s))) goto 0x0012C4
0x00113C:
    if !(> self.intent_hit 20s) goto 0x001164
0x001150:
    push (< 1598.stringno 2s)
    goto 0x001168
0x001164:
    push 0s
0x001168:
    if !pop goto 0x0011B4
0x00116C:
    push "* You..^1. uh.../"
    push 1598s
    stog.mystring[] = 2s
    push "\\E4* Would you STOP that?/"
    push 1598s
    stog.mystring[] = 3s
    push "\\E6* Anyway^1, YOU!/"
    push 1598s
    stog.mystring[] = 4s
0x0011B4:
    if !(== 1598.stringno 3s) goto 0x001200
0x0011C8:
    pushenv 1587s 0x0011FC
0x0011D0:
    if !(!= self.tvmode 11s) goto 0x0011FC
0x0011E4:
    self.tvmode = 11s
    self.overnoiser = 6s
0x0011FC:
    popenv 0x0011D0
0x001200:
    if !(== 1598.stringno 5s) goto 0x00124C
0x001214:
    pushenv 1587s 0x001248
0x00121C:
    if !(!= self.tvmode 12s) goto 0x001248
0x001230:
    self.tvmode = 12s
    self.overnoiser = 6s
0x001248:
    popenv 0x00121C
0x00124C:
    if !(== 1598.stringno 6s) goto 0x001278
0x001260:
    pushenv 1587s 0x001274
0x001268:
    self.tvmode = 13s
0x001274:
    popenv 0x001268
0x001278:
    if !(== 1598.stringno 7s) goto 0x0012C4
0x00128C:
    pushenv 1587s 0x0012C0
0x001294:
    if !(!= self.tvmode 11s) goto 0x0012C0
0x0012A8:
    self.tvmode = 11s
    self.overnoiser = 6s
0x0012C0:
    popenv 0x001294
0x0012C4:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001360
0x0012E0:
    [obj_spinbullet_huge].depth = 30s
    self.ap = (instance_create[]:int32 (var 1621s) (+ 1581.y 8s) (+ 1581.x 45s))
    push 2227s
    stog.sprite_index* = (int32 self.ap)
    push 20s
    stog.depth* = (int32 self.ap)
    self.dcon = 30s
0x001360:
    if !(== self.dcon 31s) goto 0x001434
0x001374:
    pushenv 1587s 0x001388
0x00137C:
    self.tvmode = 11s
0x001388:
    popenv 0x00137C
0x00138C:
    global.faceemotion = 3s
    global.typer = 77s
    stog.msg[0s] = "(You called for help.^4) %%"
    stog.msg[1s] = "%%%"
    pushenv 1598s 0x0013E8
0x0013DC:
    call (instance_destroy[]:int32 )
0x0013E8:
    popenv 0x0013DC
0x0013EC:
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
    self.dcon = 33s
    stog.alarm[4s] = 160s
0x001434:
    if !(== self.dcon 34s) goto 0x001544
0x001448:
    call (caster_stop[]:int32 (var -3s))
    global.typer = 76s
    stog.msg[0s] = "* .../"
    stog.msg[1s] = "\\E0* But nobody came./"
    stog.msg[2s] = "\\E2* Boy^1!&* What a shame!/"
    stog.msg[3s] = "\\E7* Nobody else.../"
    stog.msg[4s] = "* Is gonna get to&  see you DIE!!!/%%"
    stog.msg[5s] = "%%%"
    pushenv 1598s 0x00150C
0x001500:
    call (instance_destroy[]:int32 )
0x00150C:
    popenv 0x001500
0x001510:
    self.dcon = 35s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x001544:
    if !(== self.dcon 35s) goto 0x001658
0x001558:
    if !(bool (instance_exists[]:int32 (var 1598s))) goto 0x0015BC
0x001570:
    if !(== 1598.stringno 4s) goto 0x0015BC
0x001584:
    pushenv 1587s 0x0015B8
0x00158C:
    if !(!= self.tvmode 21s) goto 0x0015B8
0x0015A0:
    self.tvmode = 21s
    self.overnoiser = 6s
0x0015B8:
    popenv 0x00158C
0x0015BC:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001658
0x0015D8:
    pushenv 1587s 0x0015EC
0x0015E0:
    self.tvmode = 20s
0x0015EC:
    popenv 0x0015E0
0x0015F0:
    call (caster_play[]:int32 (var 1s) (var 1s) self.sfx_laugh)
    pushenv 1647s 0x001630
0x00161C:
    stog.alarm[1s] = 1s
0x001630:
    popenv 0x00161C
0x001634:
    pushenv 1648s 0x001648
0x00163C:
    self.trick = 1s
0x001648:
    popenv 0x00163C
0x00164C:
    self.dcon = 36s
0x001658:
    if !(== self.dcon 40s) goto 0x0016C4
0x00166C:
    call (caster_stop[]:int32 self.sfx_laugh)
    global.facemotion = 0s
    pushenv 1587s 0x0016A0
0x001694:
    self.tvmode = 22s
0x0016A0:
    popenv 0x001694
0x0016A4:
    self.dcon = 41s
    stog.alarm[4s] = 120s
0x0016C4:
    if !(== self.dcon 42s) goto 0x001790
0x0016D8:
    global.typer = 76s
    stog.msg[0s] = "* What^4? %"
    stog.msg[1s] = "\\E1* How'd you...^4? %"
    stog.msg[2s] = "\\E2* Well^1, I'll jus^4t%%"
    stog.msg[5s] = "%%%"
    pushenv 1598s 0x001758
0x00174C:
    call (instance_destroy[]:int32 )
0x001758:
    popenv 0x00174C
0x00175C:
    self.dcon = 43s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x001790:
    if !(== self.dcon 43s) goto 0x001804
0x0017A4:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001804
0x0017C0:
    global.faceemotion = 3s
    self.fileset = 5s
    self.loadtimer = 70s
    self.dcon = 44s
    stog.alarm[4s] = 100s
0x001804:
    if !(== self.dcon 45s) goto 0x0018B8
0x001818:
    global.typer = 76s
    stog.msg[0s] = "\\E4* Wh..^4. %"
    stog.msg[1s] = "* Where are my&  powers!^5? %%"
    stog.msg[5s] = "%%%"
    pushenv 1598s 0x001880
0x001874:
    call (instance_destroy[]:int32 )
0x001880:
    popenv 0x001874
0x001884:
    self.dcon = 47s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x0018B8:
    if !(== self.dcon 47s) goto 0x00198C
0x0018CC:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x00198C
0x0018E8:
    pushenv 1586s 0x0018FC
0x0018F0:
    self.frozen = 1s
0x0018FC:
    popenv 0x0018F0
0x001900:
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 154s))
    global.soul_rescue = 6s
    self.dcon = 48s
    stog.alarm[4s] = 45s
    self.s6 = (instance_create[]:int32 (var 1604s) (var 0s) (var 0s))
0x00198C:
    if !(== self.dcon 49s) goto 0x001A40
0x0019A0:
    global.typer = 76s
    stog.msg[0s] = "\\E5* The souls...^5? %"
    stog.msg[1s] = "* What are they&  doing^5? %%"
    stog.msg[5s] = "%%%"
    pushenv 1598s 0x001A08
0x0019FC:
    call (instance_destroy[]:int32 )
0x001A08:
    popenv 0x0019FC
0x001A0C:
    self.dcon = 50s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x001A40:
    if !(== self.dcon 50s) goto 0x001C78
0x001A54:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001C78
0x001A70:
    pushenv 1587s 0x001A84
0x001A78:
    self.tvmode = 99s
0x001A84:
    popenv 0x001A78
0x001A88:
    call (instance_create[]:int32 (var 1602s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 154s))
    pushenv 1586s 0x001AD4
0x001AC8:
    self.frozen = 1s
0x001AD4:
    popenv 0x001AC8
0x001AD8:
    self.sh2 = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 10s
    stog.shakex* = (int32 self.sh2)
    push 10s
    stog.shakey* = (int32 self.sh2)
    push 0s
    stog.decay* = (int32 self.sh2)
    pushenv (int32 self.s6) 0x001B64
0x001B58:
    self.con = 1s
0x001B64:
    popenv 0x001B58
0x001B68:
    self.m_destroy = (caster_load[]:int32 (var "music/f_destroyed3.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.m_destroy)
    global.typer = 76s
    stog.msg[0s] = "* NO!^1! NO!!!!^4! %"
    stog.msg[1s] = "* YOU CAN'T DO&  THAT!!^4! %"
    stog.msg[2s] = "* YOU'RE SUPPOSED&  TO OBEY ME!^4! %"
    stog.msg[3s] = "* STOP!!^1!&  STOP IT!!!!^4! %%"
    stog.msg[4s] = "%%%"
    pushenv 1598s 0x001C40
0x001C34:
    call (instance_destroy[]:int32 )
0x001C40:
    popenv 0x001C34
0x001C44:
    self.dcon = 51s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x001C78:
    if !(== self.dcon 51s) goto 0x001D60
0x001C8C:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x001D60
0x001CA8:
    pushenv 1587s 0x001CBC
0x001CB0:
    self.tvmode = 100s
0x001CBC:
    popenv 0x001CB0
0x001CC0:
    global.typer = 74s
    stog.msg[0s] = "* STOOOOPPPP!!!!!"
    stog.msg[4s] = "%%%"
    self.pp = 0s
    pushenv 1598s 0x001D1C
0x001D10:
    call (instance_destroy[]:int32 )
0x001D1C:
    popenv 0x001D10
0x001D20:
    self.dcon = 52s
    self.whiter_maker = 2s
    self.tw2 = (instance_create[]:int32 (var 1598s) (var 280s) (var 130s))
0x001D60:
    if !(== self.dcon 52s) goto 0x001F60
0x001D74:
    self.depth = -90s
    self.pp = (+ self.pp 0.008d)
    call (draw_set_alpha[]:int32 (/ self.pp 1.5d))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 900s) (var 900s) (var -10s) (var -10s))
    call (caster_set_pitch[]:int32 (+ 1s self.pp) self.m_destroy)
    call (caster_set_volume[]:int32 (- 1s (/ self.pp (double 2s))) self.m_destroy)
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.pp 2s) goto 0x001F60
0x001E8C:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "E") (var "FFFFF"))
    call (ini_write_real[]:int32 (var 0s) (var "F") (var "FFFFF"))
    call (ini_close[]:int32 )
    if !(bool (file_exists[]:int32 (var "flowey.exe"))) goto 0x001F48
0x001F24:
    call (file_rename[]:int32 (var "undertale.exe") (var "flowey.exe"))
0x001F48:
    self.drkdrk = 0s
    self.dcon = 53s
0x001F60:
    if !(== self.dcon 53s) goto 0x001FA8
0x001F74:
    call (caster_stop[]:int32 self.m_destroy)
    self.dcon = 54s
    stog.alarm[4s] = 120s
0x001FA8:
    if (== self.dcon 54s) goto 0x001FD0
0x001FBC:
    push (== self.dcon 55s)
    goto 0x001FD4
0x001FD0:
    push 1s
0x001FD4:
    if !pop goto 0x002128
0x001FD8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 900s) (var 900s) (var -10s) (var -10s))
    call (draw_set_color[]:int32 (var 0s))
    self.drkdrk = (+ self.drkdrk 0.01d)
    call (draw_set_alpha[]:int32 self.drkdrk)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(>= self.drkdrk 1.1d) goto 0x002128
0x0020D0:
    self.drkdrk_px = (scr_marker[]:int32 (var 996s) (var -10s) (var -10s))
    push 900s
    stog.image_xscale* = (int32 self.drkdrk_px)
    push 900s
    stog.image_yscale* = (int32 self.drkdrk_px)
0x002128:
    if !(>= self.dcon 51s) goto 0x00232C
0x00213C:
    pushenv 1586s 0x002328
0x002144:
    self.frozen = 1s
    self.siner = (+ self.siner (+ 1s (random[]:int32 (var 0.5d))))
    self.md = 1s
    self.image_blend = (make_color_hsv[]:int32 (var 255s) (var 255s) (* (abs[]:int32 (sin[]:int32 (/ self.siner (double 30s)))) 512s))
    self.blend2 = (make_color_hsv[]:int32 (var 255s) (var 255s) (* (abs[]:int32 (sin[]:int32 (/ self.siner (double 30s)))) 512s))
    self.flash = -1s
    self.x = (- (+ self.xstart (random[]:int32 (var 15s))) (random[]:int32 (var 15s)))
    self.y = (- (+ self.ystart (random[]:int32 (var 15s))) (random[]:int32 (var 15s)))
    if !(== self.object_index 1655s) goto 0x002328
0x0022B8:
    self.y = (- self.y 80s)
    if !(> self.x 320s) goto 0x0022FC
0x0022E4:
    self.x = (- self.x 40s)
0x0022FC:
    if !(< self.x 320s) goto 0x002328
0x002310:
    self.x = (+ self.x 40s)
0x002328:
    popenv 0x002144
0x00232C:
    if !(> self.introcon 0s) goto 0x002AFC
0x002340:
    if !(== self.introcon 1s) goto 0x002508
0x002354:
    [obj_vsflowey_heart].x = 314s
    [obj_vsflowey_heart].y = 422s
    self.bgsiner = 0s
    self.dividefactor = 1s
    self.bganimer = 1s
    if !(== self.introskip 0s) goto 0x0023E4
0x0023A4:
    self.mus_intro = (caster_load[]:int32 (var "music/f_intro.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.mus_intro)
0x0023E4:
    push -1s
    stog.view_yview[(+ 0s:view_yview 480s)] = 0s
    push -1s
    self.ny = 0s:view_yview
    self.hy = 1581.y
    [obj_vsflowey_heart].y = (+ 1581.y 480s)
    self.background_color = 128s
    [obj_vsflowey_heart].move = 0s
    [obj_floweyx_tv].tvmode = 25s
    [obj_floweyx_tv].siner = 0s
    pushenv 1586s 0x0024BC
0x002480:
    self.desperate = 0s
    self.image_blend = 0s
    self.grgrgrgr = 0s
    self.blend2 = 0s
    self.flash = 99s
0x0024BC:
    popenv 0x002480
0x0024C0:
    self.introcon = 2s
    stog.alarm[5s] = 440s
    if !(== self.introskip 1s) goto 0x002508
0x0024F4:
    stog.alarm[5s] = 1s
0x002508:
    if !(== self.bganimer 1s) goto 0x00258C
0x00251C:
    self.bgsiner = (+ self.bgsiner 1s)
    self.background_color = (make_color_rgb[]:int32 (var 0s) (var 0s) (abs[]:int32 (/ (* (sin[]:int32 (/ self.bgsiner (double 8s))) 130s) self.dividefactor)))
0x00258C:
    if !(== self.introcon 2s) goto 0x002644
0x0025A0:
    if !(== self.introskip 0s) goto 0x0025D4
0x0025B4:
    self.ny = (- self.ny 1.09090909090909d)
0x0025D4:
    if !(== self.introskip 1s) goto 0x002600
0x0025E8:
    self.ny = (- self.ny 480s)
0x002600:
    stog.view_yview[0s] = (floor[]:int32 self.ny)
    [obj_vsflowey_heart].y = (+ self.hy (floor[]:int32 self.ny))
0x002644:
    if !(== self.introcon 3s) goto 0x0026E4
0x002658:
    self.dividefactor = 1s
    [obj_floweyx_tv].tvmode = 24s
    self.introcon = 4s
    stog.alarm[5s] = 70s
    if !(== self.introskip 1s) goto 0x0026B8
0x0026A4:
    stog.alarm[5s] = 1s
0x0026B8:
    stog.view_yview[0s] = 0s
    [obj_vsflowey_heart].y = (floor[]:int32 1581.y)
0x0026E4:
    if !(== self.introcon 5s) goto 0x00276C
0x0026F8:
    self.fadevalue = 0s
    [obj_floweyx_tv].tvmode = 19s
    [obj_vsflowey_heart].move = 1s
    self.introcon = 5.1d
    stog.alarm[5s] = 95s
    if !(== self.introskip 1s) goto 0x00276C
0x002758:
    stog.alarm[5s] = 1s
0x00276C:
    if !(== self.introcon 6.1d) goto 0x002888
0x002788:
    self.dividefactor = (+ self.dividefactor 9s)
    self.fadevalue = (+ self.fadevalue 1s)
    self.ib = (make_color_rgb[]:int32 (* self.fadevalue 25.5d) (* self.fadevalue 25.5d) (* self.fadevalue 25.5d))
    [obj_floweybodyparent].image_blend = self.ib
    [obj_floweybodyparent].blend2 = self.ib
    if !(>= self.fadevalue 10s) goto 0x002870
0x002844:
    self.background_color = 0s
    self.introcon = 7s
    stog.alarm[5s] = 20s
0x002870:
    pushenv 1586s 0x002884
0x002878:
    self.frozen = 4s
0x002884:
    popenv 0x002878
0x002888:
    if !(== self.introcon 8s) goto 0x00294C
0x00289C:
    self.sh = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 0s
    stog.decay* = (int32 self.sh)
    call (caster_stop[]:int32 (var -3s))
    call (caster_play[]:int32 (var 1s) (var 1s) self.sfx_laugh)
    [obj_floweyx_mouth].laugh = 1s
    [obj_floweyx_tv].tvmode = 20s
    self.introcon = 9s
    stog.alarm[5s] = 180s
0x00294C:
    if !(== self.introcon 10s) goto 0x0029E0
0x002960:
    pushenv (int32 self.sh) 0x00297C
0x002970:
    call (instance_destroy[]:int32 )
0x00297C:
    popenv 0x002970
0x002980:
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
    [obj_floweyx_mouth].laugh = 0s
    [obj_floweyx_tv].tvmode = 21s
    self.introcon = 11s
    stog.alarm[5s] = 20s
0x0029E0:
    if !(== self.introcon 12s) goto 0x002A44
0x0029F4:
    pushenv 1586s 0x002A14
0x0029FC:
    self.frozen = 0s
    self.desperate = 1s
0x002A14:
    popenv 0x0029FC
0x002A18:
    call (event_user[]:int32 (var 10s))
    [obj_floweyx_tv].tvmode = 0s
    self.introcon = -1s
0x002A44:
    if !(== self.introskip 1s) goto 0x002AFC
0x002A58:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (/ (- 10s self.fadevalue) (double 10s)))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    if !(< self.fadevalue 10s) goto 0x002AE8
0x002ADC:
    [obj_floweyx_tv].tvmode = 26s
0x002AE8:
    call (draw_set_alpha[]:int32 (var 1s))
0x002AFC:
    if !(== self.turnturn 0s) goto 0x002B24
0x002B10:
    push (== self.introcon 2s)
    goto 0x002B28
0x002B24:
    push 0s
0x002B28:
    if !pop goto 0x002BB8
0x002B2C:
    self.turnturn = 1s
    [obj_floweybodyparent].visible = 1s
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_sprite[]:int32 1581.y 1581.x (var 0s) (var 2270s))
0x002BB8:
    if !(== global.debug 1s) goto 0x002C1C
0x002BCC:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "debug") (- self.room_height 40s) (- self.room_width 60s))
0x002C1C:
    exit
