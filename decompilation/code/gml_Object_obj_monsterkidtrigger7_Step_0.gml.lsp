0x000000:
    if !(== self.con 1s) goto 0x0000FC
0x000014:
    push (var 1115s)
    self.mkid = (instance_create[]:int32 1570.y -1s (- 0s:view_xview 40s))
    push 0s
    stog.image_speed* = (int32 self.mkid)
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 0.1d
    stog.alarm[4s] = 2s
    self.vol = (caster_get_volume[]:int32 global.currentsong)
    self.vol2 = self.vol
0x0000FC:
    if !(== self.con 1.1d) goto 0x000140
0x000118:
    self.con = 0.2d
    stog.alarm[4s] = 2s
0x000140:
    if !(== self.con 1.2d) goto 0x000194
0x00015C:
    self.con = 1.3d
    stog.msg[0s] = "* Yo!/%%"
    call (scr_regulartext[]:int32 )
0x000194:
    if !(== self.con 1.3d) goto 0x0001CC
0x0001B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x0001F4
0x0001D4:
    self.con = 2s
    stog.alarm[4s] = 50s
0x0001F4:
    if !(== self.con 2s) goto 0x000224
0x000208:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x0002A0
0x00022C:
    if !(> self.vol 0s) goto 0x000260
0x000240:
    self.vol = (- self.vol 0.02d)
0x000260:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    push -1s
    stog.view_xview[(- 0s:view_xview 2s)] = 0s
0x0002A0:
    if !(== self.con 3s) goto 0x0003C8
0x0002B4:
    global.facing = 3s
    call (caster_pause[]:int32 global.currentsong)
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
    push 1s
    stog.hspeed* = (int32 self.mkid)
    self.con = 4s
    stog.alarm[4s] = 20s
    push -5s
    if !(== 13s:tempvalue 1s) goto 0x0003C8
0x000348:
    stog.alarm[4s] = 50s
    self.con = 13s
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    push 3s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
0x0003C8:
    if !(== self.con 5s) goto 0x000444
0x0003DC:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    self.con = 6s
    stog.alarm[4s] = 50s
0x000444:
    if !(== self.con 7s) goto 0x0004B0
0x000458:
    push 1s
    stog.hspeed* = (int32 self.mkid)
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
    self.con = 8s
    stog.alarm[4s] = 130s
0x0004B0:
    if !(== self.con 9s) goto 0x00052C
0x0004C4:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    self.con = 10s
    stog.alarm[4s] = 30s
0x00052C:
    if !(== self.con 10s) goto 0x000588
0x000540:
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 11s
    stog.alarm[4s] = 30s
0x000588:
    if !(== self.con 12s) goto 0x0005E4
0x00059C:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 13s
    stog.alarm[4s] = 40s
0x0005E4:
    if !(== self.con 14s) goto 0x000800
0x0005F8:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    global.msc = 623s
    global.typer = 5s
    global.facechoice = 0s
    self.con = 15s
    if !(== self.murder 1s) goto 0x0007DC
0x0006AC:
    self.con = 150s
    global.msc = 0s
    stog.msg[0s] = "* Yo./"
    stog.msg[1s] = "* Undyne told me to stay&  away from you./"
    stog.msg[2s] = "* She said you..^1.&* You hurt a lot of people./"
    stog.msg[3s] = "* .../"
    stog.msg[4s] = "* But^1, yo^1, that's not true^1,&  right!?/"
    stog.msg[5s] = "* .../"
    stog.msg[6s] = "* ... yo..^1.&* Why won't you answer me?/"
    stog.msg[7s] = "* A..^1. a..^1. and what's with&  that weird expression...?/%%"
    push -5s
    if !(== 13s:tempvalue 1s) goto 0x0007DC
0x0007A0:
    stog.msg[0s] = "* Yo^1, dude..^1.&* I..^1. I heard some things^1,&  and.../"
    stog.msg[1s] = "* What^1?&* Look over here^1?&* What for  %%"
    self.con = 157s
