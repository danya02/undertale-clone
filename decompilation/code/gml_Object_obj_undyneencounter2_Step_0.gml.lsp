0x000000:
    if !(== self.active 1s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0012CC
0x000034:
    if !(== self.cn 0s) goto 0x0000E0
0x000048:
    call (instance_create[]:int32 (var 1045s) (var 0s) (var 0s))
    [obj_mainchara].x = (+ 1570.x 6s)
    self.sl1 = (instance_create[]:int32 (var 2s) (var 120s) (var 4s))
    self.sl2 = (instance_create[]:int32 (var 2s) (var 140s) (var 4s))
    self.cn = 1s
0x0000E0:
    if !(== self.cn 1s) goto 0x000108
0x0000F4:
    push (> 1570.x 460s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x000158
0x000110:
    if !(bool (instance_exists[]:int32 (var 1045s))) goto 0x000158
0x000128:
    pushenv 1045s 0x000154
0x000130:
    push -1s
    stog.alarm[(+ 0s:alarm 1s)] = 0s
0x000154:
    popenv 0x000130
0x000158:
    if !(== self.cn 1s) goto 0x000194
0x00016C:
    if !(> 1570.x 510s) goto 0x000194
0x000180:
    push (== global.interact 0s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x000240
0x00019C:
    global.interact = 1s
    if !(bool (instance_exists[]:int32 (var 1045s))) goto 0x0001D8
0x0001C0:
    pushenv 1045s 0x0001D4
0x0001C8:
    call (instance_destroy[]:int32 )
0x0001D4:
    popenv 0x0001C8
0x0001D8:
    self.m = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.m)
    self.cn = 2s
    stog.alarm[4s] = 90s
0x000240:
    if !(== self.cn 3s) goto 0x0002D8
0x000254:
    push 290s
    stog.x* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.1d
    stog.image_speed* = (int32 self.undyne)
    self.cn = 4s
0x0002D8:
    if !(== self.cn 4s) goto 0x00035C
0x0002EC:
    if !(> (int32 self.undyne):x 480s) goto 0x00035C
0x00030C:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.cn = 5s
    stog.alarm[4s] = 90s
0x00035C:
    if !(== self.cn 6s) goto 0x0003CC
0x000370:
    push 1s
    stog.fun* = (int32 self.undyne)
    push 1464s
    stog.sprite_index* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    self.cn = 7s
0x0003CC:
    if !(== self.cn 7s) goto 0x000438
0x0003E0:
    if !(== (int32 self.undyne):image_index 2s) goto 0x000438
0x000400:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.cn = 8s
    stog.alarm[4s] = 20s
0x000438:
    if !(== self.cn 9s) goto 0x000478
0x00044C:
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    self.cn = 10s
0x000478:
    if !(== self.cn 10s) goto 0x000530
0x00048C:
    if !(== (int32 self.undyne):image_index 2s) goto 0x0004C0
0x0004AC:
    call (snd_play[]:int32 (var 47s))
0x0004C0:
    if !(== (int32 self.undyne):image_index 5s) goto 0x000530
0x0004E0:
    push 1s
    stog.d* = (int32 self.undyne)
    self.cn = 11s
    push 0s
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 60s
0x000530:
    if !(== self.cn 12s) goto 0x0005A0
0x000544:
    push 2s
    stog.image_index* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    push 1465s
    stog.sprite_index* = (int32 self.undyne)
    self.cn = 13s
0x0005A0:
    if !(== self.cn 13s) goto 0x00060C
0x0005B4:
    if !(>= (int32 self.undyne):image_index 13s) goto 0x00060C
0x0005D4:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.cn = 14s
    stog.alarm[4s] = 120s
0x00060C:
    if !(== self.cn 15s) goto 0x000644
0x000620:
    push -1s
    stog.image_speed* = (int32 self.undyne)
    self.cn = 16s
0x000644:
    if !(== self.cn 16s) goto 0x000708
0x000658:
    if !(<= (int32 self.undyne):image_index 1s) goto 0x000708
0x000678:
    push 0s
    stog.d* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.cn = 17s
    stog.alarm[4s] = 30s
0x000708:
    if !(== self.cn 18s) goto 0x00073C
0x00071C:
    self.cn = 19s
    stog.alarm[4s] = 40s
0x00073C:
    if !(== self.cn 20s) goto 0x000770
0x000750:
    self.cn = 21s
    stog.alarm[4s] = 30s
0x000770:
    if !(== self.cn 22s) goto 0x0007F0
0x000784:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
    push -2s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    self.cn = 23s
0x0007F0:
    if !(== self.cn 23s) goto 0x000870
0x000804:
    if !(< (int32 self.undyne):x 300s) goto 0x000870
0x000824:
    pushenv (int32 self.undyne) 0x000840
0x000834:
    call (instance_destroy[]:int32 )
0x000840:
    popenv 0x000834
0x000844:
    self.cn = 24s
    global.interact = 0s
    stog.flag[17s] = 0s
0x000870:
    if !(== self.cn 24s) goto 0x000964
0x000884:
    if (bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (var 900s) (var 220s) (var 100s) (var 200s))) goto 0x000914
0x0008CC:
    push (bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (var 900s) (var 790s) (var 100s) (var 780s)))
    goto 0x000918
0x000914:
    push 1s
0x000918:
    if !pop goto 0x000964
0x00091C:
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/ambientwater.ogg"))
    global.interact = 1s
    self.cn = 25s
