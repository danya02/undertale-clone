0x000000:
    if !(== self.cn -1s) goto 0x000084
0x000014:
    global.typer = 1s
    global.msc = 0s
    stog.msg[0s] = "        DATING^1  STAR^5T^2.^2.^2.^3?%%"
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    self.cn = 0s
0x000084:
    if !(== self.cn 0s) goto 0x0000B4
0x000098:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x000180
0x0000BC:
    pushenv 782s 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    popenv 0x0000C4
0x0000D4:
    self.al = 176s
    self.xx = 176.x
    self.yy = 176.y
    global.faceemotion = 0s
    global.facechoice = 0s
    global.msc = 0s
    global.typer = 74s
    stog.msg[0s] = "Uhhh^1, sorry^2!&I'm still getting&dressed!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 250s))
    self.cn = 2s
0x000180:
    if !(== self.cn 2s) goto 0x0001B0
0x000194:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x0001D8
0x0001B8:
    self.cn = 3s
    stog.alarm[4s] = 60s
0x0001D8:
    if !(== self.cn 4s) goto 0x000240
0x0001EC:
    stog.x* = (- (int32 self.al):x 8s)
    if !(< (int32 self.al):x 350s) goto 0x000240
0x000234:
    push (int32 self.al)
    self.cn = 5s
0x000240:
    if !(== self.cn 5s) goto 0x000344
0x000254:
    self.xx = 176.x
    self.yy = 176.y
    global.faceemotion = 5s
    stog.flag[20s] = 3s
    global.msc = 0s
    global.typer = 74s
    stog.msg[0s] = "H-how do I look?/"
    stog.msg[1s] = "My friend helped me&pick out this&dress./"
    stog.msg[2s] = "\\E1S\\M0he's got a great&sense of.../"
    stog.msg[3s] = "\\E0Um^1, anyway^1!&Let's do this thing!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 6s
0x000344:
    if !(== self.cn 6s) goto 0x000374
0x000358:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000378
0x000374:
    push 0s
0x000378:
    if !pop goto 0x000430
0x00037C:
    self.cn = 6.1d
    stog.alarm[4s] = 55s
    global.currentsong = (caster_play[]:int32 (var 1s) (var 1s) self.datemusic)
    global.typer = 1s
    global.msc = 0s
    stog.msg[0s] = "        DATING^3  START^3.%%"
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000430:
    if !(== self.cn 7.1d) goto 0x000520
0x00044C:
    self.mfo = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    pushenv 782s 0x000488
0x00047C:
    call (instance_destroy[]:int32 )
0x000488:
    popenv 0x00047C
0x00048C:
    global.typer = 74s
    global.faceemotion = 9s
    stog.flag[20s] = 4s
    stog.msg[0s] = "H-h-hey^1, w-w-wait!/"
    stog.msg[1s] = "Actually^1, we still&can't start the&date yet!!!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 8s
0x000520:
    if !(== self.cn 8s) goto 0x000550
0x000534:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000554
0x000550:
    push 0s
0x000554:
    if !pop goto 0x0005C8
0x000558:
    global.typer = 1s
    global.msc = 0s
    stog.msg[0s] = "        DATING..^1.  STOP^4?%%"
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    self.cn = 9s
0x0005C8:
    if !(== self.cn 9s) goto 0x0005F8
0x0005DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005FC
0x0005F8:
    push 0s
0x0005FC:
    if !pop goto 0x000844
0x000600:
    pushenv (int32 self.mfo) 0x00061C
0x000610:
    call (instance_destroy[]:int32 )
0x00061C:
    popenv 0x000610
0x000620:
    global.typer = 74s
    global.currentsong = (caster_loop[]:int32 (var 1s) (var 1s) self.lab)
    global.faceemotion = 9s
    stog.flag[20s] = 0s
    stog.msg[0s] = "Umm^1, I've gotta give&you items to raise&your affection&statistic^1, first!/"
    stog.msg[1s] = "That'll increase the&chance of a successful&outcome to the&date!/"
    stog.msg[2s] = "\\E6Right...?/"
    stog.msg[3s] = "\\E0Anyway^1, d-don't worry^1!&I'm prepared!/"
    stog.msg[4s] = "\\E5I-I've been&stockpiling gifts&in anticipation&for a date like this!/"
    stog.msg[5s] = "\\E7F\\M6-first^1, I've got.../"
    stog.msg[6s] = "\\E5Some metal armor&polish!/"
    stog.msg[7s] = "\\E3.../"
    stog.msg[8s] = "\\E6Um^1, maybe you can't&use that./"
    stog.msg[9s] = "\\E5But!!!/"
    stog.msg[10s] = "I also brought some&waterproof cream for&your scales!/"
    stog.msg[11s] = "\\E3Your^1, uh..^1.&Scales.../"
    stog.msg[12s] = "\\E6Uh^1, well^1, how about.../"
    stog.msg[13s] = "This magical spear&repair kit^1, that I.../"
    stog.msg[14s] = "\\E7Um.../"
    stog.msg[15s] = "\\E5Hey^1, let's forget&about the items!/"
    stog.msg[16s] = "\\E0L\\M0et's just start&the date!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 10s
0x000844:
    if !(== self.cn 10s) goto 0x000B3C
0x000858:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000A84
0x000870:
    if !(== 782.stringno 6s) goto 0x0008C8
0x000884:
    stog.flag[20s] = 5s
    push 1s
    stog.item* = (int32 self.al)
    push 0s
    stog.aa* = (int32 self.al)
0x0008C8:
    if !(== 782.stringno 8s) goto 0x000920
0x0008DC:
    stog.flag[20s] = 6s
    push 0s
    stog.item* = (int32 self.al)
    push 0s
    stog.aa* = (int32 self.al)
0x000920:
    if !(== 782.stringno 10s) goto 0x000978
0x000934:
    stog.flag[20s] = 5s
    push 1s
    stog.item* = (int32 self.al)
    push 1s
    stog.aa* = (int32 self.al)
0x000978:
    if !(== 782.stringno 12s) goto 0x0009D0
0x00098C:
    stog.flag[20s] = 6s
    push 0s
    stog.item* = (int32 self.al)
    push 1s
    stog.aa* = (int32 self.al)
0x0009D0:
    if !(== 782.stringno 13s) goto 0x000A28
0x0009E4:
    stog.flag[20s] = 5s
    push 1s
    stog.item* = (int32 self.al)
    push 2s
    stog.aa* = (int32 self.al)
0x000A28:
    if !(== 782.stringno 15s) goto 0x000A80
0x000A3C:
    stog.flag[20s] = 6s
    push 0s
    stog.item* = (int32 self.al)
    push 2s
    stog.aa* = (int32 self.al)
0x000A80:
    goto 0x000B3C
0x000A84:
    self.cn = 11s
    self.mfo = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.mfo)
    global.typer = 1s
    global.msc = 0s
    stog.msg[0s] = "        DATING!^1!  START!^3!%%"
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000B3C:
    if !(== self.cn 11s) goto 0x000B6C
0x000B50:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B70
0x000B6C:
    push 0s
0x000B70:
    if !pop goto 0x000BF0
0x000B74:
    global.typer = 74s
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    stog.msg[0s] = "Yeah!!^1!&Let's^1, uh^1, date!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 12s
0x000BF0:
    if !(== self.cn 12s) goto 0x000C20
0x000C04:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C24
0x000C20:
    push 0s
0x000C24:
    if !pop goto 0x000C48
0x000C28:
    self.cn = 13s
    stog.alarm[4s] = 90s
0x000C48:
    if !(== self.cn 14s) goto 0x000C88
0x000C5C:
    global.faceemotion = 1s
    self.cn = 15s
    stog.alarm[4s] = 60s
0x000C88:
    if !(== self.cn 16s) goto 0x000CC8
0x000C9C:
    global.faceemotion = 2s
    self.cn = 17s
    stog.alarm[4s] = 60s
0x000CC8:
    if !(== self.cn 18s) goto 0x000D08
0x000CDC:
    global.faceemotion = 3s
    self.cn = 19s
    stog.alarm[4s] = 60s
0x000D08:
    if !(== self.cn 20s) goto 0x000D38
0x000D1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D3C
0x000D38:
    push 0s
0x000D3C:
    if !pop goto 0x000DF4
0x000D40:
    pushenv (int32 self.mfo) 0x000D5C
0x000D50:
    call (instance_destroy[]:int32 )
0x000D5C:
    popenv 0x000D50
0x000D60:
    global.typer = 74s
    global.faceemotion = 3s
    stog.flag[20s] = 0s
    stog.msg[0s] = "... uh.../"
    stog.msg[1s] = "\\E4Do you..^3. like..^3.&Anime...^2?/*"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 21s
0x000DF4:
    if !(== self.cn 21s) goto 0x000E24
0x000E08:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000E28
0x000E24:
    push 0s
0x000E28:
    if !pop goto 0x000EFC
0x000E2C:
    if !(== 782.stringno 1s) goto 0x000E54
0x000E40:
    push (!= 782.halt 0s)
    goto 0x000E58
0x000E54:
    push 0s
0x000E58:
    if !pop goto 0x000EFC
0x000E5C:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Yes             No       &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x000EEC
0x000EE0:
    self.halt = 0s
0x000EEC:
    popenv 0x000EE0
0x000EF0:
    self.cn = 22s
0x000EFC:
    if !(== self.cn 22s) goto 0x000F24
0x000F10:
    push (== self.choicer 2s)
    goto 0x000F28
0x000F24:
    push 0s
0x000F28:
    if !pop goto 0x000F88
0x000F2C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000F5C
0x000F44:
    pushenv 782s 0x000F58