0x0007DC:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000800:
    if !(== self.con 15s) goto 0x000830
0x000814:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000834
0x000830:
    push 0s
0x000834:
    if !pop goto 0x000880
0x000838:
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 16s
    stog.alarm[4s] = 30s
0x000880:
    if !(== self.con 17s) goto 0x0008EC
0x000894:
    push -1s
    stog.hspeed* = (int32 self.mkid)
    self.con = 18s
    stog.alarm[4s] = 15s
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
0x0008EC:
    if !(== self.con 19s) goto 0x000968
0x000900:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    stog.alarm[4s] = 60s
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    self.con = 20s
0x000968:
    if !(== self.con 21s) goto 0x000A04
0x00097C:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    push -3s
    stog.hspeed* = (int32 self.mkid)
    stog.alarm[4s] = 15s
    push 0.5d
    stog.image_speed* = (int32 self.mkid)
    self.con = 20.1d
0x000A04:
    if !(== self.con 21.1d) goto 0x000AAC
0x000A20:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    push 1390s
    stog.sprite_index* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    self.mkiddex = 0s
    self.con = 22s
    stog.alarm[4s] = 18s
0x000AAC:
    if !(== self.con 22s) goto 0x000B48
0x000AC0:
    self.mkiddex = (+ self.mkiddex 0.25d)
    if !(>= self.mkiddex 2s) goto 0x000B00
0x000AF4:
    self.mkiddex = 0s
0x000B00:
    if !(< self.mkiddex 1s) goto 0x000B30
0x000B14:
    push 0s
    stog.image_index* = (int32 self.mkid)
    goto 0x000B48
0x000B30:
    push 1s
    stog.image_index* = (int32 self.mkid)
0x000B48:
    if !(== self.con 23s) goto 0x000BEC
0x000B5C:
    push 0s
    stog.image_index* = (int32 self.mkid)
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
    push -1s
    stog.hspeed* = (int32 self.mkid)
    push 2s
    stog.vspeed* = (int32 self.mkid)
    self.con = 24s
    stog.alarm[4s] = 15s
0x000BEC:
    if !(== self.con 25s) goto 0x000C90
0x000C00:
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.vspeed* = (int32 self.mkid)
    self.con = 26s
    stog.alarm[4s] = 10s
0x000C90:
    if !(== self.con 27s) goto 0x000D64
0x000CA4:
    stog.msg[0s] = "* Yo^1, w-w-wait^1!&* Help^1!&* I tripped!/%%"
    self.interact = (instance_create[]:int32 (var 1344s) (+ (int32 self.mkid):y 10s) (int32 self.mkid):x)
    push 0.5d
    stog.image_xscale* = (int32 self.interact)
    stog.x* = (+ (int32 self.interact):x 5s)
    call (scr_regulartext[]:int32 )
    self.con = 28s
0x000D64:
    push (int32 self.interact)
    if !(== self.con 28s) goto 0x000D94
0x000D78:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D98
0x000D94:
    push 0s
0x000D98:
    if !pop goto 0x000E54
0x000D9C:
    push (var 1117s)
    self.undyne = (instance_create[]:int32 (var 82s) -1s (- 0s:view_xview 40s))
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    push 2s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    self.con = 29s
    stog.alarm[4s] = 20s
0x000E54:
    if !(== self.con 30s) goto 0x000ED0
0x000E68:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 31s
    stog.alarm[4s] = 30s
0x000ED0:
    if !(== self.con 32s) goto 0x000F30
0x000EE4:
    push 1441s
    stog.sprite_index* = (int32 self.undyne)
    call (snd_play[]:int32 (var 13s))
    self.con = 33s
    stog.alarm[4s] = 20s
0x000F30:
    if !(== self.con 34s) goto 0x00106C
