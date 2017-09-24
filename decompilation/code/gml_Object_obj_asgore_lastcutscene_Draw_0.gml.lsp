0x000000:
    if !(== self.con 107s) goto 0x00002C
0x000014:
    call (room_goto[]:int32 (var 322s))
    exit
0x00002C:
    if !(>= self.con 4s) goto 0x000058
0x000040:
    push (bool (instance_exists[]:int32 (var 755s)))
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x000094
0x000060:
    if !(> 755.image_alpha 0s) goto 0x000094
0x000074:
    [obj_btparent].image_alpha = (- 755.image_alpha 0.02d)
0x000094:
    if !(>= self.con 12s) goto 0x0000C0
0x0000A8:
    push (bool (instance_exists[]:int32 (var 757s)))
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x000120
0x0000C8:
    [obj_battlecontroller].drawbinfo = 0s
    pushenv 183s 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    popenv 0x0000DC
0x0000EC:
    if !(> 757.image_alpha 0s) goto 0x000120
0x000100:
    [obj_borderparent].image_alpha = (- 757.image_alpha 0.02d)
0x000120:
    if !(== self.asgore 1s) goto 0x0003B4
0x000134:
    if !(== self.remove 0s) goto 0x000208
0x000148:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.asgorey self.asgorex (var 0s) (var 628s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.asgorey 8s) (+ self.asgorex 136s) global.faceemotion (var 629s))
0x000208:
    if !(== self.remove 1s) goto 0x0003B4
0x00021C:
    self.ry = (+ self.ry 2s)
    if !(< self.ry 49s) goto 0x0002EC
0x000248:
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) (+ self.asgorey (* self.ry 4s)) self.asgorex (- 97s (* self.ry 2s)) (var 183s) (+ 0s (* self.ry 2s)) (var 0s) (var 0s) (var 628s))
0x0002EC:
    if !(< self.ry 27s) goto 0x0003B4
0x000300:
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 16777215) (var 2s) (var 2s) (+ (- self.asgorey 8s) (* self.ry 4s)) (+ self.asgorex 136s) (- 54s (* self.ry 2s)) (var 53s) (+ 0s (* self.ry 2s)) (var 0s) global.faceemotion (var 629s))
0x0003B4:
    if !(== self.con 2s) goto 0x000430
0x0003C8:
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    global.mnfight = -2s
    global.myfight = -2s
    pushenv 189s 0x00040C
0x000400:
    call (instance_destroy[]:int32 )
0x00040C:
    popenv 0x000400
0x000410:
    self.con = 3s
    stog.alarm[4s] = 50s
0x000430:
    if !(== self.con 4s) goto 0x000550
0x000444:
    global.typer = 63s
    global.msc = 0s
    stog.msg[0s] = "Ah.../"
    stog.msg[1s] = ".../"
    stog.msg[2s] = "So that&is how&it is./"
    stog.msg[3s] = ".../%%"
    self.con = 5s
    self.saddude = 1s
    if !(== self.murder 1s) goto 0x00050C
0x0004E8:
    stog.msg[0s] = "\\E3Why..^1.&You.../%%"
    self.con = 20s
0x00050C:
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 300s))
    push 18s
    stog.sprite_index* = (int32 self.blcon)
0x000550:
    if !(== self.con 5s) goto 0x000580
0x000564:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000584
0x000580:
    push 0s
0x000584:
    if !pop goto 0x0005C4
0x000588:
    self.con = 6s
    self.chokemusic = (caster_load[]:int32 (var "music/chokedup.ogg"))
    stog.alarm[4s] = 45s
0x0005C4:
    if !(== self.con 7s) goto 0x000760
0x0005D8:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.chokemusic)
    self.saddude = 2s
    stog.msg[0s] = "I remember the day&after my son&died./"
    stog.msg[1s] = "The entire underground&was devoid of hope./"
    stog.msg[2s] = "The future had once&again been taken&from us by the&humans./"
    stog.msg[3s] = "In a fit of anger,&I declared war./"
    stog.msg[4s] = "I said that I would&destroy any human&that came here./"
    stog.msg[5s] = "I would use their&souls to become&godlike.../"
    stog.msg[6s] = "... and free us from&this terrible prison./"
    stog.msg[7s] = "Then, I would destroy&humanity.../"
    stog.msg[8s] = "And let monsters rule&the surface, in peace./"
    stog.msg[9s] = "Soon, the people's&hopes returned./"
    stog.msg[10s] = "My wife, however,&became disgusted with&my actions./"
    stog.msg[11s] = "She left this place,&never to be seen&again./%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 270s))
    self.con = 8s