0x000F4C:
    call (instance_destroy[]:int32 )
0x000F58:
    popenv 0x000F4C
0x000F5C:
    self.cn = 23s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x000F88:
    if !(== self.cn 24s) goto 0x001040
0x000F9C:
    global.typer = 74s
    if !(== self.choice 0s) goto 0x000FE4
0x000FBC:
    global.faceemotion = 6s
    stog.msg[0s] = "H-hey^1!&Me too!!/%%"
    goto 0x001008
0x000FE4:
    global.faceemotion = 6s
    stog.msg[0s] = "Oh./%%"
0x001008:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 25s
0x001040:
    if !(== self.cn 25s) goto 0x001070
0x001054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001074
0x001070:
    push 0s
0x001074:
    if !pop goto 0x0010A4
0x001078:
    global.faceemotion = 3s
    stog.alarm[4s] = 100s
    self.cn = 26s
0x0010A4:
    if !(== self.cn 27s) goto 0x001194
0x0010B8:
    global.typer = 74s
    global.faceemotion = 6s
    stog.flag[20s] = 0s
    stog.msg[0s] = "Hey^1!&Let's!^1!&Go somewhere!!!/"
    stog.msg[1s] = "\\E7But where's a good&place to go on&a date...?/"
    stog.msg[2s] = "\\E2.../"
    stog.msg[3s] = "\\E0I've got it!!!/"
    stog.msg[4s] = "\\E5Let's go to the&garbage dump!!!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 28s
0x001194:
    if !(== self.cn 28s) goto 0x0011C4
0x0011A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0011C8
0x0011C4:
    push 0s
0x0011C8:
    if !pop goto 0x001220
0x0011CC:
    push -8s
    stog.hspeed* = (int32 self.al)
    call (snd_play[]:int32 (var 50s))
    self.cn = 28.1d
    stog.alarm[4s] = 20s
0x001220:
    if !(== self.cn 29.1d) goto 0x001268
0x00123C:
    self.fadeouter = 1s
    self.cn = 29s
    stog.alarm[4s] = 30s
0x001268:
    if !(== self.cn 30s) goto 0x001408
0x00127C:
    call (instance_create[]:int32 (var 174s) (var 0s) (var 0s))
    self.watersfx = (caster_load[]:int32 (var "music/ambientwater.ogg"))
    global.currentsong = (caster_loop[]:int32 (var 0.9d) (var 0s) self.watersfx)
    self.mfi = (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    self.fadeouter = 2s
    pushenv 176s 0x001334
0x001328:
    call (instance_destroy[]:int32 )
0x001334:
    popenv 0x001328
0x001338:
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    self.al = (instance_create[]:int32 (var 176s) (var 180s) (+ self.room_width 160s))
    self.trashcan = (instance_create[]:int32 (var 175s) (- (+ (int32 self.al):y (* (int32 self.al):sprite_height 2s)) 20s) (var 500s))
    push -8s
    stog.hspeed* = (int32 self.al)
    self.cn = 31s
0x001408:
    if !(== self.cn 31s) goto 0x001498
0x00141C:
    if !(< (int32 self.al):x 350s) goto 0x001498
0x00143C:
    push 0s
    stog.hspeed* = (int32 self.al)
    push 350s
    stog.x* = (int32 self.al)
    self.cn = 32s
    if !(== self.skip 1s) goto 0x001498
0x00148C:
    self.cn = 110s
0x001498:
    if !(== self.cn 32s) goto 0x0015CC
0x0014AC:
    self.xx = (int32 self.al):x
    self.yy = (int32 self.al):y
    global.msc = 0s
    global.typer = 74s
    global.faceemotion = 0s
    stog.flag[20s] = 0s
    stog.msg[0s] = "Here we are!/"
    stog.msg[1s] = "This is where Undyne&and I come all&the time.../"
    stog.msg[2s] = "\\E1We find all sorts&of great stuff&here./"
    stog.msg[3s] = "\\E5Heh^1, she's&really.../"
    stog.msg[4s] = "\\E6Uh.../%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 33s
0x0015CC:
    if !(== self.cn 33s) goto 0x0015FC
0x0015E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001600
0x0015FC:
    push 0s
0x001600:
    if !pop goto 0x001678
0x001604:
    self.mfo = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.04d
    stog.fadespeed* = (int32 self.mfo)
    global.faceemotion = 3s
    self.cn = 34s
    stog.alarm[4s] = 50s
0x001678:
    if !(== self.cn 35s) goto 0x001800
0x00168C:
    pushenv (int32 self.mfo) 0x0016A8
0x00169C:
    call (instance_destroy[]:int32 )
0x0016A8:
    popenv 0x00169C
0x0016AC:
    self.datetense = (caster_load[]:int32 (var "music/date_tense.ogg"))
    global.currentsong = (caster_loop[]:int32 (var 1s) (var 1s) self.datetense)
    global.typer = 74s
    global.faceemotion = 3s
    stog.flag[20s] = 2s
    stog.msg[0s] = "Oh no./"
    stog.msg[1s] = "\\E9That's her over&there./"
    stog.msg[2s] = "\\M4I c-can't let her&see me on a date&with you!/"
    stog.msg[3s] = "\\E6Why...?/"
    stog.msg[4s] = "\\M0Because^1, uh..^1.&Well.../"
    stog.msg[5s] = "\\E9Oh no^1, here she&comes!!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 36s
    self.nowy = (int32 self.al):y
0x001800:
    if !(== self.cn 36s) goto 0x001830
0x001814:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001834
0x001830:
    push 0s
0x001834:
    if !pop goto 0x0018F8
0x001838:
    stog.x* = (- (int32 self.al):x 10s)
    if !(> (int32 self.al):y (- self.nowy 22s)) goto 0x0018B4
0x00188C:
    push (int32 self.al)
    stog.y* = (- (int32 self.al):y 1s)
0x0018B4:
    push (int32 self.al)
    if !(< (int32 self.al):x (- (int32 self.trashcan):x 240s)) goto 0x0018F8
0x0018EC:
    self.cn = 37s
0x0018F8:
    if !(== self.cn 37s) goto 0x0019E4
0x00190C:
    if !(> (int32 self.al):y (- self.nowy 22s)) goto 0x001960
0x001938:
    stog.y* = (- (int32 self.al):y 1s)
0x001960:
    push (int32 self.al)
    push 2s
    stog.depth* = (int32 self.al)
    stog.x* = (+ (int32 self.al):x 10s)
    if !(> (int32 self.al):x (- (int32 self.trashcan):x 70s)) goto 0x0019E4
0x0019D8:
    push (int32 self.al)
    self.cn = 38s
0x0019E4:
    if !(== self.cn 38s) goto 0x001AAC
0x0019F8:
    global.facechoice = 1s
    self.und = (instance_create[]:int32 (var 177s) (+ (int32 self.trashcan):y 10s) (var -100s))
    stog.y* = (- (int32 self.und):y (+ (* (int32 self.und):sprite_height 2s) 66s))
    push 16s
    stog.hspeed* = (int32 self.und)
    self.cn = 39s
0x001AAC:
    push (int32 self.und)
    if !(== self.cn 39s) goto 0x001B30
0x001AC0:
    if !(> (int32 self.und):x 80s) goto 0x001B30
0x001AE0:
    push 80s
    stog.x* = (int32 self.und)
    push 0s
    stog.hspeed* = (int32 self.und)
    self.cn = 40s
    stog.alarm[4s] = 15s
0x001B30:
    if !(== self.cn 41s) goto 0x001C70
0x001B44:
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = " Hey!^1!& There you are!!/"
    stog.msg[1s] = "\\F2 I^1, uh^1, realized^1,& if you deliver that&  thing.../"
    stog.msg[2s] = "\\F3 It might be a bad& idea./"
    stog.msg[3s] = "\\F4 So I'm gonna do& it!!^1!& Give it to me!!!/"
    stog.msg[4s] = "\\F3 Huh!^1?& You don't have it!?/"
    stog.msg[5s] = "\\F4 Ngggaaahhh!!/"
    stog.msg[6s] = " Have you at least& seen her!?/*"
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 100s))
    self.cn = 42s
0x001C70:
    if !(== self.cn 42s) goto 0x001CA0
0x001C84:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x001CA4
0x001CA0:
    push 0s
0x001CA4:
    if !pop goto 0x001D90
0x001CA8:
    if !(== 782.stringno 6s) goto 0x001CD0
0x001CBC:
    push (!= 782.halt 0s)
    goto 0x001CD4
0x001CD0:
    push 0s
0x001CD4:
    if !pop goto 0x001D90
0x001CD8:
    push 2s
    stog.shake* = (int32 self.al)
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Yeah            Nope     &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x001D80
0x001D74:
    self.halt = 0s
0x001D80:
    popenv 0x001D74
0x001D84:
    self.cn = 43s
0x001D90:
    if !(== self.cn 43s) goto 0x001DB8
0x001DA4:
    push (== self.choicer 2s)
    goto 0x001DBC
0x001DB8:
    push 0s
0x001DBC:
    if !pop goto 0x001E1C
0x001DC0:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x001DF0
0x001DD8:
    pushenv 782s 0x001DEC
0x001DE0:
    call (instance_destroy[]:int32 )
0x001DEC:
    popenv 0x001DE0
0x001DF0:
    self.cn = 44s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x001E1C:
    if !(== self.cn 45s) goto 0x001F54
0x001E30:
    push 0s
    stog.shake* = (int32 self.al)
    global.typer = 39s
    if !(== self.choice 0s) goto 0x001EC0
0x001E68:
    global.facechoice = 0s
    stog.msg[0s] = " Yes?/"
    stog.msg[1s] = "\\F6 So she's somewhere& around here.../"
    stog.msg[2s] = "\\F0 Thanks^1.& I'll keep looking./%%"
    goto 0x001F14
