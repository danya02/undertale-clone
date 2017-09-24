0x000000:
    call (scr_depth[]:int32 )
    if !(== self.con 1s) goto 0x000040
0x000020:
    stog.alarm[2s] = 30s
    self.con = 2s
0x000040:
    if !(== self.con 2s) goto 0x000088
0x000054:
    [obj_mainchara].y = 798.y
    global.facing = 2s
    [obj_mainchara].facing = 2s
    global.interact = 1s
0x000088:
    if !(== self.con 3s) goto 0x000148
0x00009C:
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    self.sprite_index = self.dtsprite
    [obj_mainchara].cutscene = 1s
    [obj_mainchara].phasing = 1s
    stog.msg[0s] = "* fast shortcut^1, huh?/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3.5d
0x000148:
    if !(== self.con 3.5d) goto 0x000180
0x000164:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0001E0
0x000188:
    self.sprite_index = self.usprite
    stog.msg[0s] = "* hey^1, everyone./%%"
    self.con = 4s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0001E0:
    if !(== self.con 4s) goto 0x000210
0x0001F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x000288
0x000218:
    self.sprite_index = self.usprite
    self.image_speed = 0.2d
    self.vspeed = -2s
    stog.alarm[2s] = 12s
    self.con = 5s
    [obj_mainchara].vspeed = -2s
    [obj_mainchara].image_speed = 0.2d
0x000288:
    if !(== self.con 6s) goto 0x0003DC
0x00029C:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    [obj_mainchara].vspeed = 0s
    [obj_mainchara].facing = 3s
    [obj_mainchara].image_speed = 0s
    self.vspeed = 0s
    self.image_speed = 0s
    self.sprite_index = self.ltsprite
    self.con = 7.1d
    push -5s
    if !(!= 53s:flag 1s) goto 0x0003DC
0x000348:
    [obj_grillbynpc_womandog].image_speed = 0.25d
    [obj_grillbynpc_mandog].image_speed = 0.25d
    stog.msg[0s] = "* Hey^1, Sans.&* (Hi^1, Sans.)/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    self.con = 7.2d
0x0003DC:
    if !(== self.con 7.1d) goto 0x000420
0x0003F8:
    self.con = 6.2d
    stog.alarm[2s] = 20s
0x000420:
    if !(== self.con 7.2d) goto 0x000458
0x00043C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00045C
0x000458:
    push 0s
0x00045C:
    if !pop goto 0x00051C
0x000460:
    push -5s
    if !(!= 53s:flag 1s) goto 0x0004AC
0x00047C:
    pushenv 1470s 0x000490
0x000484:
    self.image_speed = 0s
0x000490:
    popenv 0x000484
0x000494:
    pushenv 1471s 0x0004A8
0x00049C:
    self.image_speed = 0s
0x0004A8:
    popenv 0x00049C
0x0004AC:
    self.sprite_index = self.rsprite
    self.image_speed = 0.2d
    self.hspeed = 3s
    stog.alarm[2s] = 11s
    self.con = 8s
    [obj_mainchara].hspeed = 1s
    [obj_mainchara].image_speed = 0.2d
0x00051C:
    if !(== self.con 9s) goto 0x000638
0x000530:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.hspeed = 0s
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].facing = 1s
    [obj_mainchara].image_speed = 0s
    self.image_speed = 0s
    self.sprite_index = self.rtsprite
    [obj_grillbynpc_foodmonster].image_speed = 0.25d
    [obj_grillbynpc_hotandbothered].image_speed = 0.25d
    stog.msg[0s] = "* Greetings^1, Sans.&* Hiya^1, Sansy~/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    self.con = 10s
0x000638:
    if !(== self.con 10s) goto 0x000668
0x00064C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00066C
0x000668:
    push 0s
0x00066C:
    if !pop goto 0x000710
0x000670:
    [obj_grillbynpc_foodmonster].image_speed = 0s
    [obj_grillbynpc_hotandbothered].image_speed = 0s
    self.sprite_index = self.usprite
    [obj_mainchara].facing = 2s
    global.facing = 2s
    self.image_speed = 0.2d
    self.vspeed = -2s
    stog.alarm[2s] = 26s
    self.con = 11s
    [obj_mainchara].vspeed = -3s
    [obj_mainchara].image_speed = 0.2d
0x000710:
    if !(== self.con 12s) goto 0x00087C