0x000760:
    if !(== self.con 8s) goto 0x000790
0x000774:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000794
0x000790:
    push 0s
0x000794:
    if !pop goto 0x0008FC
0x000798:
    self.con = 9s
    stog.msg[0s] = "Truthfully.../"
    stog.msg[1s] = "I do not want power./"
    stog.msg[2s] = "I do not want to&hurt anyone./"
    stog.msg[3s] = "I just wanted everyone&to have hope.../"
    stog.msg[4s] = "But.../"
    stog.msg[5s] = "I cannot take this&any longer./"
    stog.msg[6s] = "I just want to&see my wife./"
    stog.msg[7s] = "I just want to&see my child./"
    stog.msg[8s] = "Please..^1.&Young one.../"
    stog.msg[9s] = "This war has gone&on long enough./"
    stog.msg[10s] = "You have the power.../"
    stog.msg[11s] = "Take my soul, and&leave this cursed&place./%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 270s))
    self.con = 10s
0x0008FC:
    if (== self.con 8s) goto 0x00094C
0x000910:
    if (== self.con 10s) goto 0x00094C
0x000924:
    if (== self.con 18s) goto 0x00094C
0x000938:
    push (== self.con 19s)
    goto 0x000950
0x00094C:
    push 1s
0x000950:
    if !pop goto 0x000960
0x000954:
    call (scr_textskip[]:int32 )
0x000960:
    if !(== self.con 10s) goto 0x000990
0x000974:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000994
0x000990:
    push 0s
0x000994:
    if !pop goto 0x000AD8
0x000998:
    push (var 756s)
    push -5s
    self.fightbt2 = (instance_create[]:int32 (+ 2s:idealborder 50s) -5s (+ 0s:idealborder 50s))
    push 0s
    stog.type* = (int32 self.fightbt2)
    push 5s
    stog.sprite_index* = (int32 self.fightbt2)
    push (var 756s)
    push -5s
    self.sparebt2 = (instance_create[]:int32 (+ 2s:idealborder 50s) -5s (- 1s:idealborder 150s))
    push 1s
    stog.type* = (int32 self.sparebt2)
    push 10s
    stog.sprite_index* = (int32 self.sparebt2)
    [obj_heart].x = -999s
    push (var 748s)
    self.fkhrt = (instance_create[]:int32 -5s (+ 2s:idealborder 60s) (var 320s))
    self.con = 11s
0x000AD8:
    if !(== self.con 15s) goto 0x000B20
0x000AEC:
    call (caster_free[]:int32 (var -3s))
    self.con = 16s
    stog.alarm[4s] = 30s
0x000B20:
    if !(== self.con 17s) goto 0x000C00
0x000B34:
    self.msb = (caster_load[]:int32 (var "music/musicbox.ogg"))
    stog.msg[0s] = ".../"
    stog.msg[1s] = "\\E0After everything I&have done to&hurt you.../"
    stog.msg[2s] = "\\E7You would rather&stay down here&and suffer.../"
    stog.msg[3s] = "\\E9Than live happily&on the surface?/"
    stog.msg[4s] = "\\E6.../%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 270s))
    self.con = 18s
0x000C00:
    if !(== self.con 18s) goto 0x000C30
0x000C14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C34
0x000C30:
    push 0s
0x000C34:
    if !pop goto 0x000EF4
0x000C38:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.msb)
    stog.msg[0s] = "\\E1Human.../"
    stog.msg[1s] = "\\E7I promise you.../"
    stog.msg[2s] = "\\E7For as long as&you remain here.../"
    stog.msg[3s] = "\\E1My wife and I will&take care of you&as best we can./"
    stog.msg[4s] = "\\E2We can sit in&the living room^1,&telling stories.../"
    stog.msg[5s] = "\\E1Eating butterscotch&pie.../"
    stog.msg[6s] = "\\E2We could be&like.../"
    stog.msg[7s] = "\\E8Like a family.../%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 270s))
    self.con = 19s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.IK = (ini_read_real[]:int32 (var 0s) (var "IK") (var "Flowey"))
    self.CHANGE = (ini_read_real[]:int32 (var 0s) (var "CHANGE") (var "Flowey"))
    self.K = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    self.SK = (ini_read_real[]:int32 (var 0s) (var "SK") (var "Flowey"))
    call (ini_close[]:int32 )
    self.q = 0s
    if !(== global.kills 0s) goto 0x000EA0