0x001EC0:
    global.facechoice = 1s
    stog.msg[0s] = " No???/"
    stog.msg[1s] = " But she wasn't& at home.../"
    stog.msg[2s] = "\\F3 Where the heck& could she be!?/%%"
0x001F14:
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 100s))
    self.cn = 46s
0x001F54:
    if !(== self.cn 46s) goto 0x001F84
0x001F68:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001F88
0x001F84:
    push 0s
0x001F88:
    if !pop goto 0x001FEC
0x001F8C:
    self.mfo = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 20s
    stog.hspeed* = (int32 self.und)
    self.cn = 47s
    stog.alarm[4s] = 40s
0x001FEC:
    if !(== self.cn 48s) goto 0x002044
0x002000:
    pushenv 92s 0x002014
0x002008:
    call (instance_destroy[]:int32 )
0x002014:
    popenv 0x002008
0x002018:
    self.cn = 49s
    stog.flag[20s] = 0s
    global.faceemotion = 3s
0x002044:
    if !(== self.cn 49s) goto 0x0020DC
0x002058:
    push 2s
    stog.depth* = (int32 self.al)
    stog.x* = (- (int32 self.al):x 10s)
    if !(< (int32 self.al):x (- (int32 self.trashcan):x 240s)) goto 0x0020DC
0x0020D0:
    push (int32 self.al)
    self.cn = 50s
0x0020DC:
    if !(== self.cn 50s) goto 0x00210C
0x0020F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002110
0x00210C:
    push 0s
0x002110:
    if !pop goto 0x002208
0x002114:
    push 0s
    stog.depth* = (int32 self.al)
    stog.x* = (+ (int32 self.al):x 10s)
    if !(< (int32 self.al):y self.nowy) goto 0x0021A0
0x002178:
    push (int32 self.al)
    stog.y* = (+ (int32 self.al):y 4s)
0x0021A0:
    push (int32 self.al)
    if !(> (int32 self.al):x self.xx) goto 0x002208
0x0021C4:
    push self.nowy
    stog.y* = (int32 self.al)
    self.cn = 51s
    push self.xx
    stog.x* = (int32 self.al)
0x002208:
    if !(== self.cn 51s) goto 0x002258
0x00221C:
    self.cn = 52s
    self.lab = (caster_load[]:int32 (var "music/lab.ogg"))
    stog.alarm[4s] = 20s
0x002258:
    if !(== self.cn 53s) goto 0x002570
0x00226C:
    global.currentsong = (caster_loop[]:int32 (var 0.75d) (var 1s) self.lab)
    global.typer = 74s
    global.faceemotion = 3s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E2Oh my god.../"
    stog.msg[1s] = "\\E6W... well^1, I guess&it's obvious^1, huh?/"
    stog.msg[2s] = "\\E7I...^1 uh..^1.&I really like her./"
    stog.msg[3s] = "\\E9I mean^1, more than&I like other people!/"
    stog.msg[4s] = "\\E7I'm sorry./"
    stog.msg[5s] = "\\E6I j-just figured^1,&y-you know.../"
    stog.msg[6s] = "\\E7It'd be f-fun to&go on like^1, a cute^1,&kind of.../"
    stog.msg[7s] = "\\E6P\\M3retend date with you^1?&T-to make you feel&better?/"
    stog.msg[8s] = "\\E7.../"
    stog.msg[9s] = "\\E6Well^1, it sounds even&worse when I put it&like that./"
    stog.msg[10s] = "\\E8I\\M0'm sorry^1.&I messed up again./"
    stog.msg[11s] = "\\E7Undyne's the person I..^1.&Um..^1. really want to&go on a date with./"
    stog.msg[12s] = "But, I mean..^1.&She's way out of&my league./"
    stog.msg[13s] = "\\E9N-not that you&aren't^1, um^1, cool!/"
    stog.msg[14s] = "\\E7B-but..^1. Undyne.../"
    stog.msg[15s] = "She's so confident..^1.&And strong..^1.&And funny.../"
    stog.msg[16s] = "\\E8And I'm just a&nobody./"
    stog.msg[17s] = "\\M3A fraud./"
    stog.msg[18s] = "I'm the royal&scientist^1, but.../"
    stog.msg[19s] = "\\M0All I've ever done&is hurt people./"
    stog.msg[20s] = "\\E7I've told her so&many lies^1, she thinks&I'm.../"
    stog.msg[21s] = "\\E6She thinks I'm a&lot cooler than I&actually am./"
    stog.msg[22s] = "\\E7If she gets close&to me^1, she'll.../"
    stog.msg[23s] = "\\E8She'll find out the&truth about me./"
    stog.msg[24s] = "\\E7.../"
    stog.msg[25s] = "\\E7What should I do?/*"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 54s
0x002570:
    if !(== self.cn 54s) goto 0x0025A0
0x002584:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x0025A4
0x0025A0:
    push 0s
0x0025A4:
    if !pop goto 0x002678
0x0025A8:
    if !(== 782.stringno 25s) goto 0x0025D0
0x0025BC:
    push (!= 782.halt 0s)
    goto 0x0025D4
0x0025D0:
    push 0s
0x0025D4:
    if !pop goto 0x002678
0x0025D8:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Tell her        Keep     &   the truth       lying    "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x002668
0x00265C:
    self.halt = 0s
0x002668:
    popenv 0x00265C
0x00266C:
    self.cn = 55s
0x002678:
    if !(== self.cn 55s) goto 0x0026A0
0x00268C:
    push (== self.choicer 2s)
    goto 0x0026A4
0x0026A0:
    push 0s
0x0026A4:
    if !pop goto 0x002704
0x0026A8:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0026D8
0x0026C0:
    pushenv 782s 0x0026D4
0x0026C8:
    call (instance_destroy[]:int32 )
0x0026D4:
    popenv 0x0026C8
0x0026D8:
    self.cn = 56s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x002704:
    if !(== self.cn 57s) goto 0x002B18
0x002718:
    global.typer = 74s
    if !(== self.choice 0s) goto 0x0028F8
0x002738:
    global.faceemotion = 9s
    stog.msg[0s] = "\\E9The truth...?/"
    stog.msg[1s] = "\\M4But if I tell her&that^1, she'll hate&me./"
    stog.msg[2s] = "\\E6I\\M0sn't it better&this way?/"
    stog.msg[3s] = "To live a lie where&both people are&happy.../"
    stog.msg[4s] = "\\E7Or a truth where&neither of us&are?/"
    stog.msg[5s] = "They say \"be&yourself.\"/"
    stog.msg[6s] = "\\E8But I don't&really like who&\"myself\" is./"
    stog.msg[7s] = "\\E7I'd rather just&be whatever makes&people like me./"
    stog.msg[8s] = "\\E6Eheheh.../"
    stog.msg[9s] = "\\E7.../"
    stog.msg[10s] = "\\E8.../"
    stog.msg[11s] = "No, you're right./"
    stog.msg[12s] = "Every day I'm&scared.../"
    stog.msg[13s] = "\\E7Scared what will&happen if people&learn the truth&on their own./"
    stog.msg[14s] = "\\M3They'll all get&hurt because of&me.../"
    stog.msg[15s] = "\\E9B\\M4ut how can I&tell UNDYNE the&tr..^1. truth?/"
    stog.msg[16s] = "\\E8I d-don't have the&confidence.../"
    stog.msg[17s] = "\\E9I'm going to mess&it up^1!&How can I&practice!?/%%"
    goto 0x002AE0
0x0028F8:
    global.faceemotion = 7s
    stog.flag[20s] = 4s
    stog.msg[0s] = "Yeah..^1. yeah^1, you're&right!/"
    stog.msg[1s] = "\\E6I\\M0've come this far^1,&I c-can't tell&her now!/"
    stog.msg[2s] = "\\E7Sh-she'd be really&hurt if she found&out^1, right?/"
    stog.msg[3s] = "\\E5S-so it'll just&be^1, uh^1, a little&secret!/"
    stog.msg[4s] = "\\M1What people don't&know can't hurt&them!!/"
    stog.msg[5s] = "\\M0Th-thank God I've&got an honest&friend like you!!/"
    stog.msg[6s] = ".../"
    stog.msg[7s] = "\\E3.../"
    stog.msg[8s] = "\\M1B..^1. but what if she&finds out on her&own^1, somehow?/"
    stog.msg[9s] = "\\E7O\\M0r if I ever&m-mess up.../"
    stog.msg[10s] = "\\M4Sh-she'd find out&the truth^1, and.../"
    stog.msg[11s] = "\\E8Pr-probably be even&more hurt than if&I told her myself./"
    stog.msg[12s] = "\\E6N\\M0-not to mention^1,&l-lying so far..^1.&h..^1. has.../"
    stog.msg[13s] = "\\E8Been really&stressful^1, and scary./"
    stog.msg[14s] = "\\E3.../"
    stog.msg[15s] = "\\E4I think I'm going&to have to tell&her the truth./"
    stog.msg[16s] = "\\E9B-but how!?/"
    stog.msg[17s] = "\\E8I..^1. I don't have&the confidence.../"
    stog.msg[18s] = "\\E7How am I supposed&to practice&something like that!?/%%"
0x002AE0:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 58s
0x002B18:
    if !(== self.cn 58s) goto 0x002B48
0x002B2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002B4C
0x002B48:
    push 0s
0x002B4C:
    if !pop goto 0x002B70
0x002B50:
    self.cn = 59s
    stog.alarm[4s] = 10s
0x002B70:
    if !(== self.cn 60s) goto 0x002C24