0x000964:
    if !(== self.cn 25s) goto 0x000A94
0x000978:
    if !(> 1570.y 120s) goto 0x0009B4
0x00098C:
    push 100s
    stog.y* = (int32 self.mkid)
    self.up = 0s
    goto 0x0009D8
0x0009B4:
    push 130s
    stog.y* = (int32 self.mkid)
    self.up = 1s
0x0009D8:
    if !(< 1570.x 400s) goto 0x000A3C
0x0009EC:
    self.left = 1s
    push -4s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    goto 0x000A88
0x000A3C:
    self.left = 0s
    push 4s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
0x000A88:
    self.cn = 27s
0x000A94:
    if !(== self.cn 27s) goto 0x000BA4
0x000AA8:
    if !(< (abs[]:int32 (- (int32 self.mkid):x 1570.x)) 45s) goto 0x000BA4
0x000ADC:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    self.cn = 28s
    if !(== self.left 1s) goto 0x000B3C
0x000B14:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
0x000B3C:
    if !(== self.left 0s) goto 0x000B78
0x000B50:
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
0x000B78:
    push 0s
    stog.image_index* = (int32 self.mkid)
    stog.alarm[4s] = 20s
0x000BA4:
    if !(== self.cn 29s) goto 0x000C40
0x000BB8:
    self.cn = 30s
    if !(== self.left 1s) goto 0x000C04
0x000BD8:
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    goto 0x000C2C
0x000C04:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
0x000C2C:
    stog.alarm[4s] = 20s
0x000C40:
    if !(== self.cn 31s) goto 0x000CEC
0x000C54:
    if !(== self.up 1s) goto 0x000C90
0x000C68:
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
0x000C90:
    if !(== self.up 0s) goto 0x000CCC
0x000CA4:
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
0x000CCC:
    self.cn = 32s
    stog.alarm[4s] = 20s
0x000CEC:
    if !(== self.cn 33s) goto 0x000F08
0x000D00:
    if !(== self.left 1s) goto 0x000D3C
0x000D14:
    push (int32 self.mkid):ltsprite
    stog.sprite_index* = (int32 self.mkid)
0x000D3C:
    if !(== self.left 0s) goto 0x000D78
0x000D50:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
0x000D78:
    push 3s
    stog.myinteract* = (int32 self.mkid)
    global.typer = 5s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* Yo..^1. did you see that!?/"
    stog.msg[1s] = "* Undyne just.../"
    stog.msg[2s] = "* ... TOUCHED ME!/"
    stog.msg[3s] = "* I'm never washing my face&  ever again...!/"
    stog.msg[4s] = "* Man^1, are you unlucky./"
    stog.msg[5s] = "* If you were standing just&  a LITTLE bit to the left...!/"
    stog.msg[6s] = "* Yo^1, don't worry^1!&* I'm sure we'll see her&  again!/%%"
    push -5s
    if !(== 284s:flag 1s) goto 0x000ED8
0x000E78:
    stog.msg[4s] = "* ... yo^1, did you notice^1?&* She seemed really mad&  about something!/"
    stog.msg[5s] = "* She looked liked she was&  gonna blast me to pieces!/"
    stog.msg[6s] = "* But..^1. sigh..^1.&* Then she decided to put&  me down.../"
    stog.msg[7s] = "* Yo^1!&* There's always next time^1,&  right^1? Let's go!/%%"
0x000ED8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.cn = 34s
0x000F08:
    if !(== self.cn 34s) goto 0x000F38
0x000F1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F3C
0x000F38:
    push 0s
0x000F3C:
    if !pop goto 0x00100C
0x000F40:
    push 6s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.myinteract* = (int32 self.mkid)
    push 0.3d
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.cn = 34.1d
    if !(== self.left 1s) goto 0x000FF8
0x000FE0:
    stog.alarm[4s] = 7s
    goto 0x00100C
0x000FF8:
    stog.alarm[4s] = 12s
0x00100C:
    if !(== self.cn 35.1d) goto 0x0010BC
0x001028:
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
    self.cn = 35.2d
0x0010BC:
    if !(== self.cn 35.2d) goto 0x001188
0x0010D8:
    if !(>= (int32 self.mkid):image_index 19s) goto 0x001188
0x0010F8:
    push 0s
    stog.image_index* = (int32 self.mkid)
    stog.x* = (+ (int32 self.mkid):x 13s)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.cn = 35.3d
    stog.alarm[4s] = 15s
0x001188:
    push (int32 self.mkid)
    if !(== self.cn 36.3d) goto 0x0011DC
0x0011A4:
    self.cn = 37s
    push 4s
    stog.hspeed* = (int32 self.mkid)
    stog.alarm[4s] = 30s
0x0011DC:
    if !(== self.cn 38s) goto 0x0012CC
0x0011F0:
    global.interact = 0s
    global.border = 0s
    stog.flag[15s] = 0s
    stog.flag[16s] = 0s
    call (SCR_BORDERSETUP[]:int32 )
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    self.cn = 37s
    global.plot = 110s
    call (instance_destroy[]:int32 )
    pushenv (int32 self.sl1) 0x0012A8
0x00129C:
    call (instance_destroy[]:int32 )
0x0012A8:
    popenv 0x00129C
0x0012AC:
    pushenv (int32 self.sl2) 0x0012C8
0x0012BC:
    call (instance_destroy[]:int32 )
0x0012C8:
    popenv 0x0012BC
0x0012CC:
    exit