0x000E58:
    if !(== self.CHANGE 0s) goto 0x000EA0
0x000E6C:
    if !(== self.SK 0s) goto 0x000EA0
0x000E80:
    if !(> self.IK 0s) goto 0x000EA0
0x000E94:
    self.q = 1s
0x000EA0:
    if !(== self.K 1s) goto 0x000ED4
0x000EB4:
    if !(== self.SK 0s) goto 0x000ED4
0x000EC8:
    self.q = 1s
0x000ED4:
    if !(== self.q 1s) goto 0x000EF4
0x000EE8:
    self.con = 130s
0x000EF4:
    if !(== self.con 19s) goto 0x000F24
0x000F08:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F28
0x000F24:
    push 0s
0x000F28:
    if !pop goto 0x000F54
0x000F2C:
    self.con = 18.5d
    stog.alarm[4s] = 50s
0x000F54:
    if !(== self.con 19.5d) goto 0x000F7C
0x000F70:
    self.con = 20s
0x000F7C:
    if !(== self.con 20s) goto 0x000FAC
0x000F90:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FB0
0x000FAC:
    push 0s
0x000FB0:
    if !pop goto 0x001028
0x000FB4:
    global.faceemotion = 5s
    call (caster_free[]:int32 (var -3s))
    call (instance_create[]:int32 (var 492s) (- self.asgorey 30s) (+ self.asgorex 190s))
    self.con = 21s
    stog.alarm[4s] = 70s
0x001028:
    if !(== self.con 22s) goto 0x001104
0x00103C:
    [obj_spinbullet_last].targetx = (+ self.asgorex 190s)
    [obj_spinbullet_last].targety = (+ self.asgorey 110s)
    pushenv 491s 0x0010AC
0x001074:
    call (move_towards_point[]:int32 (var 2s) self.targety self.targetx)
    self.friction = -0.5d
0x0010AC:
    popenv 0x001074
0x0010B0:
    if !(== self.hearts 1s) goto 0x0010E4
0x0010C4:
    pushenv (int32 self.specbullet) 0x0010E0
0x0010D4:
    self.speed = 0s
0x0010E0:
    popenv 0x0010D4
0x0010E4:
    self.con = 23s
    stog.alarm[4s] = 20s
0x001104:
    if !(== self.con 24s) goto 0x001204
0x001118:
    stog.alarm[2s] = 1s
    call (snd_play[]:int32 (var 51s))
    self.shudder = 16s
    global.faceemotion = 4s
    if !(== self.hearts 1s) goto 0x0011A4
0x00116C:
    self.ssx = (int32 self.specbullet):x
    self.ssy = (int32 self.specbullet):y
0x0011A4:
    pushenv 491s 0x0011B8
0x0011AC:
    call (instance_destroy[]:int32 )
0x0011B8:
    popenv 0x0011AC
0x0011BC:
    if !(== self.hearts 1s) goto 0x0011F8
0x0011D0:
    self.specbullet = (instance_create[]:int32 (var 491s) self.ssy self.ssx)
0x0011F8:
    self.con = 25s
0x001204:
    if !(== self.con 30s) goto 0x0012F0
0x001218:
    self.ddd = (instance_create[]:int32 (var 155s) self.y self.x)
    pushenv (int32 self.ddd) 0x001264
0x001250:
    call (scr_newvapordata[]:int32 (var 34s))
0x001264:
    popenv 0x001250
0x001268:
    self.remove = 1s
    push 627s
    stog.sprite_index* = (int32 self.ddd)
    push self.ht
    stog.ht* = (int32 self.ddd)
    push self.wd
    stog.wd* = (int32 self.ddd)
    self.room_speed = 10s
    self.con = 31s
    stog.alarm[4s] = 40s
0x0012F0:
    if !(== self.con 32s) goto 0x001374
0x001304:
    self.room_speed = 30s
    self.asgore = 0s
    self.fh = (instance_create[]:int32 (var 490s) (+ self.asgorey 110s) (+ self.asgorex 190s))
    self.con = 33s
    stog.alarm[4s] = 40s
0x001374:
    if !(== self.con 34s) goto 0x0013E0
0x001388:
    pushenv (int32 self.specbullet) 0x0013BC
0x001398:
    call (move_towards_point[]:int32 (var 4s) 490.y 490.x)
0x0013BC:
    popenv 0x001398