0x000F44:
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    global.interact = 0s
    self.con = 35s
    stog.flag[17s] = 1s
    push (var 806s)
    self.doorb = (instance_create[]:int32 (+ 1570.y 10s) -1s (- 0s:view_xview 20s))
    push (var 805s)
    push (+ 1570.y 10s)
    self.doora = (instance_create[]:int32 -1s 0s:view_xview (+ (+ -1s 0s:view_wview) 20s))
    self.undynetimer = 0s
    self.finaltimer = 0s
    self.mkidtalk = 0s
    self.charge = 0s
    self.samex = 1570.x
0x00106C:
    if !(== self.con 35s) goto 0x001394
0x001080:
    self.ll = 0s
    self.finaltimer = (+ self.finaltimer 1s)
    self.undynetimer = (+ self.undynetimer 1s)
    if !(> self.undynetimer 60s) goto 0x001108
0x0010D0:
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
0x001108:
    if !(> self.undynetimer 75s) goto 0x001158
0x00111C:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.undynetimer = 0s
0x001158:
    if !(> self.finaltimer 150s) goto 0x0011BC
0x00116C:
    if !(== global.interact 0s) goto 0x0011BC
0x001180:
    if !(== self.mkidtalk 0s) goto 0x0011BC
0x001194:
    push (< (abs[]:int32 (- 1570.x self.samex)) 10s)
    goto 0x0011C0
0x0011BC:
    push 0s
0x0011C0:
    if !pop goto 0x001200
0x0011C4:
    self.mkidtalk = 1s
    stog.msg[0s] = "\\W* Wh-what are you \\Ystanding&  around\\W for?&* \\YGet over here^1,\\W dude!/%%"
    call (scr_regulartext[]:int32 )
    global.interact = 1s
0x001200:
    if !(== self.mkidtalk 1s) goto 0x001230
0x001214:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001234
0x001230:
    push 0s
0x001234:
    if !pop goto 0x001250
0x001238:
    global.interact = 0s
    self.mkidtalk = 2s
0x001250:
    if !(> self.finaltimer 500s) goto 0x001270
0x001264:
    self.ll = 1s
0x001270:
    if !(< 1570.x (+ (int32 self.undyne):x 40s)) goto 0x0012B4
0x00129C:
    self.ll = 1s
    self.charge = 1s
0x0012B4:
    self.able = 0s
    if !(== self.ll 1s) goto 0x0012E8
0x0012D4:
    push (== global.interact 0s)
    goto 0x0012EC
0x0012E8:
    push 0s
0x0012EC:
    if !pop goto 0x0012FC
0x0012F0:
    self.able = 1s
0x0012FC:
    if !(== self.ll 1s) goto 0x001324
0x001310:
    push (== self.mkidtalk 1s)
    goto 0x001328
0x001324:
    push 0s
0x001328:
    if !pop goto 0x001338
0x00132C:
    self.able = 1s
0x001338:
    if !(== self.able 1s) goto 0x001394
0x00134C:
    pushenv 779s 0x001360
0x001354:
    call (instance_destroy[]:int32 )
0x001360:
    popenv 0x001354
0x001364:
    pushenv 782s 0x001378
0x00136C:
    call (instance_destroy[]:int32 )
0x001378:
    popenv 0x00136C
0x00137C:
    self.con = 50s
    global.interact = 1s
0x001394:
    if !(== self.con 50s) goto 0x001468
0x0013A8:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    stog.msg[0s] = "* I..^1.&* I'm slipping!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 51s
0x001468:
    if !(== self.con 51s) goto 0x001498
0x00147C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00149C
0x001498:
    push 0s
0x00149C:
    if !pop goto 0x0014E8
0x0014A0:
    push 0.5d
    stog.vspeed* = (int32 self.mkid)
    self.con = 50.1d
    stog.alarm[4s] = 20s
0x0014E8:
    if !(== self.con 51.1d) goto 0x001544
