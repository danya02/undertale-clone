0x000000:
    if !(== self.con 1s) goto 0x000104
0x000014:
    [obj_mainchara].x = (- 1570.x 3s)
    global.interact = 1s
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.fade)
    global.currentsong = (caster_load[]:int32 (var "music/undynescary.ogg"))
    self.song2 = (caster_load[]:int32 (var "music/undynetheme.ogg"))
    [obj_mainchara].cutscene = 1s
    self.con = 1.5d
    stog.alarm[4s] = 10s
    push -1s
    self.originy = 0s:view_yview
0x000104:
    if !(== self.con 2.5d) goto 0x000270
0x000120:
    push -1s
    if !(> 0s:view_yview 80s) goto 0x000164
0x00013C:
    push -1s
    stog.view_yview[(- 0s:view_yview 2s)] = 0s
    goto 0x000270
0x000164:
    push -5s
    if !(!= 67s:flag 1s) goto 0x0001E4
0x000180:
    push 2s
    stog.hspeed* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    self.con = 2.6d
    stog.alarm[4s] = 50s
    goto 0x000270
0x0001E4:
    self.con = 90s
    call (caster_loop[]:int32 (var 1s) (var 0s) global.currentsong)
    self.t = (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.t)
    stog.alarm[4s] = 240s
0x000270:
    if !(== self.con 3.6d) goto 0x0002F4
0x00028C:
    push 0s
    stog.hspeed* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.con = 3s
    stog.alarm[4s] = 40s
0x0002F4:
    if !(== self.con 4s) goto 0x000628
0x000308:
    global.msc = 0s
    call (caster_loop[]:int32 (var 1s) (var 0s) global.currentsong)
    self.t = (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.t)
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "\\TP %"
    stog.msg[1s] = "\\M5H..^1. HI^1, UNDYNE!&I'M HERE WITH MY&DAILY REPORT.../"
    stog.msg[2s] = "UHHH... REGARDING THAT&HUMAN I CALLED YOU&ABOUT EARLIER.../"
    stog.msg[3s] = "\\M0I THINK^1, UH...&HOW DO I.../"
    stog.msg[3s] = "\\M1.\\M6.. HUH^1?&DID I FIGHT THEM?/"
    stog.msg[4s] = "\\M4Y-YES^1!&OF COURSE I DID!/"
    stog.msg[5s] = "\\M4I FOUGHT THEM&VALIANTLY!/"
    stog.msg[6s] = "\\M5...WHAT^1?&\\M1DID I CAPTURE THEM...?/"
    stog.msg[7s] = "\\M0W-W-WELL.../"
    stog.msg[8s] = "\\M1NO./"
    stog.msg[9s] = "\\M1I TRIED VERY HARD^1,&UNDYNE^1, BUT IN THE&END.../"
    stog.msg[10s] = "\\M0I FAILED./"
    stog.msg[11s] = "\\M6... W-WHAT?/"
    stog.msg[12s] = "\\M1YOU'RE GOING TO TAKE&THE HUMAN'S SOUL&YOURSELF.../"
    stog.msg[13s] = "\\M5BUT UNDYNE^1, YOU DON'T&H-HAVE TO DESTROY&THEM^1! \\M0YOU SEE.../"
    stog.msg[14s] = "\\M1YOU SEE.../%%"
    stog.msg[15s] = "\\M6..^1.&.../"
    stog.msg[16s] = "... I UNDERSTAND./"
    stog.msg[17s] = "I'LL HELP YOU IN&ANY WAY I CAN./"
    stog.msg[18s] = "\\TS %"
    stog.msg[19s] = "* Click.../%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    [OBJ_WRITER].y = (+ 782.y 155s)
    self.con = 80s
    self.minicon = 0s
    self.papx = (int32 self.papyrus):x
0x000628:
    if !(== self.con 80s) goto 0x000658
0x00063C:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x00065C
0x000658:
    push 0s