0x002B84:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "   Let's           Obviously&   Roleplay        Let's    &   It              Roleplay"
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x002C14
0x002C08:
    self.halt = 0s
0x002C14:
    popenv 0x002C08
0x002C18:
    self.cn = 61s
0x002C24:
    if !(== self.cn 61s) goto 0x002C4C
0x002C38:
    push (== self.choicer 2s)
    goto 0x002C50
0x002C4C:
    push 0s
0x002C50:
    if !pop goto 0x002CB0
0x002C54:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x002C84
0x002C6C:
    pushenv 782s 0x002C80
0x002C74:
    call (instance_destroy[]:int32 )
0x002C80:
    popenv 0x002C74
0x002C84:
    self.cn = 62s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x002CB0:
    if !(== self.cn 63s) goto 0x002E24
0x002CC4:
    global.msc = 0s
    self.xx = (int32 self.al):x
    self.yy = (int32 self.al):y
    if !(== self.skip 1s) goto 0x002D60
0x002D1C:
    call (caster_stop[]:int32 (var -3s))
    global.currentsong = (caster_loop[]:int32 (var 0.75d) (var 1s) self.lab)
0x002D60:
    global.typer = 74s
    global.faceemotion = 4s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E4R..^1. roleplay?/"
    stog.msg[1s] = "\\E3.../"
    stog.msg[2s] = "\\E5.\\M1.. That actually&sounds kind of&fun!/"
    stog.msg[3s] = "\\M0OK^1, which one of&us will be Undyne?/*"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 64s
0x002E24:
    if !(== self.cn 64s) goto 0x002E54
0x002E38:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x002E58
0x002E54:
    push 0s
0x002E58:
    if !pop goto 0x002F2C
0x002E5C:
    if !(== 782.stringno 3s) goto 0x002E84
0x002E70:
    push (!= 782.halt 0s)
    goto 0x002E88
0x002E84:
    push 0s
0x002E88:
    if !pop goto 0x002F2C
0x002E8C:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   I'll be         You'll be&   Undyne          Undyne   "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x002F1C
0x002F10:
    self.halt = 0s
0x002F1C:
    popenv 0x002F10
0x002F20:
    self.cn = 65s
0x002F2C:
    if !(== self.cn 65s) goto 0x002F54
0x002F40:
    push (== self.choicer 2s)
    goto 0x002F58
0x002F54:
    push 0s
0x002F58:
    if !pop goto 0x002FDC
0x002F5C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x002F8C
0x002F74:
    pushenv 782s 0x002F88
0x002F7C:
    call (instance_destroy[]:int32 )
0x002F88:
    popenv 0x002F7C
0x002F8C:
    if !(== self.choice 0s) goto 0x002FB0
0x002FA0:
    self.cn = 69s
    goto 0x002FBC
0x002FB0:
    self.cn = 89s
0x002FBC:
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x002FDC:
    if !(== self.cn 70s) goto 0x00309C
0x002FF0:
    global.typer = 74s
    global.faceemotion = 6s
    stog.flag[20s] = 0s
    stog.msg[0s] = "Oh^1. Right^1.&Obviously^1.&Ehehe./"
    stog.msg[1s] = "\\E2A\\M1hem./"
    stog.msg[2s] = "\\E0H-hi\\M3 Undyne..^1.&H-how are you doing&today?/*"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 71s
0x00309C:
    if !(== self.cn 71s) goto 0x0030CC
0x0030B0:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x0030D0
0x0030CC:
    push 0s
0x0030D0:
    if !pop goto 0x0031A4
0x0030D4:
    if !(== 782.stringno 2s) goto 0x0030FC
0x0030E8:
    push (!= 782.halt 0s)
    goto 0x003100
0x0030FC:
    push 0s
0x003100:
    if !pop goto 0x0031A4
0x003104:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   I'm fine.       YOur &                      cute, "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x003194
0x003188:
    self.halt = 0s
0x003194:
    popenv 0x003188
0x003198:
    self.cn = 72s
0x0031A4:
    if !(== self.cn 72s) goto 0x0031CC
0x0031B8:
    push (== self.choicer 2s)
    goto 0x0031D0
0x0031CC:
    push 0s
0x0031D0:
    if !pop goto 0x003230
0x0031D4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x003204
0x0031EC:
    pushenv 782s 0x003200
0x0031F4:
    call (instance_destroy[]:int32 )
0x003200:
    popenv 0x0031F4
0x003204:
    self.cn = 73s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x003230:
    if !(== self.cn 74s) goto 0x003394
0x003244:
    global.typer = 74s
    stog.flag[20s] = 0s
    if !(== self.choice 0s) goto 0x0032C4
0x003278:
    stog.msg[0s] = "\\E5Ha^1! Ha^1!&Glad to hear it!!/"
    stog.msg[1s] = "\\E3.../"
    stog.msg[2s] = "\\E4Uhhh^1, so I'd like&to^1, um^1, talk to&you about&something./%%"
    goto 0x003354
0x0032C4:
    stog.msg[0s] = "\\E5Th..^1. thanks!/"
    stog.msg[1s] = "\\E6You say that to me&a lot^1, and I&never know what&to say!!/"
    stog.msg[2s] = "\\E6But I know^1, you just^1,&mean it platonically^1,&because we're just&friends!/"
    stog.msg[3s] = "\\M1Eheheh!!!/"
    stog.msg[4s] = "\\E3.../"
    stog.msg[5s] = "\\E4Uhhh^1, so I'd like&to^1, um^1, talk to&you about&something./%%"
0x003354:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 74.1d
0x003394:
    if !(== self.cn 74.1d) goto 0x0033CC
0x0033B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0033D0
0x0033CC:
    push 0s
0x0033D0:
    if !pop goto 0x0033FC
0x0033D4:
    self.cn = 74.2d
    stog.alarm[4s] = 20s
0x0033FC:
    if !(== self.cn 75.2d) goto 0x003424
0x003418:
    self.cn = 75s
0x003424:
    if !(== self.cn 75s) goto 0x003454
0x003438:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003458
0x003454:
    push 0s
0x003458:
    if !pop goto 0x0034FC
0x00345C:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   What is it,     THEN SHe&   Alphys.         Kisses YOu"
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0034EC
0x0034E0:
    self.halt = 0s
0x0034EC:
    popenv 0x0034E0
0x0034F0:
    self.cn = 76s
0x0034FC:
    if !(== self.cn 76s) goto 0x003524
0x003510:
    push (== self.choicer 2s)
    goto 0x003528
0x003524:
    push 0s
0x003528:
    if !pop goto 0x003588
0x00352C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00355C
0x003544:
    pushenv 782s 0x003558
0x00354C:
    call (instance_destroy[]:int32 )
0x003558:
    popenv 0x00354C
0x00355C:
    self.cn = 77s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x003588:
    if !(== self.cn 78s) goto 0x00378C
0x00359C:
    global.typer = 74s
    stog.flag[20s] = 0s
    if !(== self.choice 0s) goto 0x0036C4
0x0035D0:
    stog.msg[0s] = "\\E3Umm, you see..^1.&I..^1. I.../"
    stog.msg[1s] = "\\M3I..^1. I h-haven't been&exactly truthful&w-w-with you.../"
    stog.msg[2s] = "\\E4Y\\M4..^1. you see^1, I..^1. I.../"
    stog.msg[3s] = "\\E9Oh^1, forget it!/"
    stog.msg[4s] = "\\M0Undyne!!!/"
    stog.msg[5s] = "I..^1. I want to&tell you how I&feel!/"
    stog.msg[6s] = "\\M4Y-you're so brave^1,&a-and s-strong..^1.&A-and nice.../"
    stog.msg[7s] = "Y-you always listen&t-to me when I talk&about n-n-nerdy&stuff.../"
    stog.msg[8s] = "\\E0Y-you always d-d-do&your best to m-make&me f-f-feel&special.../"
    stog.msg[9s] = "\\E3L-like t-telling me&that y-you'll b-beat&up anyone that&g-gets in my way.../%%"
    goto 0x003754
0x0036C4:
    stog.msg[0s] = "\\E9WH-WHAT!?/"
    stog.msg[1s] = "\\M1UNDYNE WOULD NEVER^1,&UH..../"
    stog.msg[2s] = "\\E3.../"
    stog.msg[3s] = "\\M0.../"
    stog.msg[4s] = "\\E4I kiss her back..^1.&S..^1. softly.../"
    stog.msg[5s] = "\\M4I..^1. l-look gently&into her eyes.../%%"
0x003754:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 79s
0x00378C:
    if !(== self.cn 79s) goto 0x0037BC
0x0037A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0037C0
0x0037BC:
    push 0s
0x0037C0:
    if !pop goto 0x003934
0x0037C4:
    self.pitch = 0.75d
    push 2s
    stog.shake* = (int32 self.al)
    global.typer = 75s
    if !(== self.choice 0s) goto 0x003894
0x003810:
    stog.flag[20s] = 7s
    global.faceemotion = 11s
    stog.msg[0s] = "UNDYNE!!!/"
    stog.msg[1s] = "I CAN'T TAKE THIS&ANY LONGER!!!/"
    stog.msg[2s] = "I'M MADLY IN LOVE&WITH YOU!!!/"
    stog.msg[3s] = "HOLD ME^1, UNDYNE!^1!&HOLD ME!!!/%%"
    goto 0x0038FC
0x003894:
    stog.flag[20s] = 7s
    global.faceemotion = 11s
    stog.msg[0s] = "I START HOLLERING!!/"
    stog.msg[1s] = "UNDYNE!!!^1!&I LOVE YOU!!!/"
    stog.msg[2s] = "UNDYNE!!^1!&KISS ME AGAIN^1,&UNDYNE!!!/%%"