0x001504:
    push 0s
    stog.vspeed* = (int32 self.mkid)
    self.con = 50.2d
    stog.alarm[4s] = 30s
0x001544:
    if !(== self.con 51.2d) goto 0x0015E8
0x001560:
    self.blcon = (instance_create[]:int32 (var 1337s) (- (int32 self.undyne):y 15s) (+ (int32 self.undyne):x 10s))
    push 4s
    stog.vspeed* = (int32 self.mkid)
    self.con = 54s
    stog.alarm[4s] = 30s
0x0015E8:
    if !(== self.con 55s) goto 0x001654
0x0015FC:
    pushenv (int32 self.blcon) 0x001618
0x00160C:
    call (instance_destroy[]:int32 )
0x001618:
    popenv 0x00160C
0x00161C:
    push 1428s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 56s
    stog.alarm[4s] = 30s
0x001654:
    if !(== self.con 57s) goto 0x001724
0x001668:
    push 1429s
    stog.sprite_index* = (int32 self.undyne)
    call (snd_play[]:int32 (var 14s))
    push -8s
    stog.vspeed* = (int32 self.undyne)
    push 0.6d
    stog.gravity* = (int32 self.undyne)
    push 270s
    stog.gravity_direction* = (int32 self.undyne)
    push 0.5d
    stog.hspeed* = (int32 self.undyne)
    self.con = 58s
    stog.alarm[4s] = 20s
0x001724:
    if !(== self.con 59s) goto 0x00176C
0x001738:
    call (snd_play[]:int32 (var 12s))
    self.con = 60s
    stog.alarm[4s] = 90s
0x00176C:
    if !(== self.con 61s) goto 0x0017B4
0x001780:
    call (snd_play[]:int32 (var 16s))
    self.con = 62s
    stog.alarm[4s] = 20s
0x0017B4:
    if !(== self.con 63s) goto 0x0017FC
0x0017C8:
    call (snd_play[]:int32 (var 47s))
    self.con = 69s
    stog.alarm[4s] = 80s
0x0017FC:
    if !(== self.con 70s) goto 0x001968
0x001810:
    global.facing = 0s
    stog.msg[0s] = "* Undyne..^1. you saved me...?/"
    stog.msg[1s] = "* Yo^1, I thought I was a&  goner^1, haha.../"
    stog.msg[2s] = "* ... wait^1, are you okay^1?&* It looks like you fell&  pretty hard.../"
    stog.msg[3s] = "* Th-this is my fault^1.&* I should have stayed away from&  them^1, like you said./"
    stog.msg[4s] = "* They just stood there..^1.&* Watching..^1.&* Waiting for me to fall./"
    if !(== self.charge 1s) goto 0x0018C0
0x0018A8:
    stog.msg[4s] = "* They just went straight to&  fight you instead of&  helping me.../"
0x0018C0:
    stog.msg[5s] = "* I was so scared^1, and you.../"
    stog.msg[6s] = "* What^1?&* You're gonna go fight them&  now?/"
    stog.msg[7s] = "* But you look hurt..^1.&* You should rest^1, haha.../"
    stog.msg[8s] = "* .../"
    stog.msg[9s] = "* W-warriors don't rest^1, huh?/"
    stog.msg[10s] = "* Undyne..^1. you're really cool./%%"
    call (scr_regulartext[]:int32 )
    self.con = 71s
0x001968:
    if !(== self.con 71s) goto 0x001998
0x00197C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00199C
0x001998:
    push 0s
0x00199C:
    if !pop goto 0x0019C0
0x0019A0:
    stog.flag[98s] = 2s
    self.con = 72s
0x0019C0:
    if !(== self.con 72s) goto 0x0019F0
0x0019D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0019F4
0x0019F0:
    push 0s
0x0019F4:
    if !pop goto 0x001AFC