0x00065C:
    if !pop goto 0x000774
0x000660:
    if !(== self.minicon 0s) goto 0x000774
0x000674:
    if (== 782.stringno 13s) goto 0x00069C
0x000688:
    push (== 782.stringno 14s)
    goto 0x0006A0
0x00069C:
    push 1s
0x0006A0:
    if !pop goto 0x000774
0x0006A4:
    if !(== (int32 self.papyrus):sprite_index 1329s) goto 0x0006F0
0x0006C4:
    push (< (int32 self.papyrus):x (+ self.papx 60s))
    goto 0x0006F4
0x0006F0:
    push 0s
0x0006F4:
    if !pop goto 0x000744
0x0006F8:
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    stog.x* = (+ (int32 self.papyrus):x 1s)
    goto 0x000774
0x000744:
    push (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
0x000774:
    if !(== self.con 80s) goto 0x0007A4
0x000788:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007A8
0x0007A4:
    push 0s
0x0007A8:
    if !pop goto 0x00082C
0x0007AC:
    push 1463s
    stog.sprite_index* = (int32 self.undyne)
    push -0.5d
    stog.hspeed* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    self.con = 80.5d
    stog.alarm[4s] = 40s
0x00082C:
    if !(== self.con 81.5d) goto 0x0008B0
0x000848:
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push 0s
    stog.hspeed* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.con = 81s
    stog.alarm[4s] = 90s
0x0008B0:
    if !(== self.con 82s) goto 0x0008E0
0x0008C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0008E4
0x0008E0:
    push 0s
0x0008E4:
    if !pop goto 0x000994
0x0008E8:
    stog.msg[0s] = "\\M0.../"
    stog.msg[1s] = "\\M1... I UNDERSTAND./"
    stog.msg[2s] = "I'LL HELP YOU IN&ANY WAY I CAN./%%"
    self.g = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.g)
    [OBJ_WRITER].y = (+ 782.y 155s)
    self.con = 5s
0x000994:
    if !(== self.con 5s) goto 0x0009C4
0x0009A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009C8
0x0009C4:
    push 0s
0x0009C8:
    if !pop goto 0x000A84
0x0009CC:
    stog.flag[20s] = 3s
    push -3s
    stog.hspeed* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    self.con = 5.1d
    self.gg = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.gg)
    global.currentsong = self.song2
0x000A84:
    if !(== self.con 5.1d) goto 0x000AFC
0x000AA0:
    push -1s
    if !(< 0s:view_yview self.originy) goto 0x000AE8
0x000AC0:
    push -1s
    stog.view_yview[(+ 0s:view_yview 2s)] = 0s
    goto 0x000AFC
0x000AE8:
    self.con = 5.2d
0x000AFC:
    if !(== self.con 5.2d) goto 0x000B48
0x000B18:
    [obj_mainchara].cutscene = 0s
    global.interact = 0s
    self.con = 6s
    self.helltrigger = 0s
0x000B48:
    if !(== self.con 6s) goto 0x000B70
0x000B5C:
    push (> self.helltrigger 5s)
    goto 0x000B74
0x000B70:
    push 0s
0x000B74:
    if !pop goto 0x000BA0
0x000B78:
    stog.alarm[4s] = 4s
    self.con = 6.1d
0x000BA0:
    if !(== self.con 7.1d) goto 0x000C08
0x000BBC:
    [obj_mainchara].cutscene = 1s
    global.interact = 1s
    self.con = 7.2d
    [obj_mainchara].x = 1570.xprevious
    [obj_mainchara].y = 1570.yprevious
0x000C08:
    if !(== self.con 7.2d) goto 0x000C74
0x000C24:
    push -1s
    if !(> 0s:view_yview 80s) goto 0x000C68
0x000C40:
    push -1s
    stog.view_yview[(- 0s:view_yview 10s)] = 0s
    goto 0x000C74
0x000C68:
    self.con = 8s
