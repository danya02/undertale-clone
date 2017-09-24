0x000000:
    if !(< 1570.y 840s) goto 0x00003C
0x000014:
    if !(== global.interact 0s) goto 0x00003C
0x000028:
    push (== self.con 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00009C
0x000044:
    global.interact = 1s
    global.facing = 2s
    [obj_mainchara].image_speed = 0.334d
    [obj_mainchara].vspeed = -3s
    self.con = 1s
    stog.alarm[4s] = 15s
0x00009C:
    if !(== self.con 2s) goto 0x0000E8
0x0000B0:
    [obj_mainchara].vspeed = 0s
    stog.view_object[0s] = -4s
    [obj_mainchara].cutscene = 1s
    self.con = 3s
0x0000E8:
    if !(== self.con 3s) goto 0x00015C
0x0000FC:
    push -1s
    stog.view_yview[(- 0s:view_yview 3s)] = 0s
    push -1s
    if !(<= 0s:view_yview 622s) goto 0x00015C
0x00013C:
    stog.view_yview[0s] = 620s
    self.con = 4s
0x00015C:
    if !(== self.con 4s) goto 0x000240
0x000170:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.already = (ini_read_real[]:int32 (var 0s) (var "BossMet") (var "Mettaton"))
    call (ini_close[]:int32 )
    self.con = 5s
    stog.alarm[4s] = 15s
    if !(== self.murder 1s) goto 0x000204
0x0001F8:
    self.already = 0s
0x000204:
    if !(>= self.already 1s) goto 0x000240
0x000218:
    self.con = 3.1d
    stog.alarm[4s] = 15s
0x000240:
    if !(== self.con 4.1d) goto 0x0002B8
0x00025C:
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 833s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 4.2d
0x0002B8:
    if !(== self.con 4.5d) goto 0x0002F0
0x0002D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002F4
0x0002F0:
    push 0s
0x0002F4:
    if !pop goto 0x000320
0x0002F8:
    self.con = 4.4d
    stog.alarm[4s] = 20s
0x000320:
    if !(== self.con 5.4d) goto 0x00040C
0x00033C:
    push 1657s
    stog.sprite_index* = (int32 self.mett)
    stog.flag[20s] = 7s
    push 0s
    stog.image_speed* = (int32 self.mett)
    push 0s
    stog.image_index* = (int32 self.mett)
    global.typer = 27s
    global.msc = 0s
    stog.msg[0s] = "* REALLY^1?&* WHERE?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.skip = 1s
    self.con = 5.5d
0x00040C:
    if !(== self.con 5.5d) goto 0x000444
0x000428:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000448
0x000444:
    push 0s
0x000448:
    if !pop goto 0x0004B4
0x00044C:
    call (caster_stop[]:int32 (var -3s))
    call (snd_play[]:int32 (var 108s))
    push 1s
    stog.image_index* = (int32 self.mett)
    self.con = 4.6d
    stog.alarm[4s] = 80s
0x0004B4:
    if !(== self.con 5.6d) goto 0x0004EC
0x0004D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0004F0
0x0004EC:
    push 0s
0x0004F0:
    if !pop goto 0x000550
0x0004F4:
    stog.msg[0s] = "* CLEVER..^1.&* VERY CLEVER./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 5.7d
    self.babytimer = 500s
0x000550:
    if !(== self.con 5.7d) goto 0x000588
0x00056C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00058C
0x000588:
    push 0s
0x00058C:
    if !pop goto 0x00059C
0x000590:
    self.con = 19s
0x00059C:
    if !(== self.con 6s) goto 0x0005CC
0x0005B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005D0
0x0005CC:
    push 0s
0x0005D0:
    if !pop goto 0x000BFC
0x0005D4:
    global.typer = 27s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* OH YES.&* THERE YOU ARE, DARLING./"
    stog.msg[1s] = "* IT'S TIME TO HAVE OUR&  LITTLE SHOWDOWN./"
    stog.msg[2s] = "* IT'S TIME TO FINALLY STOP&  THE \"MALFUNCTIONING\" ROBOT./"
    stog.msg[3s] = "* ... NOT!!!/"
    stog.msg[4s] = "* MALFUNCTION?&* REPROGRAMMING?&* PLEASE./"
    stog.msg[5s] = "* THIS WAS ALL JUST A BIG&  SHOW./"
    stog.msg[6s] = "* AN ACT./"
    stog.msg[7s] = "* MY \"MALFUNCTION\" WAS ALL&  MADE UP BY DR. ALPHYS./"
    stog.msg[8s] = "* AS SHE WATCHED YOU ON THE&  SCREEN^1, SHE GREW ATTACHED&  TO YOUR ADVENTURE./"
    stog.msg[9s] = "* SHE DESPERATELY WANTED TO&  BE A PART OF IT./"
    stog.msg[10s] = "* SO SHE DECIDED TO INSERT&  HERSELF INTO YOUR STORY./"
    stog.msg[11s] = "* THIS SCENARIO, WHERE SHE&  \"SAVES\" YOU FROM ME, WAS&  HER CREATION./"
    stog.msg[12s] = "* EVEN NOW, SHE IS WAITING&  OUTSIDE THIS ROOM./"
    stog.msg[13s] = "* DURING OUR \"BATTLE,\" SHE&  WILL INTERRUPT./"
    stog.msg[14s] = "* THEN SHE WILL PRETEND TO&  \"DEACTIVATE\" ME, \"SAVING\" YOU&  ONE FINAL TIME./"
    stog.msg[15s] = "* FINALLY.&* SHE'LL BE THE HEROINE OF&  YOUR ADVENTURE./"
    stog.msg[16s] = "* FINALLY.&* SHE'LL BE SOMEONE SOMEBODY&  ACTUALLY LIKES./"
    stog.msg[17s] = "* YOU'LL REGARD HER SO HIGHLY&  SHE'LL EVEN BE ABLE TO&  CONVINCE YOU NOT TO LEAVE./"
    stog.msg[18s] = "* ... OR NOT./"
    stog.msg[19s] = "* YOU SEE, I'VE HAD ENOUGH OF&  THIS PREDICTABLE CHARADE./"
    stog.msg[20s] = "* I HAVE NO DESIRE TO HARM&  HUMANS.&* FAR FROM IT, ACTUALLY./"
    stog.msg[21s] = "* AS METTATON, MY ONLY DESIRE&  IS TO ENTERTAIN./"
    stog.msg[22s] = "* AFTER ALL, THE AUDIENCE&  DESERVES A GOOD SHOW,&  DON'T THEY?/"
    stog.msg[23s] = "* AND WHAT'S A GOOD SHOW.../"
    stog.msg[24s] = "* WITHOUT A PLOT TWIST?/%%"
    stog.msg[0s] = "* OH YES.&* THERE YOU ARE, DARLING./"
    stog.msg[1s] = "* IT'S TIME TO HAVE OUR&  LITTLE SHOWDOWN./"
    stog.msg[2s] = "* IT'S TIME TO FINALLY STOP&  THE \"MALFUNCTIONING\" ROBOT./"
    stog.msg[3s] = "* ... NOT!!!/"
    stog.msg[4s] = "* MALFUNCTION?&* REPROGRAMMING?&* GET REAL./"
    stog.msg[5s] = "* THIS WAS ALL JUST A BIG&  SHOW./"
    stog.msg[6s] = "* AN ACT./"
    stog.msg[7s] = "* ALPHYS HAS BEEN PLAYING&  YOU FOR A FOOL THE&  WHOLE TIME./"
    stog.msg[8s] = "* AS SHE WATCHED YOU ON THE&  SCREEN^1, SHE GREW ATTACHED&  TO YOUR ADVENTURE./"
    stog.msg[9s] = "* SHE DESPERATELY WANTED TO&  BE A PART OF IT./"
    stog.msg[10s] = "* SO SHE DECIDED TO INSERT&  HERSELF INTO YOUR STORY./"
    stog.msg[11s] = "* SHE REACTIVATED PUZZLES^1.&* SHE DISABLED ELEVATORS^1.&* SHE ENLISTED ME TO TORMENT YOU./"
    stog.msg[12s] = "* ALL SO SHE COULD SAVE&  YOU FROM DANGERS THAT&  DIDN'T EXIST./"
    stog.msg[13s] = "* ALL SO YOU WOULD THINK&  SHE'S THE GREAT PERSON.../"
    stog.msg[14s] = "* THAT SHE'S NOT./"
    stog.msg[15s] = "* AND NOW^1, IT'S TIME FOR&  HER FINEST HOUR./"
    stog.msg[16s] = "* AT THIS VERY MOMENT,&  ALPHYS IS WAITING OUTSIDE&  THE ROOM./"
    stog.msg[17s] = "* DURING OUR \"BATTLE,\" SHE&  WILL INTERRUPT./"
    stog.msg[18s] = "* SHE WILL PRETEND TO&  \"DEACTIVATE\" ME, \"SAVING\" YOU&  ONE FINAL TIME./"
    stog.msg[19s] = "* FINALLY.&* SHE'LL BE THE HEROINE OF&  YOUR ADVENTURE./"
    stog.msg[20s] = "* YOU'LL REGARD HER SO HIGHLY&  SHE'LL EVEN BE ABLE TO&  CONVINCE YOU NOT TO LEAVE./"
    stog.msg[21s] = "* ... OR NOT./"
    stog.msg[22s] = "* YOU SEE, I'VE HAD ENOUGH OF&  THIS PREDICTABLE CHARADE./"
    stog.msg[23s] = "* I HAVE NO DESIRE TO HARM&  HUMANS.&* FAR FROM IT, ACTUALLY./"
    stog.msg[24s] = "* MY ONLY DESIRE IS TO&  ENTERTAIN./"
    stog.msg[25s] = "* AFTER ALL, THE AUDIENCE&  DESERVES A GOOD SHOW,&  DON'T THEY?/"
    stog.msg[26s] = "* AND WHAT'S A GOOD SHOW.../"
    stog.msg[27s] = "* WITHOUT A PLOT TWIST?/%%"
    if !(== self.murder 1s) goto 0x000BAC
0x000B04:
    stog.msg[0s] = "* MY^1, MY^1.&* SO YOU'VE FINALLY ARRIVED./"
    stog.msg[1s] = "* AFTER OUR FIRST MEETING^1, I&  REALIZED..^1.&* SOMETHING GHASTLY./"
    stog.msg[2s] = "* YOU'RE NOT JUST A THREAT&  TO MONSTERS..^1.&* BUT HUMANITY^1, AS WELL./"
    stog.msg[3s] = "* OH MY^1.&* THAT'S AN ISSUE./"
    stog.msg[4s] = "* YOU SEE^1, I CAN'T BE A&  STAR WITHOUT AN AUDIENCE./"
    stog.msg[5s] = "* AND BESIDES.../"
    stog.msg[6s] = "* THERE ARE SOME PEOPLE..^1.&* I WANT TO PROTECT./%%"
0x000BAC:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 7s
    if !(== self.murder 1s) goto 0x000BFC
0x000BF0:
    self.con = 30s
0x000BFC:
    if !(== self.con 7s) goto 0x000C2C
0x000C10:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C30
0x000C2C:
    push 0s
0x000C30:
    if !pop goto 0x000CA4
0x000C34:
    call (caster_free[]:int32 (var -3s))
    self.mtsong2 = (caster_load[]:int32 (var "music/mettafly.ogg"))
    self.drawblack = 1s
    call (snd_play[]:int32 (var 21s))
    self.con = 8s
    stog.alarm[4s] = 40s
0x000CA4:
    if !(== self.con 9s) goto 0x000CEC
0x000CB8:
    call (snd_play[]:int32 (var 17s))
    self.con = 10s
    stog.alarm[4s] = 20s
0x000CEC:
    if !(== self.con 11s) goto 0x000D90
0x000D00:
    global.typer = 47s
    global.msc = 0s
    global.facechoice = 6s
    global.faceemotion = 3s
    stog.msg[0s] = "* H-hey!!^1!&* Wh-wh-what's going on!?/"
    stog.msg[1s] = "* Th-th-the door just&  locked itself!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
0x000D90:
    if !(== self.con 13s) goto 0x000DC0
0x000DA4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DC4
0x000DC0:
    push 0s
0x000DC4:
    if !pop goto 0x000EA4
0x000DC8:
    call (snd_play[]:int32 (var 13s))
    self.sixtyon = 1s
    self.sixtyflash = 1s
    global.typer = 27s
    global.msc = 0s
    global.facechoice = 0s
    global.faceemotion = 3s
    push 0.25d
    stog.image_speed* = (int32 self.mett)
    stog.msg[0s] = "\\M1* SORRY^1, FOLKS^1!&* THE OLD PROGRAM'S BEEN&  CANCELLED!!!/"
    stog.msg[1s] = "* BUT WE'VE GOT A FINALE&  THAT WILL DRIVE YOU WILD!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 14s
0x000EA4:
    if !(== self.con 14s) goto 0x000ED4
0x000EB8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000ED8
0x000ED4:
    push 0s
0x000ED8:
    if !pop goto 0x000F4C
0x000EDC:
    self.babytimer = 0s
    self.scr = (instance_create[]:int32 (var 1251s) (var 0s) (var 0s))
    push self.sixty
    stog.sixty* = (int32 self.scr)
    self.con = 15s
    stog.alarm[4s] = 90s
0x000F4C:
    if !(== self.con 16s) goto 0x000F7C
0x000F60:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F80
0x000F7C:
    push 0s
0x000F80:
    if !pop goto 0x00105C
0x000F84:
    call (caster_play[]:int32 (var 1s) (var 0.7d) self.mtsong2)
    global.msc = 0s
    global.typer = 27s
    stog.msg[0s] = "\\M5* REAL DRAMA!!&* REAL ACTION!!&* REAL BLOODSHED!!/"
    stog.msg[1s] = "* ON OUR NEW SHOW.../"
    stog.msg[2s] = "* \"ATTACK OF THE KILLER&  ROBOT!\"/%%"
    self.ss = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.ss)
    self.con = 17s