0x0019F8:
    self.con = 73s
    push 1570.x
    self.idealxview = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) (/ 1570.sprite_width (double 2s))))
    push self.idealxview
    if !(>= self.room_width (- -1s 0s:view_wview)) goto 0x001AAC
0x001A80:
    push self.room_width
    self.idealxview = (- (- -1s 0s:view_wview) 2s)
0x001AAC:
    push -1s
    if !(> 0s:view_xview self.idealxview) goto 0x001ADC
0x001ACC:
    self.xdir = 0s
    goto 0x001AE8
0x001ADC:
    self.xdir = 1s
0x001AE8:
    stog.alarm[4s] = 40s
0x001AFC:
    if !(== self.con 74s) goto 0x001C58
0x001B10:
    if !(== self.xdir 1s) goto 0x001B4C
0x001B24:
    push -1s
    stog.view_xview[(+ 0s:view_xview 4s)] = 0s
    goto 0x001B70
0x001B4C:
    push -1s
    stog.view_xview[(- 0s:view_xview 4s)] = 0s
0x001B70:
    push -1s
    if !(<= (abs[]:int32 (- 0s:view_xview self.idealxview)) 5s) goto 0x001C58
0x001BA0:
    pushenv (int32 self.mkid) 0x001BBC
0x001BB0:
    call (instance_destroy[]:int32 )
0x001BBC:
    popenv 0x001BB0
0x001BC0:
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 0s
    pushenv (int32 self.doora) 0x001BFC
0x001BF0:
    call (instance_destroy[]:int32 )
0x001BFC:
    popenv 0x001BF0
0x001C00:
    pushenv (int32 self.doorb) 0x001C1C
0x001C10:
    call (instance_destroy[]:int32 )
0x001C1C:
    popenv 0x001C10
0x001C20:
    global.plot = 120s
    call (caster_free[]:int32 global.currentsong)
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x001C58:
    if !(== self.con 80s) goto 0x001CB8
0x001C6C:
    pushenv (int32 self.interact) 0x001C88
0x001C7C:
    call (instance_destroy[]:int32 )
0x001C88:
    popenv 0x001C7C
0x001C8C:
    global.interact = 1s
    self.con = 81s
    stog.alarm[4s] = 30s
0x001CB8:
    if !(== self.con 82s) goto 0x001DF8
0x001CCC:
    push (int32 self.undyne):x
    if !(> -1s (+ 0s:view_xview 20s)) goto 0x001D38
0x001D00:
    push -1s
    stog.hspeed* = (int32 self.undyne)
    push 0.12d
    stog.image_speed* = (int32 self.undyne)
0x001D38:
    if !(<= (int32 self.mkid):x 1570.x) goto 0x001D7C
0x001D5C:
    push -0.8d
    stog.hspeed* = (int32 self.mkid)
0x001D7C:
    if !(> (int32 self.mkid):x 1570.x) goto 0x001DC0
0x001DA0:
    push 0.8d
    stog.hspeed* = (int32 self.mkid)
0x001DC0:
    push -1s
    stog.vspeed* = (int32 self.mkid)
    self.con = 83s
    stog.alarm[4s] = 28s
0x001DF8:
    if !(== self.con 84s) goto 0x001F7C
0x001E0C:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.mkid)
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push (round[]:int32 (int32 self.mkid):x)
    stog.x* = (int32 self.mkid)
    if !(> 1570.x (int32 self.mkid):x) goto 0x001F04
0x001ED8:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    goto 0x001F2C
0x001F04:
    push (int32 self.mkid):ltsprite
    stog.sprite_index* = (int32 self.mkid)
0x001F2C:
    push 0s
    stog.image_index* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    self.con = 85s
    stog.alarm[4s] = 40s
0x001F7C:
    if !(== self.con 86s) goto 0x002038
0x001F90:
    push 0.5d
    stog.hspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    self.blcon = (instance_create[]:int32 (var 1337s) (- (int32 self.mkid):y 10s) (int32 self.mkid):x)
    self.con = 87s
    stog.alarm[4s] = 16s