0x0013C0:
    self.con = 35s
    stog.alarm[4s] = 35s
0x0013E0:
    if !(== self.con 36s) goto 0x001480
0x0013F4:
    self.depth = 1s
    pushenv 491s 0x001414
0x001408:
    call (instance_destroy[]:int32 )
0x001414:
    popenv 0x001408
0x001418:
    pushenv 490s 0x001434
0x001420:
    call (event_user[]:int32 (var 0s))
0x001434:
    popenv 0x001420
0x001438:
    self.con = 37s
    stog.alarm[4s] = 110s
    if !(== self.murder 1s) goto 0x001480
0x00146C:
    stog.alarm[4s] = 60s
0x001480:
    if !(== self.con 38s) goto 0x001578
0x001494:
    global.faceemotion = 0s
    self.flowey = 1s
    self.fimg = 0s
    if !(== self.murder 0s) goto 0x00156C
0x0014CC:
    self.con = 95s
    stog.alarm[4s] = 60s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.won = (ini_read_real[]:int32 (var 0s) (var "Won") (var "General"))
    if !(> self.won 0s) goto 0x001568
0x001548:
    self.con = 119s
    stog.alarm[4s] = 60s
0x001568:
    goto 0x001578
0x00156C:
    self.con = 150s
0x001578:
    if !(== self.con 45s) goto 0x0015C0
0x00158C:
    call (caster_free[]:int32 (var -3s))
    self.con = 46s
    stog.alarm[4s] = 20s
0x0015C0:
    if !(== self.con 47s) goto 0x001658
0x0015D4:
    stog.flag[476s] = 1s
    global.stretch = 1.5d
    self.strike = (instance_create[]:int32 (var 733s) (+ self.asgorey 150s) (+ self.asgorex 195s))
    self.con = 49s
    stog.alarm[4s] = global.damagetimer
0x001658:
    if !(== self.con 50s) goto 0x0016B8
0x00166C:
    stog.alarm[2s] = 1s
    call (snd_play[]:int32 (var 51s))
    self.shudder = 16s
    global.faceemotion = 6s
    self.con = 51s
0x0016B8:
    if !(== self.con 58s) goto 0x0017A4
0x0016CC:
    self.ddd = (instance_create[]:int32 (var 155s) self.y self.x)
    pushenv (int32 self.ddd) 0x001718
0x001704:
    call (scr_newvapordata[]:int32 (var 34s))
0x001718:
    popenv 0x001704
0x00171C:
    self.remove = 1s
    push 627s
    stog.sprite_index* = (int32 self.ddd)
    push self.ht
    stog.ht* = (int32 self.ddd)
    push self.wd
    stog.wd* = (int32 self.ddd)
    self.room_speed = 10s
    self.con = 59s
    stog.alarm[4s] = 40s
0x0017A4:
    if !(== self.con 60s) goto 0x001828
0x0017B8:
    self.room_speed = 30s
    self.asgore = 0s
    self.fh = (instance_create[]:int32 (var 490s) (+ self.asgorey 100s) (+ self.asgorex 180s))
    self.con = 62s
    stog.alarm[4s] = 90s
0x001828:
    if !(== self.con 63s) goto 0x0018B8
0x00183C:
    [obj_asgfakeheart].shake = 0s
    self.spb = (instance_create[]:int32 (var 492s) (- self.asgorey 15s) (+ self.asgorex 190s))
    push 20s
    stog.speed* = (int32 self.spb)
    self.con = 64s
    stog.alarm[4s] = 50s
0x0018B8:
    if !(== self.con 65s) goto 0x001960
0x0018CC:
    [obj_spinbullet_last].targetx = (+ 490.x 2s)
    [obj_spinbullet_last].targety = (+ 490.y 2s)
    pushenv 491s 0x00193C
0x001904:
    call (move_towards_point[]:int32 (var 2s) self.targety self.targetx)
    self.friction = -0.5d
0x00193C:
    popenv 0x001904
0x001940:
    self.con = 66s
    stog.alarm[4s] = 18s
0x001960:
    if !(== self.con 67s) goto 0x001980
0x001974:
    self.con = 36s
0x001980:
    if !(== self.flowey 1s) goto 0x001AA8
0x001994:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 150s) (var 285s) self.fimg (var 623s))
    if !(== self.murder 1s) goto 0x001A14
0x001A00:
    push (>= self.fimg 8s)
    goto 0x001A18
0x001A14:
    push 0s
0x001A18:
    if !pop goto 0x001A74