0x0038FC:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 110s
0x003934:
    if !(== self.cn 90s) goto 0x003A54
0x003948:
    global.typer = 74s
    global.faceemotion = 9s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E9M\\M0-m-me^1?&Undyne???/"
    stog.msg[1s] = "\\E7Uh^1, uh^1, uh^1, uh^1,&ok!/"
    stog.msg[2s] = "\\E6I'll say what I&think she'd say^1,&and you..^1. ummm..../"
    stog.msg[3s] = "\\E5You show me what&I'm supposed to do!/"
    stog.msg[4s] = "\\E2*\\M1ahem*/"
    stog.msg[5s] = "\\E0N\\M2gahhhh!!^1!&Hey^1, Alphys!&You look cute&today!/"
    stog.msg[6s] = "\\E5Which I say often^1!&But platonically&because I would&NEVER like you./*"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 91s
0x003A54:
    if !(== self.cn 91s) goto 0x003A84
0x003A68:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x003A88
0x003A84:
    push 0s
0x003A88:
    if !pop goto 0x003B5C
0x003A8C:
    if !(== 782.stringno 6s) goto 0x003AB4
0x003AA0:
    push (!= 782.halt 0s)
    goto 0x003AB8
0x003AB4:
    push 0s
0x003AB8:
    if !pop goto 0x003B5C
0x003ABC:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "   Hi Undyne!      Yo your&   Can we          one hot&   talk?           hotbaby"
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x003B4C
0x003B40:
    self.halt = 0s
0x003B4C:
    popenv 0x003B40
0x003B50:
    self.cn = 92s
0x003B5C:
    if !(== self.cn 92s) goto 0x003B84
0x003B70:
    push (== self.choicer 2s)
    goto 0x003B88
0x003B84:
    push 0s
0x003B88:
    if !pop goto 0x003BE8
0x003B8C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x003BBC
0x003BA4:
    pushenv 782s 0x003BB8
0x003BAC:
    call (instance_destroy[]:int32 )
0x003BB8:
    popenv 0x003BAC
0x003BBC:
    self.cn = 93s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x003BE8:
    if !(== self.cn 94s) goto 0x003DD4
0x003BFC:
    global.typer = 74s
    stog.flag[20s] = 0s
    if !(== self.choice 0s) goto 0x003CB4
0x003C30:
    stog.flag[20s] = 3s
    global.faceemotion = 2s
    stog.msg[0s] = "Talk^1, to you^1?&Hmmm..^1.&I guess so./"
    stog.msg[1s] = "I often seem&excited to listen&to you for some&reason./"
    stog.msg[2s] = "\\E4I will make intent&eye contact with you&so you sweat while&you talk./"
    stog.msg[3s] = "\\E0So^1, what is it?/%%"
    goto 0x003D94
0x003CB4:
    stog.flag[20s] = 1s
    global.faceemotion = 9s
    stog.msg[0s] = "What!^1?&A... alphys!?/"
    stog.msg[1s] = "What's gotten into&you!?/"
    stog.msg[2s] = "\\E9H\\M2-hotbaby!^1?&How dare you call&me that!?/"
    stog.msg[3s] = "\\E5First off^1, I'm a&baby KNIGHT!/"
    stog.msg[4s] = "Captain of the&babies!!!/"
    stog.msg[5s] = "Treat my position&with respect^1, or I&will strike you&down!/"
    stog.msg[6s] = "\\M3Uh^1, now pretend&I'm suplexing a&boulder for no&reason./"
    stog.msg[7s] = "\\E9U\\M0m^1! Anyway^1!&What do you&want to say^1,&Alphys!?/%%"
0x003D94:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 94.1d
0x003DD4:
    if !(== self.cn 94.1d) goto 0x003E0C
0x003DF0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003E10
0x003E0C:
    push 0s
0x003E10:
    if !pop goto 0x003E3C
0x003E14:
    self.cn = 94.2d
    stog.alarm[4s] = 20s
0x003E3C:
    if !(== self.cn 95.2d) goto 0x003E64
0x003E58:
    self.cn = 95s
0x003E64:
    if !(== self.cn 95s) goto 0x003E94
0x003E78:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003E98
0x003E94:
    push 0s
0x003E98:
    if !pop goto 0x003F3C
0x003E9C:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "   Let's tell      Alphys&   Undyne the      gives u&   truth           a kiss,"
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x003F2C
0x003F20:
    self.halt = 0s
0x003F2C:
    popenv 0x003F20
0x003F30:
    self.cn = 96s
0x003F3C:
    if !(== self.cn 96s) goto 0x003F64
0x003F50:
    push (== self.choicer 2s)
    goto 0x003F68
0x003F64:
    push 0s
0x003F68:
    if !pop goto 0x003FC8
0x003F6C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x003F9C
0x003F84:
    pushenv 782s 0x003F98
0x003F8C:
    call (instance_destroy[]:int32 )
0x003F98:
    popenv 0x003F8C
0x003F9C:
    self.cn = 97s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x003FC8:
    if !(== self.cn 98s) goto 0x0041F4
0x003FDC:
    global.typer = 74s
    stog.flag[20s] = 0s
    if !(== self.choice 0s) goto 0x0040C4
0x004010:
    stog.flag[20s] = 4s
    global.faceemotion = 9s
    stog.msg[0s] = "What!?/"
    stog.msg[1s] = "So you've been&lying to me the&whole time.../"
    stog.msg[2s] = "\\E7Alphys!!^1!&I can't believe you!/"
    stog.msg[3s] = "\\E8You w-worthless&slime!/"
    stog.msg[4s] = "\\E9How could you&betray our&friendship!!/"
    stog.msg[5s] = "\\E8After how much I&trusted you!!!/%%"
    goto 0x0041BC
0x0040C4:
    stog.flag[20s] = 1s
    global.faceemotion = 9s
    stog.msg[0s] = "WH-WHAT!^1?&I WOULD NEVER.../"
    stog.msg[1s] = "\\M0Alphys^1!&What are you&d-doing!/"
    stog.msg[2s] = "I s-say^1, pushing&you away from&me.../"
    stog.msg[3s] = "\\E3You sh-shouldn't&k-kiss me...!!/"
    stog.msg[4s] = "\\E3.../"
    stog.msg[5s] = "\\E4.../"
    stog.msg[6s] = "\\E3B-but^1, y-you're so&good at it.../"
    stog.msg[7s] = "\\E5B-b-b-because of what&you learned from&th-those d-d-dating&video games.../"
    stog.msg[8s] = "I...^1.&I c-c-can't help but&k-k-kiss you back.../%%"
0x0041BC:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 99s
0x0041F4:
    if !(== self.cn 99s) goto 0x004224
0x004208:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004228
0x004224:
    push 0s
0x004228:
    if !pop goto 0x00436C
0x00422C:
    self.pitch = 0.75d
    push 2s
    stog.shake* = (int32 self.al)
    global.typer = 75s
    if !(== self.choice 0s) goto 0x0042E4
0x004278:
    stog.flag[20s] = 7s
    global.faceemotion = 11s
    stog.msg[0s] = "ALPHYS^1!&I'LL NEVER LOVE YOU!/"
    stog.msg[1s] = "NEVER WILL YOU FEEL&MY PASSIONATE&EMBRACE!!!/"
    stog.msg[2s] = "I^1, UNDYNE^1, WILL&NEVER KISS YOU&WITH MY BEAUTIFUL&LIPS!!!/%%"
    goto 0x004334
0x0042E4:
    stog.flag[20s] = 7s
    global.faceemotion = 11s
    stog.msg[0s] = "NGAHHHH!!^1!&NGAHHH!!!!/"
    stog.msg[1s] = "I'M UNDYNE AND I'M&PILING ON THE&SMOOCHES!!!/%%"
0x004334:
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 260s))
    self.cn = 110s
0x00436C:
    if !(== self.cn 110s) goto 0x004398
0x004380:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00439C
0x004398:
    push 0s
0x00439C:
    if !pop goto 0x0043F0
0x0043A0:
    if !(< self.pitch 2s) goto 0x0043D4
0x0043B4:
    self.pitch = (+ self.pitch 0.01d)
0x0043D4:
    call (caster_set_pitch[]:int32 self.pitch global.currentsong)
0x0043F0:
    if !(== self.cn 110s) goto 0x004420
0x004404:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004424
0x004420:
    push 0s
0x004424:
    if !pop goto 0x0044F4
0x004428:
    global.facechoice = 5s
    pushenv 177s 0x004448
0x00443C:
    call (instance_destroy[]:int32 )
0x004448:
    popenv 0x00443C
0x00444C:
    self.und = (instance_create[]:int32 (var 177s) (+ (int32 self.trashcan):y 10s) (var -100s))
    stog.y* = (- (int32 self.und):y (+ (* (int32 self.und):sprite_height 2s) 66s))
    push 20s
    stog.hspeed* = (int32 self.und)
    self.cn = 111s
0x0044F4:
    push (int32 self.und)
    if !(== self.cn 111s) goto 0x00459C
0x004508:
    if !(> (int32 self.und):x 60s) goto 0x00459C
0x004528:
    [obj_adate_body].set = 1s
    [obj_adate_body].shake = 0s
    global.faceemotion = 8s
    push 60s
    stog.x* = (int32 self.und)
    push 0s
    stog.hspeed* = (int32 self.und)
    self.cn = 112s
    stog.alarm[4s] = 15s
0x00459C:
    if (== self.cn 111s) goto 0x0045C4
0x0045B0:
    push (== self.cn 112s)
    goto 0x0045C8
0x0045C4:
    push 1s