0x00105C:
    if !(> self.con 14s) goto 0x001084
0x001070:
    push (== self.murder 0s)
    goto 0x001088
0x001084:
    push 0s
0x001088:
    if !pop goto 0x0010A4
0x00108C:
    self.babytimer = (+ self.babytimer 1s)
0x0010A4:
    if !(== self.con 17s) goto 0x0010D4
0x0010B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010D8
0x0010D4:
    push 0s
0x0010D8:
    if !pop goto 0x001124
0x0010DC:
    if !(> self.babytimer 300s) goto 0x001124
0x0010F0:
    call (snd_play[]:int32 (var 30s))
    self.con = 18s
    stog.alarm[4s] = 30s
0x001124:
    if !(== self.con 19s) goto 0x0011C8
0x001138:
    global.mercy = 1s
    global.battlegroup = 80s
    if !(== self.skip 1s) goto 0x001170
0x001164:
    global.battlegroup = 81s
0x001170:
    stog.flag[15s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 20s
    stog.alarm[4s] = 33s
0x0011C8:
    if !(== self.con 21s) goto 0x00128C
0x0011DC:
    global.mercy = 0s
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    pushenv 1251s 0x001214
0x001208:
    self.con = 6s
0x001214:
    popenv 0x001208
0x001218:
    pushenv (int32 self.mett) 0x001234
0x001228:
    call (instance_destroy[]:int32 )
0x001234:
    popenv 0x001228
0x001238:
    push -1s
    stog.view_yview[(- 0s:view_yview 60s)] = 0s
    call (instance_create[]:int32 (var 1248s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x00128C:
    if !(== self.con 30s) goto 0x0012BC
0x0012A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012C0
0x0012BC:
    push 0s
0x0012C0:
    if !pop goto 0x001360
0x0012C4:
    [obj_mainchara].visible = 0s
    self.mc = (scr_marker[]:int32 (var 1044s) 1570.y 1570.x)
    pushenv (int32 self.mc) 0x001314
0x001308:
    self.image_index = 1s
0x001314:
    popenv 0x001308
0x001318:
    pushenv (int32 self.mc) 0x00133C
0x001328:
    self.vspeed = -0.5d
0x00133C:
    popenv 0x001328
0x001340:
    self.con = 31s
    stog.alarm[4s] = 10s
0x001360:
    if !(== self.con 32s) goto 0x0013D4
0x001374:
    pushenv (int32 self.mc) 0x001390
0x001384:
    self.image_index = 0s
0x001390:
    popenv 0x001384
0x001394:
    pushenv (int32 self.mc) 0x0013B0
0x0013A4:
    self.vspeed = 0s
0x0013B0:
    popenv 0x0013A4
0x0013B4:
    self.con = 33s
    stog.alarm[4s] = 30s
0x0013D4:
    if !(== self.con 34s) goto 0x0014D8
0x0013E8:
    stog.msg[0s] = "* AH HA HA^1.&* EAGER, AS ALWAYS, EH?/"
    stog.msg[1s] = "* BUT DON'T TOUCH THAT DIAL.&* THERE'S SOMETHING YOU&  HAVEN'T ACCOUNTED FOR./"
    stog.msg[2s] = "* AS ANY TRUE FAN WOULD KNOW,&  I WAS FIRST CREATED AS&  A HUMAN ERADICATION ROBOT./"
    stog.msg[3s] = "* IT WAS ONLY AFTER BECOMING A&  STAR THAT I WAS GIVEN A&  MORE... PHOTOGENIC BODY./"
    stog.msg[4s] = "* HOWEVER./"
    stog.msg[5s] = "* THOSE ORIGINAL FUNCTIONS&  HAVE NEVER BEEN FULLY&  REMOVED.../"
    stog.msg[6s] = "* COME ANY CLOSER, AND&  I'LL BE FORCED TO SHOW&  YOU.../"
    stog.msg[7s] = "\\M5* MY TRUE FORM!/%%"
    self.con = 35s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0014D8:
    if !(== self.con 35s) goto 0x001508
0x0014EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00150C
0x001508:
    push 0s
0x00150C:
    if !pop goto 0x001578
0x001510:
    pushenv (int32 self.mc) 0x00152C
0x001520:
    self.image_index = 1s
0x00152C:
    popenv 0x001520
0x001530:
    pushenv (int32 self.mc) 0x001554
0x001540:
    self.vspeed = -0.5d
0x001554:
    popenv 0x001540
0x001558:
    self.con = 36s
    stog.alarm[4s] = 10s
0x001578:
    if !(== self.con 37s) goto 0x0015EC
0x00158C:
    pushenv (int32 self.mc) 0x0015A8
0x00159C:
    self.image_index = 0s
0x0015A8:
    popenv 0x00159C
0x0015AC:
    pushenv (int32 self.mc) 0x0015C8
0x0015BC:
    self.vspeed = 0s
0x0015C8:
    popenv 0x0015BC
0x0015CC:
    self.con = 38s
    stog.alarm[4s] = 30s
0x0015EC:
    if !(== self.con 39s) goto 0x001660
0x001600:
    stog.msg[0s] = "\\M0* FINE THEN!/"
    stog.msg[1s] = "\\M5* RRRRREADY^1?&* IIIIIIIT'S SHOWTIME!!!/%%"
    self.con = 40s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x001660:
    if !(== self.con 40s) goto 0x001690
0x001674:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001694
0x001690:
    push 0s
0x001694:
    if !pop goto 0x0017A8
0x001698:
    call (caster_free[]:int32 (var -3s))
    self.shkwv = (caster_load[]:int32 (var "music/f_destroyed2.ogg"))
    self.pt = 0s
    self.vl = 0.5d
    call (caster_loop[]:int32 self.pt self.vl self.shkwv)
    self.con = 49s
    stog.alarm[4s] = 110s
    self.brt = (scr_marker[]:int32 (var 999s) (var -10s) (var -10s))
    push 800s
    stog.image_xscale* = (int32 self.brt)
    push 800s
    stog.image_yscale* = (int32 self.brt)
    push 0s
    stog.image_alpha* = (int32 self.brt)
    self.br = 0s
0x0017A8:
    if !(== self.con 49s) goto 0x0018AC
0x0017BC:
    self.br = (+ self.br 0.02d)
    push self.br
    stog.image_alpha* = (int32 self.brt)
    self.pt = (+ self.pt 0.02d)
    self.vl = (+ self.vl 0.01d)
    self.vol = self.vl
    if !(> self.vl 1s) goto 0x001874
0x00185C:
    self.vol = (- 2s self.vl)
0x001874:
    call (caster_set_pitch[]:int32 self.pt self.shkwv)
    call (caster_set_volume[]:int32 self.vol self.shkwv)
0x0018AC:
    if !(== self.con 50s) goto 0x0018DC
0x0018C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0018E0
0x0018DC:
    push 0s
0x0018E0:
    if !pop goto 0x001988
0x0018E4:
    pushenv (int32 self.brt) 0x001900
0x0018F4:
    call (instance_destroy[]:int32 )
0x001900:
    popenv 0x0018F4
0x001904:
    call (caster_free[]:int32 self.shkwv)
    global.mercy = 1s
    global.battlegroup = 94s
    stog.flag[15s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 51s
    stog.alarm[4s] = 33s
0x001988:
    if !(== self.con 52s) goto 0x001A88
0x00199C:
    pushenv (int32 self.mett) 0x0019B8
0x0019AC:
    self.visible = 0s
0x0019B8:
    popenv 0x0019AC
0x0019BC:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    [obj_mainchara].visible = 1s
    pushenv (int32 self.sixty) 0x001A04
0x0019F8:
    call (instance_destroy[]:int32 )
0x001A04:
    popenv 0x0019F8
0x001A08:
    pushenv (int32 self.mc) 0x001A24
0x001A18:
    call (instance_destroy[]:int32 )
0x001A24:
    popenv 0x001A18
0x001A28:
    pushenv 1363s 0x001A3C
0x001A30:
    call (instance_destroy[]:int32 )
0x001A3C:
    popenv 0x001A30
0x001A40:
    global.interact = 0s
    self.con = 43s
    global.plot = 199s
    call (caster_free[]:int32 (var -3s))
    call (instance_destroy[]:int32 )
    exit
0x001A88:
    if !(bool (instance_exists[]:int32 self.sixty)) goto 0x001B94
0x001AA0:
    if !(== self.sixtyon 1s) goto 0x001B04
0x001AB4:
    if !(< (int32 self.sixty):image_alpha 1s) goto 0x001B04
0x001AD4:
    stog.image_alpha* = (+ (int32 self.sixty):image_alpha 0.05d)
0x001B04:
    push (int32 self.sixty)
    if !(== self.sixtyflash 1s) goto 0x001B94
0x001B18:
    self.s_siner = (+ self.s_siner 1s)
    push (merge_color[]:int32 (abs[]:int32 (/ (sin[]:int32 (/ self.s_siner (double 6s))) (double 2s))) (var 8421504) (var 16777215))
    stog.image_blend* = (int32 self.sixty)
0x001B94:
    exit