0x001A1C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 150s) (var 285s) global.faceemotion (var 624s))
0x001A74:
    if !(< self.fimg 8s) goto 0x001AA8
0x001A88:
    self.fimg = (+ self.fimg 0.5d)
0x001AA8:
    if !(== self.flowey 3s) goto 0x001B48
0x001ABC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 150s) (var 285s) self.fimg2 (var 625s))
    if !(< self.fimg2 4s) goto 0x001B48
0x001B28:
    self.fimg2 = (+ self.fimg2 0.04d)
0x001B48:
    if !(== self.flowey 4s) goto 0x001BD4
0x001B5C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 150s) (var 285s) self.fimg2 (var 626s))
    self.fimg2 = (+ self.fimg2 0.5d)
0x001BD4:
    if !(== self.con 96s) goto 0x001DEC
0x001BE8:
    global.msc = 0s
    global.typer = 66s
    if !(== self.hearts 1s) goto 0x001CD0
0x001C14:
    stog.msg[0s] = "You&IDIOT./"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.truename = (ini_read_real[]:int32 (var 0s) (var "truename") (var "Flowey"))
    call (ini_close[]:int32 )
    if !(== self.truename 1s) goto 0x001CB8
0x001C94:
    stog.msg[0s] = (+ global.charname "./")
0x001CB8:
    stog.msg[1s] = "You&haven't&learned&a thing./%%"
0x001CD0:
    if !(== self.hearts 0s) goto 0x001DB8
0x001CE4:
    stog.msg[0s] = "Hee&hee&hee./"
    stog.msg[1s] = "So you&finally&get it./%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.truename = (ini_read_real[]:int32 (var 0s) (var "truename") (var "Flowey"))
    call (ini_close[]:int32 )
    if !(== self.truename 1s) goto 0x001DB8
0x001D7C:
    stog.msg[0s] = (+ global.charname "./")
    stog.msg[1s] = "So you&DO&recall./%%"
0x001DB8:
    call (scr_blcon_x[]:int32 (var 140s) (var 360s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 97s
0x001DEC:
    if !(== self.con 97s) goto 0x001E1C
0x001E00:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001E20
0x001E1C:
    push 0s
0x001E20:
    if !pop goto 0x001E70
0x001E24:
    stog.msg[0s] = "In&this&world.../%%"
    call (scr_blcon_x[]:int32 (var 140s) (var 360s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 100s
0x001E70:
    if !(== self.con 100s) goto 0x002164
0x001E84:
    self.rowdy = 1s
    self.radius = 400s
    self.angle = 0s
    self.i = 0s
    if !(< self.i 6s) goto 0x002144
0x001EC8:
    stog.ang[(int32 self.i)] = (* self.i 60s)
    push -1s
    self.xx = (+ (lengthdir_x[]:int32 (int32 self.i):ang self.radius) 320s)
    push -1s
    self.yy = (+ (lengthdir_y[]:int32 (int32 self.i):ang self.radius) 170s)
    stog.heart[(int32 self.i)] = (instance_create[]:int32 (var 491s) self.yy self.xx)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):heart)
    if !(== self.i 0s) goto 0x001FFC
0x001FD4:
    push 36s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x001FFC:
    if !(== self.i 1s) goto 0x002038
0x002010:
    push 42s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x002038:
    if !(== self.i 2s) goto 0x002074
0x00204C:
    push 37s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x002074:
    if !(== self.i 3s) goto 0x0020B0
0x002088:
    push 40s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x0020B0:
    if !(== self.i 4s) goto 0x0020EC
0x0020C4:
    push 41s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x0020EC:
    if !(== self.i 5s) goto 0x002128
0x002100:
    push 39s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x002128:
    self.i = (+ self.i 1s)
    goto 0x001EB4
0x002144:
    self.fimg2 = 0s
    self.con = 99.5d
0x002164:
    if !(== self.con 99.5d) goto 0x00219C
0x002180:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0021A0
0x00219C:
    push 0s
0x0021A0:
    if !pop goto 0x002220
0x0021A4:
    self.cym = (caster_load[]:int32 (var "music/cymbal.ogg"))
    self.con = 102s
    self.flowey = 3s
    global.typer = 67s
    stog.msg[0s] = "It's KILL or BE killed^4.%%"
    call (instance_create[]:int32 (var 782s) (var 350s) (var 120s))
0x002220:
    if !(== self.con 102s) goto 0x002250
0x002234:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002254
0x002250:
    push 0s
0x002254:
    if !pop goto 0x0022C8
0x002258:
    call (caster_play[]:int32 (var 1s) (var 1s) self.cym)
    call (snd_play[]:int32 (var 52s))
    self.flowey = 4s
    self.con = 103s
    self.wht = 0s
    stog.alarm[4s] = 2s
0x0022C8:
    if !(== self.con 104s) goto 0x002330
0x0022DC:
    self.rowdy = 2s
    self.con = 105s
    push -1s
    pushenv (int32 0s:heart) 0x002318
0x00230C:
    self.secrettrick = 1s
0x002318:
    popenv 0x00230C
0x00231C:
    stog.alarm[4s] = 160s
0x002330:
    if !(== self.con 106s) goto 0x00245C
0x002344:
    self.white_blocker = (scr_marker[]:int32 (var 999s) (var -10s) (var -10s))
    push 900s
    stog.image_xscale* = (int32 self.white_blocker)
    push 900s
    stog.image_yscale* = (int32 self.white_blocker)
    global.filechoice = 8s
    global.currentroom = 319s
    call (scr_saveprocess[]:int32 )
    if !(bool (file_exists[]:int32 (var "undertale.exe"))) goto 0x002400
0x0023DC:
    call (file_rename[]:int32 (var "flowey.exe") (var "undertale.exe"))
0x002400:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "F") (var "FFFFF"))
    call (ini_close[]:int32 )
    self.con = 107s