0x0045C8:
    if !pop goto 0x004674
0x0045CC:
    if !(bool (caster_is_playing[]:int32 global.currentsong)) goto 0x004674
0x0045E4:
    if !(> self.pitch 0s) goto 0x00461C
0x0045F8:
    self.pitch = (- self.pitch 0.04d)
    goto 0x004630
0x00461C:
    call (caster_stop[]:int32 global.currentsong)
0x004630:
    call (caster_set_pitch[]:int32 self.pitch global.currentsong)
    call (caster_set_volume[]:int32 (/ self.pitch (double 2s)) global.currentsong)
0x004674:
    if !(== self.cn 113s) goto 0x004740
0x004688:
    call (caster_stop[]:int32 global.currentsong)
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = "WHAT did you just&say?/%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 90s))
    self.cn = 113.1d
0x004740:
    if !(== self.cn 113.1d) goto 0x004778
0x00475C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00477C
0x004778:
    push 0s
0x00477C:
    if !pop goto 0x0047C0
0x004780:
    self.cn = 113.2d
    stog.alarm[4s] = 5s
    push 10s
    stog.hspeed* = (int32 self.al)
0x0047C0:
    if !(== self.cn 114.2d) goto 0x0047E8
0x0047DC:
    self.cn = 114s
0x0047E8:
    if !(== self.cn 114s) goto 0x004818
0x0047FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00481C
0x004818:
    push 0s
0x00481C:
    if !pop goto 0x0048EC
0x004820:
    self.xx = (int32 self.al):x
    self.yy = (int32 self.al):y
    push 0s
    stog.hspeed* = (int32 self.al)
    global.typer = 74s
    global.faceemotion = 1s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E1U..^1. Undyne^1!&I..^1. was..^1. just.../%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 250s))
    self.cn = 115s
0x0048EC:
    if !(== self.cn 115s) goto 0x00491C
0x004900:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004920
0x00491C:
    push 0s
0x004920:
    if !pop goto 0x004A38
0x004924:
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = "\\F6Hey^1, woah^1, wait&a second!/"
    stog.msg[1s] = "Your outfit's really&cute^1!&What's the occasion?/"
    stog.msg[2s] = "\\F0.\\E0../"
    stog.msg[3s] = "\\F2W\\E1ait a second./"
    stog.msg[4s] = "\\F1Are you two.../"
    stog.msg[5s] = "\\F3On a date?/%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 90s))
    self.cn = 116s
0x004A38:
    if !(== self.cn 116s) goto 0x004A68
0x004A4C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004A6C
0x004A68:
    push 0s
0x004A6C:
    if !pop goto 0x004B34
0x004A70:
    global.typer = 74s
    global.faceemotion = 1s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E1UHHH^1, \\F4YES!/"
    stog.msg[1s] = "\\E7I mean^1, \\F5UHHH NO!/"
    stog.msg[2s] = "\\E3I mean^1, \\F7we were^1,& bu^1t%"
    stog.msg[3s] = "\\E1I mean^1, actually we&were \\F3only romantically&roleplaying as you!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 250s))
    self.cn = 117s
0x004B34:
    if !(== self.cn 117s) goto 0x004B64
0x004B48:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004B68
0x004B64:
    push 0s
0x004B68:
    if !pop goto 0x004C08
0x004B6C:
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = "\\F3WHAT???/%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 90s))
    self.cn = 118s
0x004C08:
    if !(== self.cn 118s) goto 0x004C38
0x004C1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004C3C
0x004C38:
    push 0s
0x004C3C:
    if !pop goto 0x004CEC
0x004C40:
    global.typer = 74s
    global.faceemotion = 8s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E8I MEAN!!!/"
    stog.msg[1s] = "\\E3I mean.../"
    stog.msg[2s] = "Undyne..^1.&I.../%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 250s))
    self.cn = 119s
0x004CEC:
    if !(== self.cn 119s) goto 0x004D1C
0x004D00:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004D20
0x004D1C:
    push 0s
0x004D20:
    if !pop goto 0x004DE4
0x004D24:
    self.confession = (caster_load[]:int32 (var "music/confession.ogg"))
    global.currentsong = (caster_loop[]:int32 (var 1s) (var 1s) self.confession)
    global.typer = 74s
    global.faceemotion = 7s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\F4I've been lying to&you!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 250s))
    self.cn = 120s
0x004DE4:
    if !(== self.cn 120s) goto 0x004E14
0x004DF8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004E18
0x004E14:
    push 0s
0x004E18:
    if !pop goto 0x004EB8
0x004E1C:
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = "\\F3WHAT??^1?&ABOUT WHAT???/%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 90s))
    self.cn = 121s
0x004EB8:
    if !(== self.cn 121s) goto 0x004EE8
0x004ECC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004EEC
0x004EE8:
    push 0s
0x004EEC:
    if !pop goto 0x004FCC
0x004EF0:
    push 90s
    stog.depth* = (int32 self.trashcan)
    push -1s
    stog.depth* = (int32 self.al)
    push 0s
    stog.depth* = (int32 self.und)
    global.typer = 74s
    global.faceemotion = 3s
    stog.flag[20s] = 0s
    stog.msg[0s] = "About... well.../"
    stog.msg[1s] = "\\E2Everything!/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 250s))
    self.cn = 122s
0x004FCC:
    if !(== self.cn 122s) goto 0x004FFC
0x004FE0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005000
0x004FFC:
    push 0s
0x005000:
    if !pop goto 0x005044
0x005004:
    push -10s
    stog.hspeed* = (int32 self.al)
    self.cn = 121.1d
    stog.alarm[4s] = 15s
0x005044:
    if !(== self.cn 122.1d) goto 0x005104
0x005060:
    self.xx = (int32 self.al):x
    push 0s
    stog.hspeed* = (int32 self.al)
    stog.msg[0s] = "\\E7I told you that& seaweed was like...&scientifically&important...%"
    stog.msg[1s] = "\\F5Really, I just...&I just use it to&make ice cream^1!%%"
    call (scr_blcon[]:int32 (var 0s) self.yy (+ self.xx 110s))
    self.cn = 122.3d
0x005104:
    if !(== self.cn 122.3d) goto 0x00513C
0x005120:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005140
0x00513C:
    push 0s
0x005140:
    if !pop goto 0x005184
0x005144:
    push -10s
    stog.hspeed* = (int32 self.al)
    self.cn = 121.4d
    stog.alarm[4s] = 5s
0x005184:
    if !(== self.cn 122.4d) goto 0x005244
0x0051A0:
    self.xx = (int32 self.al):x
    push 0s
    stog.hspeed* = (int32 self.al)
    stog.msg[0s] = "And those human&history books I&keep reading...%"
    stog.msg[1s] = "\\F7Those are just&dorky comic books^1!%%"
    call (scr_blcon[]:int32 (var 0s) self.yy (+ self.xx 110s))
    self.cn = 122.5d
0x005244:
    if !(== self.cn 122.5d) goto 0x00527C
0x005260:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005280
0x00527C:
    push 0s
0x005280:
    if !pop goto 0x0052C4
0x005284:
    push -10s
    stog.hspeed* = (int32 self.al)
    self.cn = 121.6d
    stog.alarm[4s] = 5s
0x0052C4:
    if !(== self.cn 122.6d) goto 0x005384
0x0052E0:
    self.xx = (int32 self.al):x
    push 0s
    stog.hspeed* = (int32 self.al)
    stog.msg[0s] = "And the history&movies..^1.&those..^2.%"
    stog.msg[1s] = "\\F2Those are just^1, uh^1,&anime^2!&They aren't real^2!%%"
    call (scr_blcon[]:int32 (var 0s) self.yy (+ self.xx 110s))
    self.cn = 122.8d
0x005384:
    if !(== self.cn 122.8d) goto 0x0053BC
0x0053A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0053C0
0x0053BC:
    push 0s
0x0053C0:
    if !pop goto 0x005404
0x0053C4:
    push -9s
    stog.hspeed* = (int32 self.al)
    self.cn = 121.9d
    stog.alarm[4s] = 5s
0x005404:
    if !(== self.cn 122.9d) goto 0x0054D4
0x005420:
    self.xx = (int32 self.al):x
    push 0s
    stog.hspeed* = (int32 self.al)
    stog.msg[0s] = "And that time I&told you I was&busy with work on&the phone..^1. I...%"
    stog.msg[1s] = "\\F9Was just eating&frozen yogurt in&my pajamas!%"
    stog.msg[2s] = "\\E3That time I...%%"
    call (scr_blcon[]:int32 (var 0s) self.yy (+ self.xx 110s))
    self.cn = 125s
0x0054D4:
    if !(== self.cn 125s) goto 0x005504
0x0054E8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005508
0x005504:
    push 0s
0x005508:
    if !pop goto 0x0055A8
0x00550C:
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = "Alphys./%%"
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 10s) (+ self.xxx 90s))
    self.cn = 127s
0x0055A8:
    if !(== self.cn 127s) goto 0x0055D8
0x0055BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0055DC
0x0055D8:
    push 0s
0x0055DC:
    if !pop goto 0x00568C
0x0055E0:
    global.typer = 74s
    global.faceemotion = 5s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E5I..^1. I just wanted to&impress you!/"
    stog.msg[1s] = "I just wanted you&to think I was&smart and cool./"
    stog.msg[2s] = "That I wasn't&some..^1.&nerdy loser./%%"
    call (scr_blcon[]:int32 (var 0s) self.yy (+ self.xx 110s))
    self.cn = 130s
0x00568C:
    if !(== self.cn 130s) goto 0x0056BC
0x0056A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0056C0
0x0056BC:
    push 0s
0x0056C0:
    if !pop goto 0x0057E0