0x000C74:
    if !(== self.con 8s) goto 0x000D2C
0x000C88:
    global.interact = 1s
    call (instance_create[]:int32 (var 1337s) (- (int32 self.undyne):y 10s) (+ (int32 self.undyne):x 10s))
    push 1436s
    stog.sprite_index* = (int32 self.undyne)
    call (snd_play[]:int32 (var 29s))
    self.con = 9s
    stog.alarm[4s] = 20s
0x000D2C:
    if !(== self.con 10s) goto 0x000D98
0x000D40:
    call (snd_stop[]:int32 (var 29s))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    self.con = 11s
    stog.alarm[4s] = 20s
0x000D98:
    if !(== self.con 12s) goto 0x000E14
0x000DAC:
    push 0.5d
    stog.vspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 30s
    self.con = 14.6d
0x000E14:
    if !(== self.con 14s) goto 0x000EBC
0x000E28:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 1439s
    stog.sprite_index* = (int32 self.undyne)
    push 1s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0.3334d
    stog.image_speed* = (int32 self.undyne)
    self.con = 14.1d
0x000EBC:
    if !(== self.con 14.1d) goto 0x000F50
0x000ED8:
    if !(>= (int32 self.undyne):image_index 9s) goto 0x000F50
0x000EF8:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 9s
    stog.image_index* = (int32 self.undyne)
    stog.alarm[4s] = 100s
    self.con = 13.2d
0x000F50:
    if !(== self.con 14.2d) goto 0x000FB8
0x000F6C:
    push 10s
    stog.image_index* = (int32 self.undyne)
    push 0.035d
    stog.image_speed* = (int32 self.undyne)
    self.con = 14.3d
0x000FB8:
    if !(== self.con 14.3d) goto 0x00104C
0x000FD4:
    if !(>= (int32 self.undyne):image_index 13s) goto 0x00104C
0x000FF4:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 13s
    stog.image_index* = (int32 self.undyne)
    stog.alarm[4s] = 30s
    self.con = 13.4d
0x00104C:
    if !(== self.con 14.4d) goto 0x0010B4
0x001068:
    push 9s
    stog.image_index* = (int32 self.undyne)
    push -0.5d
    stog.image_speed* = (int32 self.undyne)
    self.con = 14.5d
0x0010B4:
    if !(== self.con 14.5d) goto 0x00115C
0x0010D0:
    if !(<= (int32 self.undyne):image_index 1s) goto 0x00115C
0x0010F0:
    push 1436s
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 18s
0x00115C:
    if !(== self.con 15.6d) goto 0x0011D0
0x001178:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 15.1d
    stog.alarm[4s] = 50s
0x0011D0:
    if !(== self.con 16.1d) goto 0x001254
0x0011EC:
    push 0.5d
    stog.vspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 20s
    self.con = 15.2d
0x001254:
    if !(== self.con 16.2d) goto 0x0012C0
0x001270:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 13s
    stog.alarm[4s] = 60s
0x0012C0:
    if !(== self.con 18s) goto 0x001324
0x0012D4:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 60s
    self.con = 19s
0x001324:
    if !(== self.con 20s) goto 0x001390
0x001338:
    push -2s
    stog.vspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 20s
    self.con = 21s
0x001390:
    if !(== self.con 22s) goto 0x0013F4
0x0013A4:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 60s
    self.con = 23s
0x0013F4:
    if !(== self.con 24s) goto 0x0014E0
0x001408:
    self.d = (instance_create[]:int32 (var 1363s) (int32 self.undyne):y (int32 self.undyne):x)
    push 1445s
    stog.sprite_index* = (int32 self.d)
    push 1s
    stog.visible* = (int32 self.d)
    self.b = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.b)
    self.con = 25s
    call (snd_play[]:int32 (var 15s))
0x0014E0:
    if !(== self.con 25s) goto 0x001554
0x0014F4:
    if !(> (int32 self.undyne):image_alpha 0s) goto 0x001548