0x000724:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.vspeed = 0s
    [obj_mainchara].vspeed = 0s
    [obj_mainchara].facing = 3s
    global.facing = 3s
    self.image_index = 0s
    [obj_mainchara].image_speed = 0s
    self.image_speed = 0s
    self.sprite_index = self.ltsprite
    [obj_townnpc_weirdfish].image_speed = 0.2d
    stog.msg[0s] = "* Hey Sans^1, weren't you just&  here for breakfast a&  few minutes ago?/"
    call (scr_sansface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* nah^1, i haven't had&  breakfast in at least&  half an hour./"
    stog.msg[3s] = "\\E2* you must be thinking&  of brunch./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    self.con = 13s
0x00087C:
    if !(== self.con 13s) goto 0x0008AC
0x000890:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0008B0
0x0008AC:
    push 0s
0x0008B0:
    if !pop goto 0x0009B4
0x0008B4:
    [obj_townnpc_weirdfish].image_speed = 0.5d
    [obj_grillbynpc_hot2].image_speed = 0.5d
    [obj_grillbynpc_foodmonster].image_speed = 0.5d
    pushenv 1470s 0x00090C
0x0008F8:
    self.image_speed = 0.5d
0x00090C:
    popenv 0x0008F8
0x000910:
    pushenv 1471s 0x00092C
0x000918:
    self.image_speed = 0.5d
0x00092C:
    popenv 0x000918
0x000930:
    pushenv 1472s 0x00094C
0x000938:
    self.image_speed = 0.5d
0x00094C:
    popenv 0x000938
0x000950:
    [obj_grillbynpc_hotandbothered].image_speed = 0.5d
    call (caster_play[]:int32 (var 1s) (var 1s) self.rimshot)
    self.sprite_index = 1358s
    stog.alarm[2s] = 44s
    self.con = 14s
0x0009B4:
    if !(== self.con 15s) goto 0x000AFC
0x0009C8:
    self.con = 16s
    [obj_townnpc_weirdfish].image_speed = 0s
    [obj_grillbynpc_hot2].image_speed = 0s
    [obj_grillbynpc_foodmonster].image_speed = 0s
    pushenv 1470s 0x000A0C
0x000A00:
    self.image_speed = 0s
0x000A0C:
    popenv 0x000A00
0x000A10:
    pushenv 1471s 0x000A24
0x000A18:
    self.image_speed = 0s
0x000A24:
    popenv 0x000A18
0x000A28:
    pushenv 1472s 0x000A3C
0x000A30:
    self.image_speed = 0s
0x000A3C:
    popenv 0x000A30
0x000A40:
    [obj_grillbynpc_hotandbothered].image_speed = 0s
    pushenv 1369s 0x000A60
0x000A54:
    self.image_index = 0s
0x000A60:
    popenv 0x000A54
0x000A64:
    self.sprite_index = self.ltsprite
    self.image_index = 0s
    [obj_mainchara].facing = 1s
    global.facing = 1s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "* here^1, get comfy./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 17s
0x000AFC:
    if !(== self.con 17s) goto 0x000B2C
0x000B10:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B30
0x000B2C:
    push 0s
0x000B30:
    if !pop goto 0x000BE8
0x000B34:
    self.con = 17.1d
    global.phasing = 1s
    global.facing = 2s
    [obj_mainchara].image_speed = 0.25d
    self.image_speed = 0.25d
    self.sprite_index = self.usprite
    self.vspeed = -1s
    self.x = (+ self.x 2s)
    [obj_mainchara].vspeed = -1s
    if !(!= 1570.x 177s) goto 0x000BE8
0x000BDC:
    [obj_mainchara].x = 177s
0x000BE8:
    if !(== self.con 17.1d) goto 0x000C80
0x000C04:
    if !(<= self.y 75s) goto 0x000C48
0x000C18:
    self.vspeed = 0s
    self.image_speed = 0s
    self.sprite_index = 1349s
    self.y = 74s
0x000C48:
    if !(<= 1570.y 73s) goto 0x000C80
0x000C5C:
    [obj_mainchara].y = 73s
    [obj_mainchara].vspeed = 0s
    self.con = 20s
0x000C80:
    if !(== self.con 20s) goto 0x000CB0
0x000C94:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CB4
0x000CB0:
    push 0s
0x000CB4:
    if !pop goto 0x000D10
0x000CB8:
    call (caster_pause[]:int32 global.currentsong)
    call (caster_play[]:int32 (var 1s) (var 1s) self.whoopee)
    stog.alarm[2s] = 60s
    self.con = 21s
0x000D10:
    if !(== self.con 22s) goto 0x000D98
0x000D24:
    call (caster_stop[]:int32 self.whoopee)
    call (caster_resume[]:int32 global.currentsong)
    global.faceemotion = 1s
    global.msc = 570s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 23s
0x000D98:
    if !(== self.con 23s) goto 0x000DC8
0x000DAC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DCC
0x000DC8:
    push 0s
0x000DCC:
    if !pop goto 0x000E88
0x000DD0:
    self.sprite_index = 1348s
    self.image_speed = 0.1d
    self.grillby = 1464s
    push 1223s
    stog.sprite_index* = (int32 self.grillby)
    push 0.25d
    stog.image_speed* = (int32 self.grillby)
    push 200000
    stog.depth* = (int32 self.grillby)
    push -3s
    stog.hspeed* = (int32 self.grillby)
    self.con = 24s
    stog.alarm[2s] = 37s
0x000E88:
    if !(== self.con 25s) goto 0x000F04
0x000E9C:
    push 0s
    stog.hspeed* = (int32 self.grillby)
    push 1224s
    stog.sprite_index* = (int32 self.grillby)
    push -2s
    stog.vspeed* = (int32 self.grillby)
    self.con = 26s
    stog.alarm[2s] = 15s
0x000F04:
    if !(== self.con 27s) goto 0x000F7C
0x000F18:
    push 0s
    stog.vspeed* = (int32 self.grillby)
    push 0s
    stog.visible* = (int32 self.grillby)
    call (snd_play[]:int32 (var 92s))
    self.con = 28s
    stog.alarm[2s] = 90s
0x000F7C:
    if !(== self.con 29s) goto 0x000FF0
0x000F90:
    self.image_index = 0s
    self.image_speed = 0s
    self.sprite_index = 1350s
    global.msc = 572s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 30s
0x000FF0:
    if !(== self.con 30s) goto 0x001020
0x001004:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001024
0x001020:
    push 0s
0x001024:
    if !pop goto 0x001090
0x001028:
    push 1s
    stog.visible* = (int32 self.grillby)
    push 2s
    stog.vspeed* = (int32 self.grillby)
    push 1225s
    stog.sprite_index* = (int32 self.grillby)
    self.con = 32s
    stog.alarm[2s] = 15s
0x001090:
    if !(== self.con 33s) goto 0x00110C
0x0010A4:
    push 1222s
    stog.sprite_index* = (int32 self.grillby)
    self.con = 34s
    stog.alarm[2s] = 47s
    push 0s
    stog.vspeed* = (int32 self.grillby)
    push 3s
    stog.hspeed* = (int32 self.grillby)
0x00110C:
    if !(== self.con 35s) goto 0x00126C
0x001120:
    push 0s
    stog.image_speed* = (int32 self.grillby)
    push 1225s
    stog.sprite_index* = (int32 self.grillby)
    self.sprite_index = 1349s
    push -5s
    if !(== 391s:flag 1s) goto 0x001184
0x001178:
    self.foodimg = 1345s
0x001184:
    push -5s
    if !(== 391s:flag 2s) goto 0x0011AC
0x0011A0:
    self.foodimg = 1346s
0x0011AC:
    self.food1 = (scr_marker[]:int32 self.foodimg (var 72s) (var 192s))
    self.food2 = (scr_marker[]:int32 self.foodimg (var 72s) (var 208s))
    push 190000
    stog.depth* = (int32 self.food1)
    push 190000
    stog.depth* = (int32 self.food2)
    self.con = 36s
    stog.alarm[2s] = 45s
    push 0s
    stog.hspeed* = (int32 self.grillby)
0x00126C:
    if !(== self.con 37s) goto 0x0012F0
0x001280:
    push 0.25d
    stog.image_speed* = (int32 self.grillby)
    push 1223s
    stog.sprite_index* = (int32 self.grillby)
    push -3s
    stog.hspeed* = (int32 self.grillby)
    stog.alarm[2s] = 12s
    self.con = 38s
0x0012F0:
    if !(== self.con 39s) goto 0x0013B4
0x001304:
    push 1216s
    stog.sprite_index* = (int32 self.grillby)
    pushenv (int32 self.grillby) 0x00133C
0x00132C:
    self.depth = (scr_depth[]:int32 )
0x00133C:
    popenv 0x00132C
0x001340:
    push 0s
    stog.hspeed* = (int32 self.grillby)
    push 0.25d
    stog.image_speed* = (int32 self.grillby)
    global.msc = 574s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 40s
0x0013B4:
    if !(== self.con 40s) goto 0x0013E0
0x0013C8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0013E4
0x0013E0:
    push 0s
0x0013E4:
    if !pop goto 0x001420
0x0013E8:
    if !(> 782.stringno 0s) goto 0x001420
0x0013FC:
    self.sprite_index = 1351s
    self.image_speed = 0s
    self.image_index = 0s
0x001420:
    if !(== self.con 40s) goto 0x001450
0x001434:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001454
0x001450:
    push 0s
0x001454:
    if !pop goto 0x0014A0
0x001458:
    self.con = 41.5d
    if !(== self.burg 2s) goto 0x0014A0
0x001480:
    self.drink = 0s
    self.con = 40.1d
0x0014A0:
    if !(== self.con 40.1d) goto 0x0015CC
0x0014BC:
    if !(< self.image_index 8s) goto 0x001598
0x0014D0:
    self.image_index = (+ self.image_index 1s)
    self.drink = (+ self.drink 1s)
    if (== self.drink 1s) goto 0x001550
0x001514:
    if (== self.drink 3s) goto 0x001550
0x001528:
    if (== self.drink 5s) goto 0x001550
0x00153C:
    push (== self.drink 7s)
    goto 0x001554
0x001550:
    push 1s
0x001554:
    if !pop goto 0x00156C
0x001558:
    call (snd_play[]:int32 (var 110s))
0x00156C:
    self.con = 39.2d
    stog.alarm[2s] = 5s
    goto 0x0015CC
0x001598:
    self.image_index = 9s
    self.con = 40.3d
    stog.alarm[2s] = 40s
0x0015CC:
    if !(== self.con 40.2d) goto 0x0015FC
0x0015E8:
    self.con = 40.1d
0x0015FC:
    if !(== self.con 41.3d) goto 0x001634
0x001618:
    self.con = 43s
    self.sprite_index = self.usprite
0x001634:
    if !(== self.con 41.5d) goto 0x0016E8
0x001650:
    self.sprite_index = 1350s
    global.typer = 5s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* (You tip the ketchup...)/"
    stog.msg[1s] = "* (The cap falls off and all&  the ketchup in the bottle&  pours onto your food.)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 41.6d
0x0016E8:
    if !(== self.con 41.6d) goto 0x00171C
0x001704:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001720
0x00171C:
    push 0s
0x001720:
    if !pop goto 0x00175C
0x001724:
    if !(== 782.stringno 1s) goto 0x00175C
0x001738:
    push 1s
    stog.image_index* = (int32 self.food1)
    self.con = 42s
0x00175C:
    if !(== self.con 42s) goto 0x00178C
0x001770:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001790
0x00178C:
    push 0s
0x001790:
    if !pop goto 0x001850
0x001794:
    if !(< self.burg 2s) goto 0x001844
0x0017A8:
    global.facechoice = 3s
    global.typer = 17s
    global.msc = 0s
    global.faceemotion = 1s
    stog.msg[0s] = "* whoops./"
    stog.msg[1s] = "\\E0* eh, forgeddaboudit^1.&* you can have mine./"
    stog.msg[2s] = "\\E1* i'm not hungry anyway./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x001844:
    self.con = 43s
0x001850:
    if !(== self.con 43s) goto 0x001880
0x001864:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x001884
0x001880:
    push 0s
0x001884:
    if !pop goto 0x00195C
0x001888:
    if !(== 782.stringno 2s) goto 0x00195C
0x00189C:
    if !(> (int32 self.food1):x (- (int32 self.food1):xstart 16s)) goto 0x0018FC
0x0018D4:
    stog.x* = (- (int32 self.food1):x 2s)
0x0018FC:
    push (int32 self.food1)
    if !(> (int32 self.food2):x (- (int32 self.food2):xstart 16s)) goto 0x00195C
0x001934:
    stog.x* = (- (int32 self.food2):x 2s)
0x00195C:
    push (int32 self.food2)
    if !(== self.con 43s) goto 0x00198C
0x001970:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001990
0x00198C:
    push 0s
0x001990:
    if !pop goto 0x0019D4
0x001994:
    self.sprite_index = 1347s
    self.image_speed = 0.2d
    stog.alarm[2s] = 90s
    self.con = 44s
0x0019D4:
    if !(== self.con 45s) goto 0x001B08
0x0019E8:
    self.image_speed = 0s
    self.image_index = 0s
    self.sprite_index = 1350s
    global.msc = 0s
    stog.msg[0s] = "* anyway^1, cool or not^1,&  you have to agree&  papyrus tries real hard./"
    stog.msg[1s] = "\\E0* like how he keeps&  trying to be part of&  the royal guard./"
    stog.msg[2s] = "\\E1* one day^1, he went to&  the house of the head&  of the royal guard.../"
    stog.msg[3s] = "\\E0* and begged her to&  let him be in it./"
    stog.msg[4s] = "\\E1* of course^1, she shut&  the door on him because&  it was midnight./"
    stog.msg[5s] = "\\E0* but the next day^1, she&  woke up and saw him&  still waiting there./"
    stog.msg[6s] = "* seeing his dedication^1,&  she decided to give&  him warrior training./"
    stog.msg[7s] = "\\E1* it's^1, uh^1, still a&  work in progress./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 46s
0x001B08:
    if !(== self.con 46s) goto 0x001B38
0x001B1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001B3C
0x001B38:
    push 0s
0x001B3C:
    if !pop goto 0x001B94
0x001B40:
    self.sprite_index = 1349s
    stog.alarm[2s] = 108s
    self.con = 47s
    self.curvol = (caster_get_volume[]:int32 global.currentsong)
    self.origvol = self.curvol
0x001B94:
    if !(== self.con 47s) goto 0x001C20
0x001BA8:
    self.curvol = (- self.curvol 0.01d)
    call (caster_set_volume[]:int32 self.curvol global.currentsong)
    if !(< self.curvol 0.02d) goto 0x001C20
0x001C00:
    self.curvol = 0s
    call (caster_pause[]:int32 global.currentsong)
0x001C20:
    if !(== self.con 48s) goto 0x001C7C
0x001C34:
    stog.msg[0s] = "\\E1* oh yeah^1, I wanted&  to ask you something./%%"
    self.con = 49s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x001C7C:
    if !(== self.con 49s) goto 0x001CAC
0x001C90:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001CB0
0x001CAC:
    push 0s
0x001CB0:
    if !pop goto 0x001CD4
0x001CB4:
    self.con = 50s
    stog.alarm[2s] = 30s
0x001CD4:
    if !(== self.con 51s) goto 0x001DE0
0x001CE8:
    push 200000
    stog.depth* = (int32 self.grillby)
    push 0s
    stog.image_speed* = (int32 self.grillby)
    call (snd_play[]:int32 (var 106s))
    self.dark = (instance_create[]:int32 (var 1363s) (var 0s) (var 0s))
    push 1s
    stog.visible* = (int32 self.dark)
    push 20s
    stog.depth* = (int32 self.dark)
    push 1226s
    stog.sprite_index* = (int32 self.dark)
    push 0.8d
    stog.image_alpha* = (int32 self.dark)
    self.con = 52s
    stog.alarm[2s] = 60s
0x001DE0:
    if !(== self.con 53s) goto 0x001E7C
0x001DF4:
    self.mystvol = 0.4d
    call (caster_loop[]:int32 (var 0.4d) (var 1s) self.mystery)
    global.msc = 576s
    global.faceemotion = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 54s
0x001E7C:
    if !(== self.con 54s) goto 0x001EAC
0x001E90:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001EB0
0x001EAC:
    push 0s
0x001EB0:
    if !pop goto 0x001EF4
0x001EB4:
    call (caster_resume[]:int32 global.currentsong)
    push 0.25d
    stog.image_speed* = (int32 self.grillby)
    self.con = 55s
0x001EF4:
    if !(== self.con 55s) goto 0x002080
0x001F08:
    stog.image_alpha* = (- (int32 self.dark):image_alpha 0.02d)
    if !(< (int32 self.dark):image_alpha 0.03d) goto 0x001F78
0x001F60:
    push (int32 self.dark)
    push 0s
    stog.image_alpha* = (int32 self.dark)
0x001F78:
    self.curvol = (+ self.curvol 0.01d)
    self.mystvol = (- self.mystvol 0.02d)
    if !(< self.mystvol 0.02d) goto 0x001FE0
0x001FD4:
    self.mystvol = 0s
0x001FE0:
    call (caster_set_volume[]:int32 self.mystvol self.mystery)
    if !(> self.curvol self.origvol) goto 0x002064
0x002014:
    self.curvol = self.origvol
    self.con = 56s
    call (caster_stop[]:int32 self.mystery)
    pushenv (int32 self.dark) 0x002060
0x002054:
    call (instance_destroy[]:int32 )
0x002060:
    popenv 0x002054
0x002064:
    call (caster_set_volume[]:int32 self.curvol global.currentsong)
0x002080:
    if !(== self.con 56s) goto 0x0020DC
0x002094:
    self.y = (+ self.y 10s)
    self.sprite_index = self.dsprite
    self.con = 57s
    stog.alarm[2s] = 30s
0x0020DC:
    if !(== self.con 58s) goto 0x002114
0x0020F0:
    global.facing = 0s
    [obj_mainchara].facing = 0s
    self.con = 59s
0x002114:
    if !(== self.con 59s) goto 0x002144
0x002128:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002148
0x002144:
    push 0s
0x002148:
    if !pop goto 0x0021B8
0x00214C:
    global.msc = 0s
    stog.msg[0s] = "* welp^1, that was a&  long break./"
    stog.msg[1s] = "\\E1* i can't believe i let&  ya pull me away from&  work for that long./%%"
    self.con = 60s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0021B8:
    if !(== self.con 60s) goto 0x0021E8
0x0021CC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0021EC
0x0021E8:
    push 0s
0x0021EC:
    if !pop goto 0x002210
0x0021F0:
    self.con = 61s
    stog.alarm[2s] = 30s
0x002210:
    if !(== self.con 62s) goto 0x002270
0x002224:
    self.sprite_index = self.utsprite
    global.msc = 578s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 63s
0x002270:
    if !(== self.con 63s) goto 0x0022A0
0x002284:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0022A4
0x0022A0:
    push 0s
0x0022A4:
    if !pop goto 0x002330
0x0022A8:
    self.sprite_index = self.dsprite
    self.image_index = 0s
    global.msc = 0s
    stog.msg[0s] = "* just kidding./"
    stog.msg[1s] = "* grillby^1, put it on&  my tab./%%"
    self.con = 64s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x002330:
    if !(== self.con 64s) goto 0x002360
0x002344:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002364
0x002360:
    push 0s
0x002364:
    if !pop goto 0x0023E4
0x002368:
    call (caster_free[]:int32 self.whoopee)
    call (caster_free[]:int32 self.mystery)
    call (caster_free[]:int32 self.rimshot)
    self.vspeed = 2s
    self.image_speed = 0.25d
    self.con = 66s
    stog.alarm[2s] = 50s
0x0023E4:
    if !(== self.con 67s) goto 0x002440
0x0023F8:
    self.vspeed = 0s
    self.sprite_index = self.lsprite
    self.hspeed = -2s
    self.con = 68s
    stog.alarm[2s] = 20s
0x002440:
    if !(== self.con 69s) goto 0x0024B0
0x002454:
    self.image_speed = 0s
    self.vspeed = 0s
    self.sprite_index = self.dsprite
    self.hspeed = 0s
    self.con = 69.1d
    stog.alarm[2s] = 20s
0x0024B0:
    if !(== self.con 70.1d) goto 0x002560
0x0024CC:
    self.sprite_index = self.usprite
    stog.msg[0s] = "* by the way.../"
    stog.msg[1s] = "* ... i was going to say&  something^1, but i forgot./%%"
    self.gege = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gege)
    self.con = 70.2d
0x002560:
    if !(== self.con 70.2d) goto 0x002598
0x00257C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00259C
0x002598:
    push 0s
0x00259C:
    if !pop goto 0x0025F0
0x0025A0:
    self.image_speed = 0.25d
    self.vspeed = 2s
    self.sprite_index = self.dsprite
    self.con = 70s
    stog.alarm[2s] = 20s
0x0025F0:
    if !(== self.con 71s) goto 0x002664
0x002604:
    global.phasing = 1s
    stog.flag[89s] = 2s
    [obj_mainchara].vspeed = 1s
    [obj_mainchara].image_speed = 0.25d
    self.con = 72s
    stog.alarm[2s] = 30s
0x002664:
    if !(== self.con 73s) goto 0x0026CC
0x002678:
    pushenv 1369s 0x00268C
0x002680:
    self.sansmode = 1s
0x00268C:
    popenv 0x002680
0x002690:
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].vspeed = 0s
    global.phasing = 0s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0026CC:
    exit