0x00245C:
    if !(== self.con 120s) goto 0x002748
0x002470:
    self.rowdy = 1s
    self.radius = 400s
    self.angle = 0s
    self.i = 0s
    if !(< self.i 6s) goto 0x002730
0x0024B4:
    stog.ang[(int32 self.i)] = (* self.i 60s)
    push -1s
    self.xx = (+ (lengthdir_x[]:int32 (int32 self.i):ang self.radius) 320s)
    push -1s
    self.yy = (+ (lengthdir_y[]:int32 (int32 self.i):ang self.radius) 170s)
    stog.heart[(int32 self.i)] = (instance_create[]:int32 (var 491s) self.yy self.xx)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):heart)
    if !(== self.i 0s) goto 0x0025E8
0x0025C0:
    push 36s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x0025E8:
    if !(== self.i 1s) goto 0x002624
0x0025FC:
    push 42s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x002624:
    if !(== self.i 2s) goto 0x002660
0x002638:
    push 37s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x002660:
    if !(== self.i 3s) goto 0x00269C
0x002674:
    push 40s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x00269C:
    if !(== self.i 4s) goto 0x0026D8
0x0026B0:
    push 41s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x0026D8:
    if !(== self.i 5s) goto 0x002714
0x0026EC:
    push 39s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):heart)
0x002714:
    self.i = (+ self.i 1s)
    goto 0x0024A0
0x002730:
    self.fimg2 = 0s
    self.con = 121s
0x002748:
    if !(== self.con 121s) goto 0x002988
0x00275C:
    global.msc = 0s
    global.typer = 6s
    if !(== self.won 1s) goto 0x0028EC
0x002788:
    stog.msg[0s] = "Hee hee hee^1.&Don't worry./"
    stog.msg[1s] = "I know there's no&REAL point in&fighting you./"
    stog.msg[2s] = "The human souls&would probably just&revolt again./"
    stog.msg[3s] = "So...!/%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.kill = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    if !(== self.kill 1s) goto 0x0028EC
0x002844:
    stog.msg[0s] = "Hee hee hee^1./"
    stog.msg[1s] = "Did you REALLY&think killing me&would make a&DIFFERENCE?/"
    stog.msg[2s] = "No./"
    stog.msg[3s] = "Every time you&load your SAVE^1,&I'll come back./"
    stog.msg[4s] = "And every time you&try to get a&happy ending.../"
    stog.msg[5s] = "I'll be there to&tear it away!/"
    stog.msg[6s] = "Ha ha ha!!!/%%"
0x0028EC:
    if !(== self.won 2s) goto 0x002918
0x002900:
    stog.msg[0s] = "Well^1, let's get&this over with./%%"
0x002918:
    if !(>= self.won 3s) goto 0x002944
0x00292C:
    stog.msg[0s] = ".../%%"
0x002944:
    self.con = 122s
    call (scr_blcon_x[]:int32 (var 140s) (var 390s))
    [obj_blconwideslave].depth = -9000s
    [OBJ_WRITER].depth = -90000