0x001514:
    stog.image_alpha* = (- (int32 self.undyne):image_alpha 0.02d)
    goto 0x001554
0x001548:
    push (int32 self.undyne)
    self.con = 26s
0x001554:
    if !(== self.con 26s) goto 0x0015C8
0x001568:
    if !(> (int32 self.d):image_alpha 0s) goto 0x0015BC
0x001588:
    stog.image_alpha* = (- (int32 self.d):image_alpha 0.02d)
    goto 0x0015C8
0x0015BC:
    push (int32 self.d)
    self.con = 27s
0x0015C8:
    if !(== self.con 27s) goto 0x001630
0x0015DC:
    push -1s
    if !(< 0s:view_yview self.originy) goto 0x001624
0x0015FC:
    push -1s
    stog.view_yview[(+ 0s:view_yview 2s)] = 0s
    goto 0x001630
0x001624:
    self.con = 28s
0x001630:
    if !(== self.con 28s) goto 0x0016B0
0x001644:
    [obj_mainchara].cutscene = 0s
    global.interact = 0s
    pushenv 1093s 0x001670
0x001664:
    call (instance_destroy[]:int32 )
0x001670:
    popenv 0x001664
0x001674:
    [obj_mainchara].usprite = 1044s
    [obj_mainchara].rsprite = 1045s
    [obj_mainchara].lsprite = 1046s
    [obj_mainchara].dsprite = 1043s
    self.con = 39s
0x0016B0:
    if !(== self.con 39s) goto 0x0017A4
0x0016C4:
    if (bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (var 900s) (var 80s) (var 100s) (var 60s))) goto 0x001754
0x00170C:
    push (bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (var 900s) (var 440s) (var 100s) (var 430s)))
    goto 0x001758
0x001754:
    push 1s
0x001758:
    if !pop goto 0x0017A4
0x00175C:
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/waterfall.ogg"))
    global.interact = 1s
    self.con = 40s
0x0017A4:
    if !(== self.con 40s) goto 0x001914
0x0017B8:
    if !(> 1570.y 276s) goto 0x0017F4
0x0017CC:
    push 260s
    stog.y* = (int32 self.mkid)
    self.up = 0s
    goto 0x001818
0x0017F4:
    push 286s
    stog.y* = (int32 self.mkid)
    self.up = 1s
0x001818:
    pushenv (int32 self.mkid) 0x001838
0x001828:
    self.depth = 900000
0x001838:
    popenv 0x001828
0x00183C:
    if !(< 1570.x 200s) goto 0x0018A0
0x001850:
    self.left = 1s
    push -4s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    goto 0x0018C4
0x0018A0:
    self.left = 0s
    push 4s
    stog.hspeed* = (int32 self.mkid)
0x0018C4:
    self.con = 40.5d
    stog.alarm[4s] = 28s
    if !(== self.left 1s) goto 0x001914
0x001900:
    stog.alarm[4s] = 36s
0x001914:
    if !(== self.con 41.3d) goto 0x001944
0x001930:
    self.con = 41.5d
0x001944:
    if !(== self.con 41.5d) goto 0x0019B0
0x001960:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    self.con = 42s
    push 0s
    stog.image_index* = (int32 self.mkid)
    stog.alarm[4s] = 20s
0x0019B0:
    if !(== self.con 43s) goto 0x001A4C
0x0019C4:
    self.con = 44s
    if !(== self.left 1s) goto 0x001A10
0x0019E4:
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    goto 0x001A38
0x001A10:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
0x001A38:
    stog.alarm[4s] = 20s
0x001A4C:
    if !(== self.con 45s) goto 0x001AF8
0x001A60:
    if !(== self.up 1s) goto 0x001A9C
0x001A74:
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
0x001A9C:
    if !(== self.up 0s) goto 0x001AD8
0x001AB0:
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
0x001AD8:
    self.con = 46s
    stog.alarm[4s] = 20s