0x0056C4:
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    push 0s
    stog.visible* = (int32 self.und)
    push 0s
    stog.visible* = (int32 self.al)
    self.thrower = (instance_create[]:int32 (var 172s) (- (int32 self.und):y 56s) (- (int32 self.und):x 34s))
    stog.msg[0s] = "Alphys./%%"
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 10s) (+ self.xxx 90s))
    self.cn = 131s
0x0057E0:
    if !(== self.cn 131s) goto 0x005810
0x0057F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005814
0x005810:
    push 0s
0x005814:
    if !pop goto 0x005894
0x005818:
    global.typer = 74s
    global.faceemotion = 5s
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E5Undyne^1, I..^1.&I really think you're&neat^1, OK.../%%"
    call (scr_blcon[]:int32 (var 0s) self.yy (+ self.xx 110s))
    self.cn = 132s
0x005894:
    if !(== self.cn 132s) goto 0x0058C4
0x0058A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0058C8
0x0058C4:
    push 0s
0x0058C8:
    if !pop goto 0x0059B0
0x0058CC:
    push 1s
    stog.con* = (int32 self.thrower)
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    stog.msg[0s] = "Alphys./"
    stog.msg[1s] = "Shhhh./"
    stog.msg[2s] = "Shhhhhh./%%"
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 40s) (+ self.xxx 140s))
    self.cn = 133s
0x0059B0:
    if !(== self.cn 133s) goto 0x0059E0
0x0059C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0059E4
0x0059E0:
    push 0s
0x0059E4:
    if !pop goto 0x005A08
0x0059E8:
    self.cn = 134s
    stog.alarm[4s] = 30s
0x005A08:
    if !(== self.cn 135s) goto 0x005A68
0x005A1C:
    call (caster_stop[]:int32 global.currentsong)
    push 3s
    stog.con* = (int32 self.thrower)
    self.cn = 136s
    stog.alarm[4s] = 100s
0x005A68:
    if !(== self.cn 137s) goto 0x005B24
0x005A7C:
    pushenv (int32 self.thrower) 0x005A98
0x005A8C:
    call (instance_destroy[]:int32 )
0x005A98:
    popenv 0x005A8C
0x005A9C:
    global.facechoice = 0s
    push 1s
    stog.set* = (int32 self.und)
    push 1s
    stog.visible* = (int32 self.und)
    pushenv (int32 self.trashcan) 0x005B00
0x005AE8:
    self.fadein = 1s
    self.con = 1s
0x005B00:
    popenv 0x005AE8
0x005B04:
    self.cn = 138s
    stog.alarm[4s] = 90s
0x005B24:
    if !(== self.cn 139s) goto 0x005D40
0x005B38:
    self.utheme = (caster_load[]:int32 (var "music/undynetruetheme.ogg"))
    global.currentsong = (caster_loop[]:int32 (var 1s) (var 0.9d) self.utheme)
    stog.msg[0s] = "\\F0Alphys!/"
    stog.msg[1s] = "I..^1. think you're&neat^1, too, I guess./"
    stog.msg[2s] = "\\F1But, you've gotta&realize.../"
    stog.msg[3s] = "\\F2Most of what you&said really doesn't&matter to me./"
    stog.msg[4s] = "I don't care if&you're watching kid&cartoons or reading&history books./"
    stog.msg[5s] = "\\F3To me^1, ALL of&that stuff is&just NERDY CRAP!/"
    stog.msg[6s] = "What I like about&you is that you're&PASSIONATE^1!&You're ANALYTICAL!!/"
    stog.msg[7s] = "It doesn't matter&what it is^1!&YOU CARE ABOUT IT!!/"
    stog.msg[8s] = "\\F4100-PERCENT!^1!&AT MAXIMUM POWER!!!/"
    stog.msg[9s] = "\\F5... so^1, you don't&have to lie to me./"
    stog.msg[10s] = "\\F0I don't want you&to have to lie to&anyone anymore./"
    stog.msg[11s] = "\\F6Alphys..^1. I want to&help you become&happy with who&you are!/"
    stog.msg[12s] = "\\F5And I know just&the training you&need to do that!/%%"
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 10s) (+ self.xxx 90s))
    self.cn = 140s
0x005D40:
    if !(== self.cn 140s) goto 0x005D70
0x005D54:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005D74
0x005D70:
    push 0s
0x005D74:
    if !pop goto 0x005DB0
0x005D78:
    push 3s
    stog.shake* = (int32 self.trashcan)
    self.cn = 141s
    stog.alarm[4s] = 30s
0x005DB0:
    if !(== self.cn 142s) goto 0x005E20
0x005DC4:
    push 0s
    stog.shake* = (int32 self.trashcan)
    global.faceemotion = 0s
    push 1s
    stog.aturn* = (int32 self.trashcan)
    self.cn = 143s
    stog.alarm[4s] = 30s
0x005E20:
    if !(== self.cn 144s) goto 0x005F14
0x005E34:
    self.xx = (int32 self.trashcan):x
    self.yy = (+ (- (int32 self.trashcan):y (* (int32 self.trashcan):sprite_height 2s)) 20s)
    global.typer = 74s
    global.faceemotion = 0s
    stog.msg[0s] = "Undyne..^1.&You.../"
    stog.msg[1s] = "\\E4Y-you're gonna train&me...?/%%"
    call (scr_blcon[]:int32 (var 1s) self.yy (- self.xx 320s))
    self.cn = 145s
0x005F14:
    if !(== self.cn 145s) goto 0x005F44
0x005F28:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005F48
0x005F44:
    push 0s
0x005F48:
    if !pop goto 0x005FE8
0x005F4C:
    stog.msg[0s] = "\\F2Pffft^1, what^1?&ME?/%%"
    global.typer = 39s
    self.xxx = (int32 self.und):x
    self.yyy = (int32 self.und):y
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 10s) (+ self.xxx 90s))
    self.cn = 146s
0x005FE8:
    if !(== self.cn 146s) goto 0x006018
0x005FFC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00601C
0x006018:
    push 0s
0x00601C:
    if !pop goto 0x006088
0x006020:
    global.faceemotion = 0s
    call (caster_stop[]:int32 global.currentsong)
    self.pap = (instance_create[]:int32 (var 173s) (var 400s) (var 400s))
    self.cn = 147s
    stog.alarm[4s] = 110s
0x006088:
    if !(== self.cn 148s) goto 0x00610C
0x00609C:
    global.faceemotion = 3s
    stog.msg[0s] = "\\F6Nah^1, I'm gonna&get Papyrus to&do it./%%"
    global.typer = 39s
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 120s) (+ self.xxx 90s))
    self.cn = 149s
0x00610C:
    if !(== self.cn 149s) goto 0x00613C
0x006120:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006140
0x00613C:
    push 0s
0x006140:
    if !pop goto 0x00617C
0x006144:
    push 2s
    stog.con* = (int32 self.pap)
    self.cn = 150s
    stog.alarm[4s] = 60s
0x00617C:
    if !(== self.cn 151s) goto 0x006230
0x006190:
    global.faceemotion = 2s
    global.typer = 22s
    stog.msg[0s] = "GET THOSE BONES&SHAKIN'!!!/"
    stog.msg[1s] = "IT'S TIME TO JOG&100 LAPS^1, HOOTING&ABOUT HOW GREAT&WE ARE!!!/%%"
    call (scr_blcon[]:int32 (var 1s) (- (int32 self.pap):y 80s) (- (int32 self.pap):x 150s))
    self.cn = 153s
0x006230:
    if !(== self.cn 153s) goto 0x006260
0x006244:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006264
0x006260:
    push 0s
0x006264:
    if !pop goto 0x0062D8
0x006268:
    global.faceemotion = 2s
    stog.msg[0s] = "Ready^1?&I'm about to start&the timer!/%%"
    global.typer = 39s
    call (scr_blcon[]:int32 (var 0s) (+ self.yyy 20s) (+ self.xxx 90s))
    self.cn = 155s
0x0062D8:
    if !(== self.cn 155s) goto 0x006308
0x0062EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00630C
0x006308:
    push 0s
0x00630C:
    if !pop goto 0x0063F8
0x006310:
    self.xx = (int32 self.trashcan):x
    self.yy = (+ (- (int32 self.trashcan):y (* (int32 self.trashcan):sprite_height 2s)) 20s)
    global.typer = 74s
    global.faceemotion = 0s
    stog.msg[0s] = "\\E5 & &    U-Undyne.../"
    stog.msg[1s] = "\\E1 & &    I'll do my&    best...!/%%"
    call (scr_blcon[]:int32 (var 2s) (- self.yy 140s) (- self.xx 80s))
    self.cn = 156s
0x0063F8:
    if !(== self.cn 156s) goto 0x006428
0x00640C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00642C
0x006428:
    push 0s
0x00642C:
    if !pop goto 0x006498
0x006430:
    pushenv 92s 0x006444
0x006438:
    call (instance_destroy[]:int32 )
0x006444:
    popenv 0x006438
0x006448:
    push 10s
    stog.hspeed* = (int32 self.pap)
    push 10s
    stog.hspeed* = (int32 self.trashcan)
    self.cn = 157s
    stog.alarm[4s] = 80s
0x006498:
    if !(== self.cn 158s) goto 0x0065F8
0x0064AC:
    push 0s
    stog.set* = (int32 self.und)
    global.facechoice = 1s
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/undynetruetheme.ogg"))
    call (caster_loop[]:int32 (var 2s) (var 0.65d) global.currentsong)
    stog.msg[0s] = "\\F3OH MY GOD!!!/"
    stog.msg[1s] = "\\F5She was kidding^1,&right!? /"
    stog.msg[2s] = "Those cartoons..^1.&those comics.../"
    stog.msg[3s] = "\\F7Those are still&REAL^1, right!?/"
    stog.msg[4s] = "\\F8ANIME'S REAL^1,&RIGHT?!?!/%%"
    global.typer = 39s
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 20s) (+ self.xxx 90s))
    self.cn = 158.1d