0x002038:
    if !(== self.con 88s) goto 0x0020FC
0x00204C:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    pushenv (int32 self.blcon) 0x0020B0
0x0020A4:
    call (instance_destroy[]:int32 )
0x0020B0:
    popenv 0x0020A4
0x0020B4:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 89s
    stog.alarm[4s] = 30s
0x0020FC:
    if !(== self.con 90s) goto 0x0021B0
0x002110:
    if !(> (int32 self.mkid):x 1570.x) goto 0x002150
0x002134:
    push -5s
    stog.hspeed* = (int32 self.mkid)
    goto 0x002170
0x002150:
    push -0.5d
    stog.hspeed* = (int32 self.mkid)
0x002170:
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    self.con = 91s
    stog.alarm[4s] = 10s
0x0021B0:
    if !(== self.con 92s) goto 0x002214
0x0021C4:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    self.con = 93s
    stog.alarm[4s] = 30s
0x002214:
    if !(== self.con 94s) goto 0x0022D0
0x002228:
    push (int32 self.mkid):ltsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    stog.msg[0s] = "* Y..^1. y..^1. yo..^1. dude.../"
    stog.msg[1s] = "* If..^1. If y^1-you wanna hurt&  my friend.../"
    stog.msg[2s] = "* You're gonna have to get&  through me^1, first./%%"
    call (scr_regulartext[]:int32 )
    self.con = 95s
0x0022D0:
    if !(== self.con 95s) goto 0x002300
0x0022E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002304
0x002300:
    push 0s
0x002304:
    if !pop goto 0x002328
0x002308:
    self.con = 96s
    stog.alarm[4s] = 30s
0x002328:
    if !(== self.con 97s) goto 0x0023E4
0x00233C:
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    push -0.5d
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 98s
    stog.alarm[4s] = 20s
0x0023E4:
    if !(== self.con 99s) goto 0x002468
0x0023F8:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 98.1d
    stog.alarm[4s] = 30s
0x002468:
    if !(== self.con 99.1d) goto 0x002504
0x002484:
    push -0.5d
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 98.2d
    stog.alarm[4s] = 20s
0x002504:
    if !(== self.con 99.2d) goto 0x002588
0x002520:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 100s
    stog.alarm[4s] = 60s
0x002588:
    if !(== self.con 101s) goto 0x00261C
0x00259C:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
    push -2s
    stog.hspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    self.con = 102s
    stog.alarm[4s] = 90s
0x00261C:
    if !(== self.con 103s) goto 0x002698
0x002630:
    pushenv (int32 self.undyne) 0x00264C
0x002640:
    call (instance_destroy[]:int32 )
0x00264C:
    popenv 0x002640
0x002650:
    self.con = 104s
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    stog.alarm[4s] = 30s
0x002698:
    if !(== self.con 105s) goto 0x002754
0x0026AC:
    stog.msg[0s] = "* She's gone.../"
    stog.msg[1s] = "* Yo^1, you really saved my skin./"
    stog.msg[2s] = "* Guess being enemies was just&  a nice thought^1, haha./"
    stog.msg[3s] = "* We'll just have to be friends&  instead./"
    stog.msg[4s] = "* ... man^1, I should REALLY go&  home.../"
    stog.msg[5s] = "* I bet my parents are worried&  sick about me!/%%"
    self.con = 106s
    call (scr_regulartext[]:int32 )
0x002754:
    if !(== self.con 106s) goto 0x002784
0x002768:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002788
0x002784:
    push 0s
0x002788:
    if !pop goto 0x0027AC
0x00278C:
    self.con = 107s
    stog.alarm[4s] = 20s
0x0027AC:
    if !(== self.con 108s) goto 0x002840
0x0027C0:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    push -1s
    stog.hspeed* = (int32 self.mkid)
    self.con = 109s
    stog.alarm[4s] = 30s