0x002988:
    if !(== self.con 122s) goto 0x0029B8
0x00299C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0029BC
0x0029B8:
    push 0s
0x0029BC:
    if !pop goto 0x002A60
0x0029C0:
    self.rowdy = 2s
    push -1s
    pushenv (int32 0s:heart) 0x0029F0
0x0029E4:
    self.secrettrick = 1s
0x0029F0:
    popenv 0x0029E4
0x0029F4:
    self.cym = (caster_load[]:int32 (var "music/cymbal.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.cym)
    self.con = 123s
    self.wht = 0s
    stog.alarm[4s] = 150s
0x002A60:
    if !(== self.con 130s) goto 0x002A90
0x002A74:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002A94
0x002A90:
    push 0s
0x002A94:
    if !pop goto 0x002AB8
0x002A98:
    self.con = 131s
    stog.alarm[4s] = 50s
0x002AB8:
    if !(== self.con 132s) goto 0x002AE8
0x002ACC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002AEC
0x002AE8:
    push 0s
0x002AEC:
    if !pop goto 0x002CD4
0x002AF0:
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "SK") (var "Flowey"))
    call (ini_close[]:int32 )
    global.typer = 63s
    global.msc = 0s
    call (caster_stop[]:int32 (var -3s))
    stog.msg[0s] = "\\E2.../"
    stog.msg[1s] = "\\E0No^1.&That's just a&fantasy^1, isn't it?/"
    stog.msg[2s] = "\\E1Young one^1, when I&look at you.../"
    stog.msg[3s] = "\\E2I'm reminded of the&human that fell here&long ago.../"
    stog.msg[4s] = "\\E8You have the same&feeling of hope in&your eyes./"
    stog.msg[5s] = "\\E7There is an ancient&prophecy among our&people.../"
    stog.msg[6s] = "One day^1, a savior&will come from the&heavens./"
    stog.msg[7s] = "\\E1... I believe the&one that was&prophecied was you./"
    stog.msg[8s] = "Somewhere in the&world outside.../"
    stog.msg[9s] = "There must be a way&to free us from our&prison./"
    stog.msg[10s] = "\\E0It pains me to&give you this&responsiblity^1, but.../"
    stog.msg[11s] = "\\E0Please^1.&Take my soul..^1.&and seek the truth./%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 270s))
    self.con = 133s
    self.remdepth = self.depth
0x002CD4:
    if !(== self.con 133s) goto 0x002D04
0x002CE8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002D08
0x002D04:
    push 0s
0x002D08:
    if !pop goto 0x002D90
0x002D0C:
    self.cut = (caster_load[]:int32 (var "music/sfx_cinematiccut.ogg"))
    call (caster_play[]:int32 (var 0.9d) (var 1s) self.cut)
    stog.alarm[4s] = 80s
    self.con = 134s
    self.wht = 0s
    self.depth = -999999
0x002D90:
    if !(== self.con 134s) goto 0x002E44
0x002DA4:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 self.wht)
    self.wht = (+ self.wht 0.2d)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    self.con = 134s
0x002E44:
    if !(== self.con 135s) goto 0x002E8C
0x002E58:
    self.con = 136s
    call (snd_play[]:int32 (var 51s))
    stog.alarm[4s] = 80s
0x002E8C:
    if !(== self.con 136s) goto 0x002EFC
0x002EA0:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x002EFC:
    if !(== self.con 137s) goto 0x00300C
0x002F10:
    self.depth = self.remdepth
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 64s
    stog.msg[0s] = "\\E0Ha... ha.../"
    stog.msg[1s] = "\\E6I'm sorry.../"
    stog.msg[2s] = "I couldn't give you&a simple^1, happy&ending.../"
    stog.msg[3s] = "But I believe your&freedom.../"
    stog.msg[4s] = "... is what my son.../"
    stog.msg[5s] = "\\E8... what ASRIEL would&have wanted./%%"
    call (scr_blcon_x[]:int32 (+ self.y 20s) (+ self.x 270s))
    self.con = 138s
0x00300C:
    if !(== self.con 138s) goto 0x00303C
0x003020:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003040
0x00303C:
    push 0s
0x003040:
    if !pop goto 0x003064
0x003044:
    self.con = 139s
    stog.alarm[4s] = 30s
0x003064:
    if !(== self.con 140s) goto 0x003084
0x003078:
    self.con = 58s
0x003084:
    if !(== self.rowdy 1s) goto 0x00324C