0x001AF8:
    if !(== self.con 47s) goto 0x001D20
0x001B0C:
    if !(== self.left 1s) goto 0x001B4C
0x001B20:
    push (int32 self.mkid):ltsprite
    stog.sprite_index* = (int32 self.mkid)
    goto 0x001B74
0x001B4C:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
0x001B74:
    push 3s
    stog.myinteract* = (int32 self.mkid)
    global.typer = 5s
    global.msc = 0s
    global.facechoice = 0s
    push -5s
    if !(!= 67s:flag 1s) goto 0x001C60
0x001BCC:
    stog.msg[0s] = "* Yo..^1. did you see the&  way she was staring at&  you...?/"
    stog.msg[1s] = "* That.../"
    stog.msg[2s] = "* ... was AWESOME!/"
    stog.msg[3s] = "* I'm SOOOO jealous!/"
    stog.msg[4s] = "* What'd you do to get her&  attention...^1?&* Ha ha./"
    stog.msg[5s] = "* C'mon^1!&* Let's go watch her beat&  up some bad guys!/%%"
    goto 0x001CF0
0x001C60:
    stog.msg[0s] = "* Yo..^1. did you see the&  way she was staring at&  you...?/"
    stog.msg[1s] = "* That.../"
    stog.msg[2s] = "* ... was AWESOME!/"
    stog.msg[3s] = "* I'm SOOOO jealous!/"
    stog.msg[4s] = "* She was just standing there&  waiting FOREVER^1, and&  then you just...!!!/"
    stog.msg[5s] = "* C'mon^1!&* Let's go watch her beat&  up some bad guys!/%%"
0x001CF0:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 48s
0x001D20:
    if !(== self.con 48s) goto 0x001D50
0x001D34:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001D54
0x001D50:
    push 0s
0x001D54:
    if !pop goto 0x001E24
0x001D58:
    push 6s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.myinteract* = (int32 self.mkid)
    push 0.3d
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 48.1d
    if !(== self.left 1s) goto 0x001E10
0x001DF8:
    stog.alarm[4s] = 6s
    goto 0x001E24
0x001E10:
    stog.alarm[4s] = 16s
0x001E24:
    if !(== self.con 49.1d) goto 0x001ED4
0x001E40:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 1s
    stog.fun* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    push 0.334d
    stog.image_speed* = (int32 self.mkid)
    push 1389s
    stog.sprite_index* = (int32 self.mkid)
    self.con = 49.2d
0x001ED4:
    if !(== self.con 49.2d) goto 0x001FA0
0x001EF0:
    if !(>= (int32 self.mkid):image_index 19s) goto 0x001FA0
0x001F10:
    push 0s
    stog.image_index* = (int32 self.mkid)
    stog.x* = (+ (int32 self.mkid):x 13s)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 49.3d
    stog.alarm[4s] = 15s
0x001FA0:
    push (int32 self.mkid)
    if !(== self.con 50.3d) goto 0x001FF4
0x001FBC:
    push 4s
    stog.hspeed* = (int32 self.mkid)
    stog.alarm[4s] = 30s
    self.con = 49s
0x001FF4:
    if !(== self.con 50s) goto 0x0020C0
0x002008:
    global.interact = 0s
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x002070
0x002054:
    push -5s
    push (== 27s:flag 0s)
    goto 0x002074
0x002070:
    push 0s
0x002074:
    if !pop goto 0x00209C
0x002078:
    call (caster_set_pitch[]:int32 (var 0.15d) global.currentsong)
0x00209C:
    self.con = 51s
    global.plot = 106s
    call (instance_destroy[]:int32 )
0x0020C0:
    if !(== self.con 90s) goto 0x0020D4
0x0020D4:
    if !(== self.con 91s) goto 0x002154
0x0020E8:
    self.gg = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.gg)
    global.currentsong = self.song2
    self.con = 5.1d
0x002154:
    exit