0x002840:
    if !(== self.con 110s) goto 0x0028BC
0x002854:
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    self.con = 111s
    stog.alarm[4s] = 30s
0x0028BC:
    if !(== self.con 112s) goto 0x002918
0x0028D0:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 113s
    stog.alarm[4s] = 30s
0x002918:
    if !(== self.con 114s) goto 0x00295C
0x00292C:
    stog.msg[0s] = "* Later^1, dude!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 115s
0x00295C:
    if !(== self.con 115s) goto 0x00298C
0x002970:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002990
0x00298C:
    push 0s
0x002990:
    if !pop goto 0x002AA0
0x002994:
    push -4s
    stog.hspeed* = (int32 self.mkid)
    push 0.5d
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 116s
    push 1570.x
    self.idealxview = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) (/ 1570.sprite_width (double 2s))))
    push -1s
    if !(> 0s:view_xview self.idealxview) goto 0x002A80
0x002A70:
    self.xdir = 0s
    goto 0x002A8C
0x002A80:
    self.xdir = 1s
0x002A8C:
    stog.alarm[4s] = 40s
0x002AA0:
    if !(== self.con 117s) goto 0x002C10
0x002AB4:
    if !(== self.xdir 1s) goto 0x002AF0
0x002AC8:
    push -1s
    stog.view_xview[(+ 0s:view_xview 2s)] = 0s
    goto 0x002B14
0x002AF0:
    push -1s
    stog.view_xview[(- 0s:view_xview 2s)] = 0s
0x002B14:
    push -1s
    if !(<= (abs[]:int32 (- 0s:view_xview self.idealxview)) 2s) goto 0x002C10
0x002B44:
    pushenv (int32 self.mkid) 0x002B60
0x002B54:
    call (instance_destroy[]:int32 )
0x002B60:
    popenv 0x002B54
0x002B64:
    stog.view_object[0s] = 1570s
    [obj_mainchara].cutscene = 0s
    pushenv (int32 self.doora) 0x002BA0
0x002B94:
    call (instance_destroy[]:int32 )
0x002BA0:
    popenv 0x002B94
0x002BA4:
    pushenv (int32 self.doorb) 0x002BC0
0x002BB4:
    call (instance_destroy[]:int32 )
0x002BC0:
    popenv 0x002BB4
0x002BC4:
    global.plot = 120s
    stog.flag[98s] = 1s
    call (caster_free[]:int32 global.currentsong)
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x002C10:
    if !(== self.con 150s) goto 0x002C40
0x002C24:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x002C44
0x002C40:
    push 0s
0x002C44:
    if !pop goto 0x002C68
0x002C48:
    if !(== 782.stringno 6s) goto 0x002C68
0x002C5C:
    global.facing = 2s
0x002C68:
    if !(== self.con 150s) goto 0x002C98
0x002C7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002C9C
0x002C98:
    push 0s
0x002C9C:
    if !pop goto 0x002CF8
0x002CA0:
    global.facing = 3s
    [obj_mainchara].hspeed = -2s
    [obj_mainchara].moving = 1s
    [obj_mainchara].image_speed = 0.25d
    self.con = 151s
    stog.alarm[4s] = 5s
0x002CF8:
    if !(== self.con 152s) goto 0x002D7C
0x002D0C:
    push -2s
    stog.hspeed* = (int32 self.mkid)
    push 1397s
    stog.sprite_index* = (int32 self.mkid)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    self.con = 153s
    stog.alarm[4s] = 10s
0x002D7C:
    if !(== self.con 154s) goto 0x002E1C
0x002D90:
    [obj_mainchara].hspeed = 0s
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    push 1399s
    stog.sprite_index* = (int32 self.mkid)
    self.con = 155s
    stog.alarm[4s] = 30s
0x002E1C:
    if !(== self.con 156s) goto 0x002F5C