0x0065F8:
    if !(== self.cn 158.1d) goto 0x006630
0x006614:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006634
0x006630:
    push 0s
0x006634:
    if !pop goto 0x006660
0x006638:
    stog.alarm[4s] = 15s
    self.cn = 158.2d
0x006660:
    if !(== self.cn 159.2d) goto 0x006688
0x00667C:
    self.cn = 159s
0x006688:
    if !(== self.cn 159s) goto 0x0066B8
0x00669C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0066BC
0x0066B8:
    push 0s
0x0066BC:
    if !pop goto 0x006760
0x0066C0:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "   Anime is        Anime &   Real            is not &                   real"
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x006750
0x006744:
    self.halt = 0s
0x006750:
    popenv 0x006744
0x006754:
    self.cn = 160s
0x006760:
    if !(== self.cn 160s) goto 0x006788
0x006774:
    push (== self.choicer 2s)
    goto 0x00678C
0x006788:
    push 0s
0x00678C:
    if !pop goto 0x0067EC
0x006790:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0067C0
0x0067A8:
    pushenv 782s 0x0067BC
0x0067B0:
    call (instance_destroy[]:int32 )
0x0067BC:
    popenv 0x0067B0
0x0067C0:
    self.cn = 161s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x0067EC:
    if !(== self.cn 162s) goto 0x0068DC
0x006800:
    if !(== self.choice 0s) goto 0x006860
0x006814:
    stog.msg[0s] = "HA HA HA!!!/"
    stog.msg[1s] = "I KNEW IT!!!/"
    stog.msg[2s] = "GIGANTIC SWORDS!!^1!&MAGICAL PRINCESSES^1!&HERE I COME!!!/%%"
    goto 0x006890
0x006860:
    stog.msg[0s] = "\\F3No..^1. NO!!!!/"
    stog.msg[1s] = "I CAN FEEL MY&HEART BREAKING&INTO PIECES!!!/%%"
0x006890:
    global.typer = 39s
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 20s) (+ self.xxx 90s))
    self.cn = 163s
0x0068DC:
    if !(== self.cn 163s) goto 0x00690C
0x0068F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006910
0x00690C:
    push 0s
0x006910:
    if !pop goto 0x00695C
0x006914:
    self.mfo = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    self.cn = 164s
    stog.alarm[4s] = 20s
0x00695C:
    if !(== self.cn 165s) goto 0x00698C
0x006970:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006990
0x00698C:
    push 0s
0x006990:
    if !pop goto 0x006B30
0x006994:
    if !(== self.choice 0s) goto 0x006A3C
0x0069A8:
    stog.msg[0s] = "\\F6.../"
    stog.msg[1s] = "Uhh^1, thanks for&taking care of&Alphys./"
    stog.msg[2s] = "\\F9I didn't get to&say what I wanted&to^1, but.../"
    stog.msg[3s] = "\\F0Things seem like&they're going to get&better for her./"
    stog.msg[4s] = "\\F6Well^1, I gotta go&catch up with&them!/"
    stog.msg[5s] = "Later!/%%"
    goto 0x006AE4
0x006A3C:
    stog.msg[0s] = "\\F3.../"
    stog.msg[1s] = "\\F5... no^1, I can&survive this.../"
    stog.msg[2s] = "\\F3I have to be strong./"
    stog.msg[3s] = "\\F9For Alphys./"
    stog.msg[4s] = "\\F0Thank you^1, human^1,&for telling me&the truth./"
    stog.msg[5s] = "\\F9I'll try my best to&live in this&world.../"
    stog.msg[6s] = "\\F0See you later!/%%"
0x006AE4:
    global.typer = 39s
    call (scr_blcon[]:int32 (var 0s) (- self.yyy 20s) (+ self.xxx 90s))
    self.cn = 166s
0x006B30:
    if !(== self.cn 166s) goto 0x006B60
0x006B44:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006B64
0x006B60:
    push 0s
0x006B64:
    if !pop goto 0x006BA0
0x006B68:
    push 20s
    stog.hspeed* = (int32 self.und)
    self.cn = 167s
    stog.alarm[4s] = 30s
0x006BA0:
    if !(== self.cn 168s) goto 0x006BF8
0x006BB4:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.cn = 169s
    stog.alarm[4s] = 12s
0x006BF8:
    if !(== self.cn 170s) goto 0x006CF4
0x006C0C:
    call (ini_open[]:int32 (var "undertale.ini"))
    self.adhd = (ini_read_real[]:int32 (var 0s) (var "AD") (var "Alphys"))
    call (ini_write_real[]:int32 (+ self.adhd 1s) (var "AD") (var "Alphys"))
    call (ini_close[]:int32 )
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    stog.flag[492s] = 0s
    stog.flag[493s] = 10s
    call (room_goto[]:int32 (var 113s))
0x006CF4:
    if !(bool (instance_exists[]:int32 (var 188s))) goto 0x006D18
0x006D0C:
    call (scr_textskip[]:int32 )
0x006D18:
    if !(== self.cn 999s) goto 0x006D48
0x006D2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006D4C
0x006D48:
    push 0s
0x006D4C:
    if !pop goto 0x006FA8
0x006D50:
    if !(bool (instance_exists[]:int32 self.blcon)) goto 0x006D88
0x006D68:
    pushenv (int32 self.blcon) 0x006D84
0x006D78:
    call (instance_destroy[]:int32 )
0x006D84:
    popenv 0x006D78
0x006D88:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    if !(== self.joke 1s) goto 0x006DFC
0x006DE0:
    stog.msg[0s] = "\\E0WOWIE!!^1!&I FEEL SO&INFORMED!!!/"
    goto 0x006E14
0x006DFC:
    stog.msg[0s] = " %"
0x006E14:
    stog.msg[1s] = "I THINK WE'RE&READY FOR STEP&TWO!!!/"
    stog.msg[2s] = "\\F4 \\E8 %"
    stog.msg[3s] = "\"STEP TWO..^1.&ASK THEM&"
    push -5s
    if !(== 66s:flag 1s) goto 0x006EA4
0x006E78:
    push -5s
    stog.msg[(+ 3s:msg "ON A DATE.\"/")] = 3s
    goto 0x006ECC
0x006EA4:
    push -5s
    stog.msg[(+ 3s:msg "TO HANG OUT.\"/")] = 3s
0x006ECC:
    stog.msg[4s] = "\\E0A\\F0HEM!/"
    stog.msg[5s] = "\\E1HUMAN^1!&I^1, THE GREAT&PAPYRUS.../"
    push -5s
    if !(== 66s:flag 1s) goto 0x006F34
0x006F18:
    stog.msg[6s] = "WILL GO ON&A DATE WITH&YOU!!!/*"
    goto 0x006F4C
0x006F34:
    stog.msg[6s] = "WILL HANG OUT&WITH YOU!!!/*"
0x006F4C:
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 100s
0x006FA8:
    if !(== self.cn 100s) goto 0x006FD8
0x006FBC:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x006FDC
0x006FD8:
    push 0s
0x006FDC:
    if !pop goto 0x0070B0
0x006FE0:
    if !(== 782.stringno 6s) goto 0x007008
0x006FF4:
    push (!= 782.halt 0s)
    goto 0x00700C
0x007008:
    push 0s
0x00700C:
    if !pop goto 0x0070B0
0x007010:
    self.choice = 0s
    self.choicer = 1s
    global.typer = 1s
    stog.msg[0s] = "                              &   Yes             No       &                            "
    push (var 785s)
    push -5s
    self.iii = (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
    pushenv (int32 self.iii) 0x0070A0
0x007094:
    self.halt = 0s
0x0070A0:
    popenv 0x007094
0x0070A4:
    self.cn = 101s
0x0070B0:
    if !(== self.cn 102s) goto 0x0070D8
0x0070C4:
    push (== self.choicer 2s)
    goto 0x0070DC
0x0070D8:
    push 0s
0x0070DC:
    if !pop goto 0x00713C
0x0070E0:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x007110
0x0070F8:
    pushenv 782s 0x00710C
0x007100:
    call (instance_destroy[]:int32 )
0x00710C:
    popenv 0x007100
0x007110:
    self.cn = 103s
    self.choicer = 0s
    stog.alarm[4s] = 10s
0x00713C:
    if !(== self.cn 104s) goto 0x0072C8
0x007150:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 22s) (+ self.x 145s))
    global.typer = 22s
    if !(== self.choice 0s) goto 0x0071DC
0x0071A8:
    global.faceemotion = 9s
    global.facechoice = 3s
    stog.msg[0s] = "R-REALLY??^1?&WOWIE!!!/"
    goto 0x00720C
0x0071DC:
    global.faceemotion = 0s
    global.facechoice = 4s
    stog.msg[0s] = "FORTUNATELY^1, IT&ONLY SAYS TO&ASK!!!/"
0x00720C:
    stog.msg[1s] = "\\E0I GUESS THAT&MEANS IT'S&TIME FOR PART&THREE!!!/"
    stog.msg[2s] = "\\F4 \\E8 %"
    stog.msg[3s] = "\"STEP THREE..^1.&PUT ON NICE&CLOTHES TO&SHOW YOU CARE!\"/"
    stog.msg[4s] = "\\E3.../%%"
    self.blconwd = (instance_create[]:int32 (var 782s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    self.cn = 105s
0x0072C8:
    exit