0x003098:
    self.angle = (+ self.angle 4s)
    if !(> self.radius 180s) goto 0x0030DC
0x0030C4:
    self.radius = (- self.radius 5s)
0x0030DC:
    self.radius = (+ self.radius (* (sin[]:int32 (/ self.angle (double 16s))) 2s))
    self.i = 0s
    if !(< self.i 6s) goto 0x00324C
0x003134:
    stog.ang[(int32 self.i)] = (+ (* self.i 60s) self.angle)
    push -1s
    self.xx = (+ (lengthdir_x[]:int32 (int32 self.i):ang self.radius) 320s)
    push -1s
    self.yy = (+ (lengthdir_y[]:int32 (int32 self.i):ang self.radius) 170s)
    push self.xx
    push -1s
    stog.x* = (int32 (int32 self.i):heart)
    push self.yy
    push -1s
    stog.y* = (int32 (int32 self.i):heart)
    self.i = (+ self.i 1s)
    goto 0x003120
0x00324C:
    if !(== self.rowdy 2s) goto 0x0033E4
0x003260:
    self.angle = (+ self.angle 1s)
    if !(> self.radius 0s) goto 0x0032AC
0x00328C:
    self.radius = (- self.radius 1.5d)
0x0032AC:
    self.i = 0s
    if !(< self.i 6s) goto 0x0033E4
0x0032CC:
    stog.ang[(int32 self.i)] = (+ (* self.i 60s) self.angle)
    push -1s
    self.xx = (+ (lengthdir_x[]:int32 (int32 self.i):ang self.radius) 320s)
    push -1s
    self.yy = (+ (lengthdir_y[]:int32 (int32 self.i):ang self.radius) 170s)
    push self.xx
    push -1s
    stog.x* = (int32 (int32 self.i):heart)
    push self.yy
    push -1s
    stog.y* = (int32 (int32 self.i):heart)
    self.i = (+ self.i 1s)
    goto 0x0032B8
0x0033E4:
    if !(== self.con 999s) goto 0x00348C
0x0033F8:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 self.wht)
    self.wht = (+ self.wht 0.01d)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x00348C:
    if !(== self.con 124s) goto 0x0034EC
0x0034A0:
    call (caster_free[]:int32 (var -3s))
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 (var 238s))
0x0034EC:
    if !(== self.con 150s) goto 0x0035EC
0x003500:
    global.msc = 0s
    global.typer = 6s
    stog.msg[0s] = "See^1?&I never betrayed&you^2! %"
    stog.msg[1s] = "It was all a&trick, see^2? %"
    stog.msg[2s] = "I was waiting to&kill him for you^2! %"
    stog.msg[3s] = "\\E1After all it's me&your best friend^2! %"
    stog.msg[4s] = "\\E2I'm helpful, I can&be useful to you^1 %"
    stog.msg[5s] = "\\E1I promise I won't&get in your way^1 %%"
    self.con = 151s
    call (scr_blcon_x[]:int32 (var 140s) (var 390s))
    [obj_blconwideslave].depth = -9000s
    [OBJ_WRITER].depth = -90000
0x0035EC:
    if !(== self.con 151s) goto 0x00361C
0x003600:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003620
0x00361C:
    push 0s
0x003620:
    if !pop goto 0x003698
0x003624:
    global.msc = 0s
    global.typer = 102s
    stog.msg[0s] = "\\E2I can help..^1.&I can..^1.&I can..^2. %%"
    self.con = 152s
    call (scr_blcon_x[]:int32 (var 140s) (var 390s))
    [obj_blconwideslave].depth = -9000s
    [OBJ_WRITER].depth = -90000
0x003698:
    if !(== self.con 152s) goto 0x0036C8
0x0036AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0036CC
0x0036C8:
    push 0s
0x0036CC:
    if !pop goto 0x003744
0x0036D0:
    global.msc = 0s
    global.typer = 103s
    stog.msg[0s] = "\\E3Please don't&kill me./%%"
    self.con = 153s
    call (scr_blcon_x[]:int32 (var 140s) (var 390s))
    [obj_blconwideslave].depth = -9000s
    [OBJ_WRITER].depth = -90000
0x003744:
    if !(== self.con 153s) goto 0x003774
0x003758:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003778
0x003774:
    push 0s
0x003778:
    if !pop goto 0x0037AC
0x00377C:
    call (instance_create[]:int32 (var 494s) (var 150s) (var 285s))
    call (instance_destroy[]:int32 )
0x0037AC:
    exit