0x002E30:
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    stog.msg[0s] = "* Oh..^1.&* Oh man.../"
    stog.msg[1s] = "* (Man^1, my h-heart's pounding&  right out of my chest...)/"
    stog.msg[2s] = "* (... what would Undyne do?)/"
    stog.msg[3s] = "* (...)/"
    stog.msg[4s] = "* Yo.../"
    stog.msg[5s] = "* Y-you'd b-better st-stop&  r-right where you are.../"
    stog.msg[6s] = "* Cause if you w-wanna hurt&  anyone else..^1. you're.../"
    stog.msg[7s] = "* You're gonna have to get&  through me^1, first./"
    stog.msg[8s] = "* A..^1. and..^1. and..^1.%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 157s
0x002F5C:
    if !(== self.con 157s) goto 0x002F88
0x002F70:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x002F8C
0x002F88:
    push 0s
0x002F8C:
    if !pop goto 0x002FE8
0x002F90:
    if !(== 782.stringno 1s) goto 0x002FBC
0x002FA4:
    push 1396s
    stog.sprite_index* = (int32 self.mkid)
0x002FBC:
    if !(== 782.stringno 4s) goto 0x002FE8
0x002FD0:
    push 1399s
    stog.sprite_index* = (int32 self.mkid)
0x002FE8:
    if !(== self.con 157s) goto 0x003018
0x002FFC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00301C
0x003018:
    push 0s
0x00301C:
    if !pop goto 0x0030A0
0x003020:
    push 1399s
    stog.sprite_index* = (int32 self.mkid)
    global.battlegroup = 91s
    global.seriousbattle = 1s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 158s
    stog.alarm[4s] = 32s
0x0030A0:
    if !(== self.con 159s) goto 0x0030F8
0x0030B4:
    global.seriousbattle = 0s
    global.mercy = 0s
    global.interact = 1s
    self.con = 160s
    stog.alarm[4s] = 30s
0x0030F8:
    if !(== self.con 160s) goto 0x0031C8
0x00310C:
    [obj_mainchara].cutscene = 0s
    stog.view_object[0s] = 1570s
    self.con = 160.1d
    global.interact = 1s
    stog.alarm[4s] = 30s
    push -5s
    if !(== 350s:flag 1s) goto 0x0031BC
0x00317C:
    pushenv (int32 self.mkid) 0x003198
0x00318C:
    call (instance_destroy[]:int32 )
0x003198:
    popenv 0x00318C
0x00319C:
    self.con = 170s
    stog.alarm[4s] = -1s
0x0031BC:
    global.interact = 1s
0x0031C8:
    if !(== self.con 160.1d) goto 0x0031F0
0x0031E4:
    global.interact = 1s
0x0031F0:
    if !(== self.con 161.1d) goto 0x00329C
0x00320C:
    global.interact = 1s
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = "* S-see^1?&* I knew y-you weren't so&  bad!/"
    stog.msg[1s] = "* I've gotta go tell Undyne&  she was wrong about you!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 162s
0x00329C:
    if !(== self.con 162s) goto 0x0032BC
0x0032B0:
    global.interact = 1s
0x0032BC:
    if !(== self.con 162s) goto 0x0032EC
0x0032D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0032F0
0x0032EC:
    push 0s
0x0032F0:
    if !pop goto 0x003374
0x0032F4:
    push -4s
    stog.hspeed* = (int32 self.mkid)
    push 0.5d
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 163s
    stog.alarm[4s] = 40s
0x003374:
    if !(== self.con 164s) goto 0x003394
0x003388:
    self.con = 170s
0x003394:
    if !(== self.con 170s) goto 0x0033F8
0x0033A8:
    global.facing = 0s
    global.interact = 0s
    if !(< global.plot 120s) goto 0x0033E0
0x0033D4:
    global.plot = 120s
0x0033E0:
    self.con = 171s
    call (instance_destroy[]:int32 )
0x0033F8:
    exit
