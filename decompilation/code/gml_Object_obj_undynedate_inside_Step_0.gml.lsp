0x000000:
    if !(== self.con 1s) goto 0x000020
0x000014:
    global.interact = 1s
0x000020:
    if !(== self.con 2s) goto 0x0000C4
0x000034:
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "HERE^1, UNDYNE./"
    stog.msg[1s] = "MY FRIEND BROUGHT&A GIFT FOR YOU^1,&ON THEIR OWN!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x0000C4:
    if !(== self.con 3s) goto 0x0000F4
0x0000D8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000190
0x0000FC:
    push 1338s
    stog.sprite_index* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    if !(>= (int32 self.papyrus):image_index 4s) goto 0x000190
0x000154:
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    push 4s
    stog.image_index* = (int32 self.papyrus)
    self.con = 4s
0x000190:
    if !(== self.con 4s) goto 0x00021C
0x0001A4:
    global.typer = 37s
    global.facechoice = 5s
    push 0s
    stog.fun* = (int32 self.undyne)
    stog.msg[0s] = "* Uhhh..^1. thanks./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 5s
0x00021C:
    if !(== self.con 5s) goto 0x00024C
0x000230:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000250
0x00024C:
    push 0s
0x000250:
    if !pop goto 0x0002EC
0x000254:
    push 3s
    stog.vspeed* = (int32 self.undyne)
    push 1s
    stog.fun* = (int32 self.undyne)
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    self.con = 6s
    stog.alarm[4s] = 15s
0x0002EC:
    if !(== self.con 7s) goto 0x000380
0x000300:
    push 5s
    stog.image_index* = (int32 self.papyrus)
    self.con = 6.1d
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    push -3s
    stog.vspeed* = (int32 self.undyne)
    stog.alarm[4s] = 15s
0x000380:
    if !(== self.con 7.1d) goto 0x0004AC
0x00039C:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    stog.msg[0s] = "* I'll^1, uh^1, put it&  with the others./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 10s
0x0004AC:
    if !(== self.con 10s) goto 0x0004DC
0x0004C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0004E0
0x0004DC:
    push 0s
0x0004E0:
    if !pop goto 0x000580
0x0004E4:
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    push -3s
    stog.vspeed* = (int32 self.undyne)
    stog.alarm[4s] = 15s
    self.con = 9.1d
    stog.alarm[4s] = 15s
0x000580:
    if !(== self.con 10.1d) goto 0x00063C
0x00059C:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    call (snd_play[]:int32 (var 106s))
    [obj_bonedrawer].drawerdown = 1s
    self.con = 9.2d
    stog.alarm[4s] = 18s
0x00063C:
    if !(== self.con 10.2d) goto 0x00068C
0x000658:
    [obj_bonedrawer].image_index = 1s
    self.con = 9.3d
    stog.alarm[4s] = 40s
0x00068C:
    if !(== self.con 10.3d) goto 0x0006F0
0x0006A8:
    self.con = 9.4d
    call (snd_play[]:int32 (var 106s))
    [obj_bonedrawer].drawerdown = 3s
    stog.alarm[4s] = 25s
0x0006F0:
    if !(== self.con 10.4d) goto 0x000794
0x00070C:
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
    push 3s
    stog.vspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 15s
    self.con = 9.5d
0x000794:
    if !(== self.con 10.5d) goto 0x000874
0x0007B0:
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    global.typer = 37s
    stog.msg[0s] = "* So are we ready&  to start?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 12s
0x000874:
    if !(== self.con 12s) goto 0x0008A4
0x000888:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0008A8
0x0008A4:
    push 0s
0x0008A8:
    if !pop goto 0x0009B0
0x0008AC:
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 3s
    stog.msg[0s] = "WHOOPSY DOOPSY^1!&I JUST REMEMBERED!/"
    stog.msg[1s] = "I HAVE TO GO&TO THE BATHROOM!!/"
    stog.msg[2s] = "\\E0YOU TWO HAVE&FUN!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
    pushenv (int32 self.papyrus) 0x0009AC
0x000980:
    call (scr_getideal[]:int32 (+ 1068.y 10s) (+ 1068.x 63s))
0x0009AC:
    popenv 0x000980
0x0009B0:
    if !(== self.con 13s) goto 0x0009E0
0x0009C4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0009E4
0x0009E0:
    push 0s
0x0009E4:
    if !pop goto 0x000A08
0x0009E8:
    stog.alarm[4s] = 10s
    self.con = 14s
0x000A08:
    if !(== self.con 14s) goto 0x000A8C
0x000A1C:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    pushenv (int32 self.papyrus) 0x000A88
0x000A74:
    call (scr_moveideal[]:int32 (var 14s))
0x000A88:
    popenv 0x000A74
0x000A8C:
    if !(== self.con 15s) goto 0x000B74
0x000AA0:
    global.facing = 3s
    push (int32 self.undyne):ltsprite
    stog.sprite_index* = (int32 self.undyne)
    self.papyrus2 = (instance_create[]:int32 (var 1071s) (+ (int32 self.papyrus):y 42s) (+ (int32 self.papyrus):x 10s))
    pushenv (int32 self.papyrus) 0x000B40
0x000B34:
    call (instance_destroy[]:int32 )
0x000B40:
    popenv 0x000B34
0x000B44:
    self.papyrus = self.papyrus2
    self.con = 16s
    stog.alarm[4s] = 90s
0x000B74:
    if !(== self.con 17s) goto 0x000BDC
0x000B88:
    global.facing = 2s
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 18s
    stog.alarm[4s] = 60s
0x000BDC:
    if !(== self.con 19s) goto 0x000C44
0x000BF0:
    global.msc = 703s
    global.typer = 37s
    global.facechoice = 5s
    self.con = 20s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000C44:
    if !(== self.con 40s) goto 0x000C74
0x000C58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C78
0x000C74:
    push 0s
0x000C78:
    if !pop goto 0x000D64
0x000C7C:
    pushenv (int32 self.papyrus) 0x000C98
0x000C8C:
    call (instance_destroy[]:int32 )
0x000C98:
    popenv 0x000C8C
0x000C9C:
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 150s) (var -30s))
    push 900000
    stog.depth* = (int32 self.papyrus)
    push 1s
    stog.d* = (int32 self.papyrus)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 4s
    stog.hspeed* = (int32 self.papyrus)
    self.con = 41s
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
0x000D64:
    if !(== self.con 41s) goto 0x000DE8
0x000D78:
    if !(> (int32 self.papyrus):x 10s) goto 0x000DE8
0x000D98:
    push 0s
    stog.hspeed* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.con = 42s
    stog.alarm[4s] = 20s
0x000DE8:
    if !(== self.con 43s) goto 0x000F08
0x000DFC:
    global.facing = 3s
    push (int32 self.undyne):ltsprite
    stog.sprite_index* = (int32 self.undyne)
    global.facechoice = 4s
    global.faceemotion = 1s
    global.msc = 0s
    global.typer = 19s
    stog.msg[0s] = "DANG^1!&WHAT A SHAME.../"
    stog.msg[1s] = "\\E2I THOUGHT UNDYNE&COULD BE FRIENDS&WITH YOU./"
    stog.msg[2s] = "\\E3BUT I GUESS.../"
    stog.msg[3s] = "\\E3I OVERESTIMATED&HER./"
    stog.msg[4s] = "\\E3SHE'S JUST NOT&UP TO THE&CHALLENGE./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 44s
0x000F08:
    if !(== self.con 44s) goto 0x000F38
0x000F1C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F3C
0x000F38:
    push 0s
0x000F3C:
    if !pop goto 0x000FDC
0x000F40:
    self.con = 45s
    push -2s
    stog.hspeed* = (int32 self.papyrus)
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 1s
    stog.msg[0s] = "* CHALLENGE!^1?&* What!?/"
    stog.msg[1s] = "\\E0* Papyrus^1!&* Wait a second...!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000FDC:
    if !(== self.con 45s) goto 0x001018
0x000FF0:
    stog.image_angle* = (- (int32 self.papyrus):image_angle 6s)
0x001018:
    push (int32 self.papyrus)
    if !(== self.con 45s) goto 0x001048
0x00102C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00104C
0x001048:
    push 0s
0x00104C:
    if !pop goto 0x001210
0x001050:
    global.faceemotion = 1s
    global.facing = 2s
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    stog.msg[0s] = "* Darnit!/"
    stog.msg[1s] = "* He thinks I can't&  be friends with&  YOU!?/"
    stog.msg[2s] = "\\E6* Fuhuhu^1!&* What a joke!/"
    stog.msg[3s] = "* I could make friends&  with a wimpy loser&  like you any day!/"
    stog.msg[4s] = "\\E2* I'll show him!/"
    stog.msg[5s] = "\\E3* Listen up^1, human./"
    stog.msg[6s] = "\\E2* We're not just&  going to be&  friends./"
    stog.msg[7s] = "\\E3* We're going to&  be.../"
    stog.msg[8s] = "\\M1* BESTIES./"
    stog.msg[9s] = "* I'll make you&  like me so much.../"
    stog.msg[10s] = "\\E1* You won't be able&  to think of anyone&  else!!!/"
    stog.msg[11s] = "\\E3* Fuhuhuhu^1!&* It's the PERFECT&  REVENGE!!/"
    stog.msg[12s] = "* .../"
    stog.msg[13s] = "\\E9* Why don't you&  have a seat?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 50s
0x001210:
    if !(== self.con 50s) goto 0x001240
0x001224:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001244
0x001240:
    push 0s
0x001244:
    if !pop goto 0x00135C
0x001248:
    self.undyne2 = (instance_create[]:int32 (var 1358s) (int32 self.undyne):y (int32 self.undyne):x)
    push 1408s
    stog.sprite_index* = (int32 self.undyne2)
    pushenv (int32 self.undyne) 0x0012BC
0x0012B0:
    call (instance_destroy[]:int32 )
0x0012BC:
    popenv 0x0012B0
0x0012C0:
    self.undyne = self.undyne2
    stog.flag[20s] = 0s
    global.interact = 0s
    pushenv (int32 self.papyrus) 0x00130C
0x001300:
    call (instance_destroy[]:int32 )
0x00130C:
    popenv 0x001300
0x001310:
    self.con = 51s
    global.currentsong = (caster_load[]:int32 (var "music/date.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x00135C:
    if !(== self.con 51s) goto 0x001454
0x001370:
    if !(> 1570.y 200s) goto 0x001398
0x001384:
    push (== global.interact 0s)
    goto 0x00139C
0x001398:
    push 0s
0x00139C:
    if !pop goto 0x001454
0x0013A0:
    global.facing = 2s
    global.msc = 0s
    [obj_mainchara].y = 196s
    global.interact = 1s
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 9s
    stog.msg[0s] = "* Oh^1, leaving so soon?/"
    stog.msg[1s] = "\\E3* No^1.&* No you're not./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 52s
0x001454:
    if !(== self.con 52s) goto 0x001480
0x001468:
    global.facing = 2s
    [obj_mainchara].y = 196s
0x001480:
    if !(== self.con 52s) goto 0x0014B0
0x001494:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0014B4
0x0014B0:
    push 0s
0x0014B4:
    if !pop goto 0x0014D0
0x0014B8:
    self.con = 51s
    global.interact = 0s
0x0014D0:
    if !(== self.con 60s) goto 0x001514
0x0014E4:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x001514
0x001500:
    push (== global.interact 0s)
    goto 0x001518
0x001514:
    push 0s
0x001518:
    if !pop goto 0x001628
0x00151C:
    global.interact = 1s
    self.chair = (scr_marker[]:int32 1352.sprite_index 1352.y 1352.x)
    push 500000
    stog.depth* = (int32 self.chair)
    pushenv 1352s 0x001580
0x001574:
    call (instance_destroy[]:int32 )
0x001580:
    popenv 0x001574
0x001584:
    self.con = 61s
    stog.alarm[4s] = 12s
    global.facing = 2s
    [obj_mainchara].chair = self.chair
    global.phasing = 1s
    pushenv 1570s 0x001610
0x0015D4:
    call (scr_getideal[]:int32 (- (int32 self.chair):y 20s) (int32 self.chair):x)
0x001610:
    popenv 0x0015D4
0x001614:
    [obj_mainchara].image_speed = 0.25d
0x001628:
    if !(== self.con 61s) goto 0x00165C
0x00163C:
    pushenv 1570s 0x001658
0x001644:
    call (scr_moveideal[]:int32 (var 12s))
0x001658:
    popenv 0x001644
0x00165C:
    if !(== self.con 62s) goto 0x00169C
0x001670:
    [obj_mainchara].image_speed = 0s
    self.con = 63s
    stog.alarm[4s] = 20s
0x00169C:
    if !(== self.con 64s) goto 0x00174C
0x0016B0:
    global.msc = 0s
    global.interact = 1s
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 9s
    stog.msg[0s] = "* Comfortable?/"
    stog.msg[1s] = "* I'll get you&  something to drink./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 65s
0x00174C:
    if !(== self.con 65s) goto 0x00177C
0x001760:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001780
0x00177C:
    push 0s
0x001780:
    if !pop goto 0x001844
0x001784:
    self.undyne2 = (instance_create[]:int32 (var 1061s) (int32 self.undyne):y (int32 self.undyne):x)
    pushenv (int32 self.undyne) 0x0017E0
0x0017D4:
    call (instance_destroy[]:int32 )
0x0017E0:
    popenv 0x0017D4
0x0017E4:
    self.undyne = self.undyne2
    push -3s
    stog.vspeed* = (int32 self.undyne)
    push 1s
    stog.npcdir* = (int32 self.undyne)
    self.con = 66s
    stog.alarm[4s] = 13s
0x001844:
    if !(== self.con 67s) goto 0x0018A8
0x001858:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    self.con = 68s
    stog.alarm[4s] = 37s
0x0018A8:
    if !(== self.con 69s) goto 0x001970
0x0018BC:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 70s
    stog.alarm[4s] = 30s
    self.again = 0s
0x001970:
    if !(== self.con 71s) goto 0x0019D4
0x001984:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push -3s
    stog.hspeed* = (int32 self.undyne)
    stog.alarm[4s] = 11s
    self.con = 72s
0x0019D4:
    if !(== self.con 73s) goto 0x001B80
0x0019E8:
    pushenv (int32 self.undyne) 0x001A10
0x0019F8:
    call (scr_npc_halt[]:int32 (var "u"))
0x001A10:
    popenv 0x0019F8
0x001A14:
    self.g = (scr_marker[]:int32 (var 1286s) (int32 self.undyne):y (int32 self.undyne):x)
    push 500000
    stog.depth* = (int32 self.g)
    if !(== self.again 0s) goto 0x001AAC
0x001A84:
    push 1514s
    stog.sprite_index* = (int32 self.g)
    self.teabox = self.g
0x001AAC:
    if !(== self.again 1s) goto 0x001AE8
0x001AC0:
    push 1503s
    stog.sprite_index* = (int32 self.g)
    self.hotchocolate = self.g
0x001AE8:
    if !(== self.again 2s) goto 0x001B24
0x001AFC:
    push 1504s
    stog.sprite_index* = (int32 self.g)
    self.soda = self.g
0x001B24:
    if !(== self.again 3s) goto 0x001B60
0x001B38:
    push 1515s
    stog.sprite_index* = (int32 self.g)
    self.sugar = self.g
0x001B60:
    self.con = 74s
    stog.alarm[4s] = 20s
0x001B80:
    if !(== self.con 75s) goto 0x001BDC
0x001B94:
    if !(< self.again 3s) goto 0x001BB8
0x001BA8:
    self.con = 71s
    goto 0x001BC4
0x001BB8:
    self.con = 76s
0x001BC4:
    self.again = (+ self.again 1s)
0x001BDC:
    if !(== self.con 76s) goto 0x001C40
0x001BF0:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push -3s
    stog.hspeed* = (int32 self.undyne)
    self.con = 77s
    stog.alarm[4s] = 5s
0x001C40:
    if !(== self.con 78s) goto 0x001CA4
0x001C54:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 3s
    stog.vspeed* = (int32 self.undyne)
    self.con = 79s
    stog.alarm[4s] = 14s
0x001CA4:
    if !(== self.con 80s) goto 0x001D58
0x001CB8:
    stog.flag[20s] = 5s
    push 0s
    stog.vspeed* = (int32 self.undyne)
    pushenv (int32 self.undyne) 0x001D0C
0x001CF4:
    call (scr_npc_halt[]:int32 (var "d"))
0x001D0C:
    popenv 0x001CF4
0x001D10:
    stog.msg[0s] = "* All set^1!&* What would you like?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 81s
0x001D58:
    if !(== self.con 81s) goto 0x001D88
0x001D6C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001D8C
0x001D88:
    push 0s
0x001D8C:
    if !pop goto 0x001DDC
0x001D90:
    self.con = 82s
    self.mcxp = 1570.x
    self.mcyp = 1570.y
    global.interact = 0s
    stog.flag[17s] = 1s
0x001DDC:
    if !(== self.con 82s) goto 0x001F38
0x001DF0:
    if (!= 1570.x self.mcxp) goto 0x001E20
0x001E08:
    push (!= 1570.y self.mcyp)
    goto 0x001E24
0x001E20:
    push 1s
0x001E24:
    if !pop goto 0x001F38
0x001E28:
    call (caster_pause[]:int32 global.currentsong)
    stog.flag[17s] = 0s
    global.interact = 1s
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    [obj_mainchara].x = self.mcxp
    [obj_mainchara].y = self.mcyp
    push 0s
    stog.visible* = (int32 self.undyne)
    pushenv (int32 self.table) 0x001ED4
0x001EC4:
    self.depth = 300000
0x001ED4:
    popenv 0x001EC4
0x001ED8:
    self.tspear = (instance_create[]:int32 (var 1069s) (int32 self.undyne):y (int32 self.undyne):x)
    self.con = 83s
    stog.alarm[4s] = 60s
0x001F38:
    if !(== self.con 84s) goto 0x002078
0x001F4C:
    global.interact = 1s
    global.facing = 2s
    pushenv (int32 self.tspear) 0x001F80
0x001F74:
    call (instance_destroy[]:int32 )
0x001F80:
    popenv 0x001F74
0x001F84:
    push 1s
    stog.visible* = (int32 self.undyne)
    push 0s
    stog.npcdir* = (int32 self.undyne)
    push 1502s
    stog.sprite_index* = (int32 self.undyne)
    global.faceemotion = 1s
    global.facechoice = 5s
    stog.flag[390s] = 1s
    stog.msg[0s] = "* HEY!!^1!&* DON'T GET UP!!!/"
    stog.msg[1s] = "* YOU'RE THE GUEST!^1!&* SIT DOWN AND ENJOY&  YOURSELF!!!/"
    stog.msg[2s] = "* .../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 84.1d
0x002078:
    if !(== self.con 84.1d) goto 0x0020B0
0x002094:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0020B4
0x0020B0:
    push 0s
0x0020B4:
    if !pop goto 0x00212C
0x0020B8:
    call (caster_resume[]:int32 global.currentsong)
    stog.msg[0s] = "\\E9* Um^1, why not just&  point to what you&  want?/"
    stog.msg[1s] = "* You can use the&  spear!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 85s
0x00212C:
    if !(== self.con 85s) goto 0x00215C
0x002140:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002160
0x00215C:
    push 0s
0x002160:
    if !pop goto 0x00217C
0x002164:
    [obj_undynespear_anim1].part = 1s
    self.con = 86s
0x00217C:
    if !(== self.con 88s) goto 0x0021AC
0x002190:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0021B0
0x0021AC:
    push 0s
0x0021B0:
    if !pop goto 0x002200
0x0021B4:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    self.con = 88.1d
    stog.alarm[4s] = 15s
0x002200:
    if !(== self.con 89.1d) goto 0x002458
0x00221C:
    stog.flag[20s] = 0s
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    stog.msg[0s] = "\\E4* Y'know^1, I was a&  pretty hotheaded&  kid./"
    stog.msg[1s] = "* Once^1, to prove I was&  the strongest^1, I tried&  to fight ASGORE./"
    stog.msg[2s] = "\\E1* Emphasis on TRIED./"
    stog.msg[3s] = "\\E0* I couldn't land&  a single blow&  on him!/"
    stog.msg[4s] = "\\E4* And worse^1, the whole&  time^1, he refused&  to fight back!/"
    stog.msg[5s] = "\\E7* I was so&  humiliated.../"
    stog.msg[6s] = "\\E0* Afterwards^1, he&  apologized and said&  something goofy.../"
    stog.msg[7s] = "* \"Excuse me^1, do you&  want to know how&  to beat me?\"/"
    stog.msg[8s] = "\\E0* I said yes^1, and&  from then on^1, he&  trained me./"
    stog.msg[9s] = "\\E4* One day^1, during&  practice^1, I finally&  knocked him down./"
    stog.msg[10s] = "\\E7* I felt..^1. bad./"
    stog.msg[11s] = "\\E9* But he was&  beaming.../"
    stog.msg[12s] = "\\E6* I had never seen&  someone more proud to&  get their butt kicked./"
    stog.msg[13s] = "\\E1* ... oh!/"
    stog.msg[14s] = "\\E9* I almost forgot&  about your tea!/"
    stog.msg[15s] = "* Just a moment!/%%"
    global.currentsong = (caster_load[]:int32 (var "music/musicbox.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) global.currentsong)
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x002458:
    if !(== self.con 90s) goto 0x002488
0x00246C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00248C
0x002488:
    push 0s
0x00248C:
    if !pop goto 0x00257C
0x002490:
    push 1s
    stog.d* = (int32 self.undyne)
    push (+ (int32 self.table):depth 1s)
    stog.depth* = (int32 self.undyne)
    global.faceemotion = 0s
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0.25d
    stog.image_index* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 1s
    stog.npcdir* = (int32 self.undyne)
    self.con = 91s
    stog.alarm[4s] = 20s
0x00257C:
    if !(== self.con 92s) goto 0x002600
0x002590:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    pushenv (int32 self.undyne) 0x0025DC
0x0025C4:
    call (scr_npc_halt[]:int32 (var "r"))
0x0025DC:
    popenv 0x0025C4
0x0025E0:
    self.con = 93s
    stog.alarm[4s] = 60s
0x002600:
    if !(== self.con 94s) goto 0x00276C
0x002614:
    push 0s
    stog.d* = (int32 self.undyne)
    pushenv (int32 self.undyne) 0x002654
0x00263C:
    call (scr_npc_halt[]:int32 (var "d"))
0x002654:
    popenv 0x00263C
0x002658:
    pushenv (int32 self.undyne) 0x002674
0x002668:
    self.npcdir = 1s
0x002674:
    popenv 0x002668
0x002678:
    global.faceemotion = 1s
    global.msc = 0s
    global.facechoice = 5s
    global.typer = 37s
    stog.msg[0s] = "* Wait a second./"
    stog.msg[1s] = "* Papyrus..^1.&* His cooking lesson.../"
    stog.msg[2s] = "\\M2* HE WAS SUPPOSED&  TO HAVE THAT RIGHT&  NOW!!!/"
    stog.msg[3s] = "\\E3* And if HE's not&  here to have it.../"
    stog.msg[4s] = "\\E2* YOU'LL HAVE TO&  HAVE IT FOR HIM!!!/%%"
    self.ggg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.ggg)
    self.con = 95s
0x00276C:
    if !(== self.con 95s) goto 0x00279C
0x002780:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0027A0
0x00279C:
    push 0s
0x0027A0:
    if !pop goto 0x0028B8
0x0027A4:
    pushenv 92s 0x0027B8
0x0027AC:
    call (instance_destroy[]:int32 )
0x0027B8:
    popenv 0x0027AC
0x0027BC:
    call (caster_free[]:int32 (var -3s))
    stog.flag[20s] = 0s
    global.currentsong = (caster_load[]:int32 (var "music/undynetruetheme.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) global.currentsong)
    push 0s
    stog.npcdir* = (int32 self.undyne)
    push 1s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    push 1403s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 96s
0x0028B8:
    if !(== self.con 96s) goto 0x00295C
0x0028CC:
    if !(>= (int32 self.undyne):image_index 3s) goto 0x002904
0x0028EC:
    push -10s
    stog.vspeed* = (int32 self.undyne)
0x002904:
    if !(>= (int32 self.undyne):image_index 4s) goto 0x00295C
0x002924:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 97s
    stog.alarm[4s] = 30s
0x00295C:
    if !(== self.con 98s) goto 0x0029AC
0x002970:
    push 80s
    stog.x* = (int32 self.undyne)
    push 10s
    stog.vspeed* = (int32 self.undyne)
    self.con = 99s
0x0029AC:
    if !(== self.con 99s) goto 0x002DD0
0x0029C0:
    if !(>= (int32 self.undyne):y 5s) goto 0x002D78
0x0029E0:
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 10s
    stog.y* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 1s) (var 4s) (var 4s))
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.teabox2 = (instance_create[]:int32 (var 1072s) (int32 self.teabox):y (int32 self.teabox):x)
    push 1514s
    stog.sprite_index* = (int32 self.teabox2)
    push 1477s
    stog.breaksprite* = (int32 self.teabox2)
    push 1s
    stog.myh* = (int32 self.teabox2)
    push 4s
    stog.mya* = (int32 self.teabox2)
    pushenv (int32 self.teabox) 0x002B34
0x002B28:
    call (instance_destroy[]:int32 )
0x002B34:
    popenv 0x002B28
0x002B38:
    self.sugar2 = (instance_create[]:int32 (var 1072s) (int32 self.sugar):y (int32 self.sugar):x)
    push 1515s
    stog.sprite_index* = (int32 self.sugar2)
    push 1478s
    stog.breaksprite* = (int32 self.sugar2)
    push 3s
    stog.myh* = (int32 self.sugar2)
    pushenv (int32 self.sugar) 0x002BDC
0x002BD0:
    call (instance_destroy[]:int32 )
0x002BDC:
    popenv 0x002BD0
0x002BE0:
    self.soda2 = (instance_create[]:int32 (var 1072s) (int32 self.soda):y (int32 self.soda):x)
    push 1504s
    stog.sprite_index* = (int32 self.soda2)
    push 1479s
    stog.breaksprite* = (int32 self.soda2)
    push -4s
    stog.mya* = (int32 self.soda2)
    push -1s
    stog.myh* = (int32 self.soda2)
    push -2s
    stog.myv* = (int32 self.soda2)
    pushenv (int32 self.soda) 0x002CB4
0x002CA8:
    call (instance_destroy[]:int32 )
0x002CB4:
    popenv 0x002CA8
0x002CB8:
    self.hotchocolate2 = (instance_create[]:int32 (var 1072s) (int32 self.hotchocolate):y (int32 self.hotchocolate):x)
    push 1503s
    stog.sprite_index* = (int32 self.hotchocolate2)
    push 1503s
    stog.breaksprite* = (int32 self.hotchocolate2)
    push -1s
    stog.myh* = (int32 self.hotchocolate2)
    push 3s
    stog.mya* = (int32 self.hotchocolate2)
    pushenv (int32 self.hotchocolate) 0x002D74
0x002D68:
    call (instance_destroy[]:int32 )
0x002D74:
    popenv 0x002D68
0x002D78:
    if !(== (int32 self.undyne):image_index 0s) goto 0x002DD0
0x002D98:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 100s
    stog.alarm[4s] = 40s
0x002DD0:
    if !(== self.con 101s) goto 0x002E40
0x002DE4:
    push 1402s
    stog.sprite_index* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    push 5s
    stog.hspeed* = (int32 self.undyne)
    self.con = 102s
0x002E40:
    if !(== self.con 102s) goto 0x002ED0
0x002E54:
    if !(> (int32 self.undyne):x 180s) goto 0x002EA4
0x002E74:
    stog.hspeed* = (- (int32 self.undyne):hspeed 0.5d)
0x002EA4:
    push (int32 self.undyne)
    if !(== (int32 self.undyne):hspeed 0s) goto 0x002ED0
0x002EC4:
    self.con = 103s
0x002ED0:
    if !(== self.con 103s) goto 0x002FE0
0x002EE4:
    pushenv (int32 self.undyne) 0x002F0C
0x002EF4:
    call (scr_npc_halt[]:int32 (var "d"))
0x002F0C:
    popenv 0x002EF4
0x002F10:
    global.faceemotion = 0s
    stog.msg[0s] = "* That's right!!!/"
    stog.msg[1s] = "\\E1* NOTHING has brought&  Papyrus and I&  closer than cooking!/"
    stog.msg[2s] = "\\E3* Which means that if&  I give you his&  lesson.../"
    stog.msg[3s] = "\\E2* WE'LL BECOME CLOSER&  THAN YOU CAN&  EVER IMAGINE!!!/"
    stog.msg[4s] = "\\E6* Fuhuhu!!^1! Afraid!^1?&* We're gonna be best&  friends!!!/%%"
    self.de = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.de)
    self.con = 104s
0x002FE0:
    if !(== self.con 104s) goto 0x003010
0x002FF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003014
0x003010:
    push 0s
0x003014:
    if !pop goto 0x0030A4
0x003018:
    push 0s
    stog.npcdir* = (int32 self.undyne)
    push 1s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    push 1403s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 106s
0x0030A4:
    if !(== self.con 106s) goto 0x003148
0x0030B8:
    if !(>= (int32 self.undyne):image_index 3s) goto 0x0030F0
0x0030D8:
    push -15s
    stog.vspeed* = (int32 self.undyne)
0x0030F0:
    if !(>= (int32 self.undyne):image_index 4s) goto 0x003148
0x003110:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 107s
    stog.alarm[4s] = 7s
0x003148:
    if !(== self.con 108s) goto 0x0031A4
0x00315C:
    push (- 1570.x 18s)
    stog.x* = (int32 self.undyne)
    push 15s
    stog.vspeed* = (int32 self.undyne)
    self.con = 109s
0x0031A4:
    if !(== self.con 109s) goto 0x0032EC
0x0031B8:
    if !(>= (int32 self.undyne):y (- 1570.y 40s)) goto 0x003288
0x0031E4:
    push 0s
    stog.image_index* = (int32 self.undyne)
    push (- 1570.y 25s)
    stog.y* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 1s) (var 4s) (var 4s))
    push 0s
    stog.vspeed* = (int32 self.undyne)
0x003288:
    if !(== (int32 self.undyne):image_index 0s) goto 0x0032EC
0x0032A8:
    global.facing = 3s
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 110s
    stog.alarm[4s] = 15s
0x0032EC:
    if !(== self.con 111s) goto 0x003360
0x003300:
    push 0s
    stog.image_index* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 112s
    stog.alarm[4s] = 2s
0x003360:
    if !(== self.con 113s) goto 0x0033B8
0x003374:
    [obj_mainchara].visible = 0s
    push 1500s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 114s
    stog.alarm[4s] = 5s
0x0033B8:
    if !(== self.con 115s) goto 0x003478
0x0033CC:
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    if !(== (int32 self.undyne):image_index 2s) goto 0x003420
0x00340C:
    call (snd_play[]:int32 (var 47s))
0x003420:
    if !(>= (int32 self.undyne):image_index 5s) goto 0x003478
0x003440:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 116s
    stog.alarm[4s] = 6s
0x003478:
    if !(== self.con 117s) goto 0x0034C4
0x00348C:
    push 6s
    stog.image_index* = (int32 self.undyne)
    self.con = 118s
    stog.alarm[4s] = 10s
0x0034C4:
    if !(== self.con 119s) goto 0x00354C
0x0034D8:
    push 7s
    stog.image_index* = (int32 self.undyne)
    push -17s
    stog.vspeed* = (int32 self.undyne)
    push 1.2d
    stog.gravity* = (int32 self.undyne)
    self.con = 120s
    push 1s
    stog.hspeed* = (int32 self.undyne)
0x00354C:
    if !(== self.con 120s) goto 0x003678
0x003560:
    if !(> (int32 self.undyne):vspeed 1s) goto 0x0035A0
0x003580:
    push (> (int32 self.undyne):y 30s)
    goto 0x0035A4
0x0035A0:
    push 0s
0x0035A4:
    if !pop goto 0x003678
0x0035A8:
    push 35s
    stog.y* = (int32 self.undyne)
    push 0s
    stog.gravity* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 6s
    stog.image_index* = (int32 self.undyne)
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 1s) (var 4s) (var 4s))
    self.con = 121s
    stog.alarm[4s] = 15s
0x003678:
    if !(== self.con 122s) goto 0x00382C
0x00368C:
    push -0.5d
    stog.image_speed* = (int32 self.undyne)
    if !(== (int32 self.undyne):image_index 2s) goto 0x00370C
0x0036CC:
    global.facing = 2s
    call (snd_play[]:int32 (var 106s))
    push -0.05d
    stog.image_speed* = (int32 self.undyne)
0x00370C:
    if !(< (int32 self.undyne):image_index 1s) goto 0x00382C
0x00372C:
    stog.x* = (- (int32 self.undyne):x 2s)
    [obj_mainchara].x = (+ (int32 self.undyne):x 20s)
    [obj_mainchara].y = (+ (int32 self.undyne):y 24s)
    global.facing = 2s
    [obj_mainchara].visible = 1s
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 123s
    stog.alarm[4s] = 10s
0x00382C:
    push (int32 self.undyne)
    if !(== self.con 124s) goto 0x003934
0x003840:
    push (int32 self.undyne):rtsprite
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.direction* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 1s
    stog.npcdir* = (int32 self.undyne)
    global.facing = 3s
    global.faceemotion = 0s
    global.facechoice = 5s
    stog.msg[0s] = "* Ready!^1?&* It's spaghetti time!/"
    stog.msg[0s] = "* Let's start with the&  sauce!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 125s
0x003934:
    if !(== self.con 125s) goto 0x003964
0x003948:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003968
0x003964:
    push 0s
0x003968:
    if !pop goto 0x0039A4
0x00396C:
    push -2s
    stog.hspeed* = (int32 self.undyne)
    self.con = 126s
    stog.alarm[4s] = 5s
0x0039A4:
    if !(== self.con 127s) goto 0x003A48
0x0039B8:
    pushenv (int32 self.undyne) 0x0039E0
0x0039C8:
    call (scr_npc_halt[]:int32 (var "d"))
0x0039E0:
    popenv 0x0039C8
0x0039E4:
    pushenv (int32 self.undyne) 0x003A00
0x0039F4:
    self.fun = 1s
0x003A00:
    popenv 0x0039F4
0x003A04:
    push 1496s
    stog.sprite_index* = (int32 self.undyne)
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    self.con = 128s
0x003A48:
    if !(== self.con 128s) goto 0x003B54
0x003A5C:
    if !(== (int32 self.undyne):image_index 11s) goto 0x003AB4
0x003A7C:
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 1s) (var 3s) (var 3s))
0x003AB4:
    if !(>= (int32 self.undyne):image_index 12s) goto 0x003B54
0x003AD4:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.veg = (scr_marker[]:int32 (var 1499s) (var -20s) (var 195s))
    push 500000
    stog.depth* = (int32 self.veg)
    push 6s
    stog.vspeed* = (int32 self.veg)
    self.con = 129s
0x003B54:
    if !(== self.con 129s) goto 0x003C70
0x003B68:
    if !(>= (int32 self.veg):y 41s) goto 0x003C70
0x003B88:
    call (snd_play[]:int32 (var 106s))
    push 47s
    stog.y* = (int32 self.veg)
    push 0s
    stog.vspeed* = (int32 self.veg)
    pushenv (int32 self.undyne) 0x003BF4
0x003BDC:
    call (scr_npc_halt[]:int32 (var "r"))
0x003BF4:
    popenv 0x003BDC
0x003BF8:
    push (int32 self.undyne):rtsprite
    stog.sprite_index* = (int32 self.undyne)
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    self.con = 130s
    stog.alarm[4s] = 15s
0x003C70:
    if !(== self.con 131s) goto 0x003D18
0x003C84:
    push 0s
    stog.npcdir* = (int32 self.undyne)
    global.facing = 2s
    push (int32 self.undyne):rtsprite
    stog.sprite_index* = (int32 self.undyne)
    global.faceemotion = 0s
    global.msc = 710s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 132s
0x003D18:
    if !(== self.con 140s) goto 0x003D50
0x003D2C:
    push 1s
    stog.image_index* = (int32 self.veg)
    self.con = 141s
0x003D50:
    if !(== self.con 141s) goto 0x003D80
0x003D64:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x003D84
0x003D80:
    push 0s
0x003D84:
    if !pop goto 0x003DF0
0x003D88:
    global.facing = 2s
    push (int32 self.undyne):utsprite
    stog.sprite_index* = (int32 self.undyne)
    stog.flag[20s] = 0s
    self.con = 142s
    stog.alarm[4s] = 6s
0x003DF0:
    if !(== self.con 143s) goto 0x003E78
0x003E04:
    push 0s
    stog.npcdir* = (int32 self.undyne)
    push 1s
    stog.fun* = (int32 self.undyne)
    push 1498s
    stog.sprite_index* = (int32 self.undyne)
    push 0.334d
    stog.image_speed* = (int32 self.undyne)
    self.con = 144s
0x003E78:
    if !(== self.con 144s) goto 0x003EB8
0x003E8C:
    if !(>= (int32 self.undyne):image_index 7s) goto 0x003EB8
0x003EAC:
    self.con = 147s
0x003EB8:
    if !(== self.con 148s) goto 0x003F04
0x003ECC:
    push 2s
    stog.image_index* = (int32 self.veg)
    self.con = 149s
    stog.alarm[4s] = 70s
0x003F04:
    if !(== self.con 147s) goto 0x003F80
0x003F18:
    call (scr_shake[]:int32 (var 1s) (var 2s) (var 2s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (snd_play[]:int32 (var 14s))
    self.con = 148s
0x003F80:
    if !(== self.con 149s) goto 0x003FCC
0x003F94:
    if !(>= (int32 self.undyne):image_index 8s) goto 0x003FCC
0x003FB4:
    push 0s
    stog.image_speed* = (int32 self.undyne)
0x003FCC:
    if !(== self.con 150s) goto 0x00409C
0x003FE0:
    push 1418s
    stog.sprite_index* = (int32 self.undyne)
    [obj_mainchara].lsprite = 1032s
    global.faceemotion = 9s
    global.facing = 3s
    global.msc = 0s
    stog.flag[390s] = 2s
    stog.msg[0s] = "* Uhh^1, we'll just scrape&  this into a bowl&  later./"
    stog.msg[1s] = "\\E1* But for NOW!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 151s
0x00409C:
    if !(== self.con 151s) goto 0x0040CC
0x0040B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0040D0
0x0040CC:
    push 0s
0x0040D0:
    if !pop goto 0x004190
0x0040D4:
    stog.flag[390s] = 0s
    pushenv (int32 self.undyne) 0x004110
0x0040F8:
    call (scr_npc_halt[]:int32 (var "d"))
0x004110:
    popenv 0x0040F8
0x004114:
    pushenv (int32 self.undyne) 0x004130
0x004124:
    self.fun = 1s
0x004130:
    popenv 0x004124
0x004134:
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 1497s
    stog.sprite_index* = (int32 self.undyne)
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    self.con = 152s
0x004190:
    if !(== self.con 152s) goto 0x0042F8
0x0041A4:
    if !(== (int32 self.undyne):image_index 11s) goto 0x0041FC
0x0041C4:
    call (snd_play[]:int32 (var 21s))
    call (scr_shake[]:int32 (var 1s) (var 3s) (var 3s))
0x0041FC:
    if !(>= (int32 self.undyne):image_index 12s) goto 0x0042F8
0x00421C:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.pot = (scr_marker[]:int32 (var 1492s) (var -20s) (var 140s))
    push 6s
    stog.vspeed* = (int32 self.pot)
    push 500000
    stog.depth* = (int32 self.pot)
    self.box = (scr_marker[]:int32 (var 1491s) (var -20s) (var 160s))
    push 6s
    stog.vspeed* = (int32 self.box)
    push 500000
    stog.depth* = (int32 self.box)
    self.con = 154s
0x0042F8:
    if !(== self.con 154s) goto 0x00441C
0x00430C:
    if !(>= (int32 self.pot):y 38s) goto 0x00441C
0x00432C:
    call (snd_play[]:int32 (var 106s))
    push 44s
    stog.y* = (int32 self.pot)
    push 40s
    stog.y* = (int32 self.box)
    push 0s
    stog.vspeed* = (int32 self.pot)
    push 0s
    stog.vspeed* = (int32 self.box)
    pushenv (int32 self.undyne) 0x0043C8
0x0043B0:
    call (scr_npc_halt[]:int32 (var "d"))
0x0043C8:
    popenv 0x0043B0
0x0043CC:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    self.con = 155s
    stog.alarm[4s] = 10s
0x00441C:
    if !(== self.con 156s) goto 0x00444C
0x004430:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004450
0x00444C:
    push 0s
0x004450:
    if !pop goto 0x0044D0
0x004454:
    global.facing = 3s
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push -7s
    stog.hspeed* = (int32 self.undyne)
    [obj_mainchara].hspeed = -6s
    [obj_mainchara].image_speed = 0.334d
    stog.alarm[4s] = 10s
    self.con = 158s
0x0044D0:
    if !(== self.con 159s) goto 0x004560
0x0044E4:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_speed = 0s
    pushenv (int32 self.undyne) 0x00453C
0x004524:
    call (scr_npc_halt[]:int32 (var "u"))
0x00453C:
    popenv 0x004524
0x004540:
    self.con = 160s
    stog.alarm[4s] = 3s
0x004560:
    if !(== self.con 161s) goto 0x0045C8
0x004574:
    push (int32 self.undyne):utsprite
    stog.sprite_index* = (int32 self.undyne)
    global.facing = 2s
    self.con = 162s
    stog.alarm[4s] = 15s
0x0045C8:
    if !(== self.con 163s) goto 0x004618
0x0045DC:
    self.con = 164s
    global.msc = 712s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x004618:
    if !(== self.con 199s) goto 0x004658
0x00462C:
    pushenv (int32 self.box) 0x004648
0x00463C:
    self.visible = 0s
0x004648:
    popenv 0x00463C
0x00464C:
    self.con = 200s
0x004658:
    if !(== self.con 200s) goto 0x004688
0x00466C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00468C
0x004688:
    push 0s
0x00468C:
    if !pop goto 0x004780
0x004690:
    stog.flag[20s] = 0s
    global.msc = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Alright^1!&* Now it's time&  to stir the pasta!/"
    stog.msg[1s] = "* As a general rule&  of thumb^1, the more&  you stir.../"
    stog.msg[2s] = "\\E1* THE BETTER IT IS!/"
    stog.msg[3s] = "\\E0* Ready^1?&* Let's do it!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 201s
    push (int32 self.undyne):utsprite
    stog.sprite_index* = (int32 self.undyne)
    global.facing = 2s
0x004780:
    if !(== self.con 201s) goto 0x0047B0
0x004794:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0047B4
0x0047B0:
    push 0s
0x0047B4:
    if !pop goto 0x004808
0x0047B8:
    self.pp = (instance_create[]:int32 (var 1057s) (var 0s) (var 0s))
    push self.pot
    stog.pot* = (int32 self.pp)
    self.con = 202s
0x004808:
    if !(== self.con 210s) goto 0x004838
0x00481C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00483C
0x004838:
    push 0s
0x00483C:
    if !pop goto 0x004860
0x004840:
    self.con = 211s
    stog.alarm[4s] = 10s
0x004860:
    if !(== self.con 212s) goto 0x004934
0x004874:
    call (snd_play[]:int32 (var 20s))
    self.spear2 = (scr_marker[]:int32 (var 1449s) (var -35s) (+ (int32 self.pot):x 10s))
    push 270s
    stog.image_angle* = (int32 self.spear2)
    push 12s
    stog.vspeed* = (int32 self.spear2)
    push 900000
    stog.depth* = (int32 self.spear2)
    self.ssine = 0s
    self.con = 213s
    self.stab = 0s
0x004934:
    if !(== self.con 213s) goto 0x004C1C
0x004948:
    self.ssine = (+ self.ssine 1s)
    push (+ (int32 self.spear2):xstart (* (sin[]:int32 (/ self.ssine (double 3s))) 4s))
    stog.x* = (int32 self.spear2)
    if !(> (int32 self.spear2):vspeed 0s) goto 0x004A08
0x0049D0:
    push (> (int32 self.spear2):y (- (int32 self.pot):y 17s))
    goto 0x004A0C
0x004A08:
    push 0s
0x004A0C:
    if !pop goto 0x004B70
0x004A10:
    push -12s
    stog.vspeed* = (int32 self.spear2)
    call (snd_play[]:int32 (var 14s))
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x004A7C
0x004A58:
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
0x004A7C:
    self.stab = (+ self.stab 1s)
    if !(>= self.stab 2s) goto 0x004B70
0x004AA8:
    push 1493s
    stog.sprite_index* = (int32 self.pot)
    if !(< self.stab 5s) goto 0x004AEC
0x004AD4:
    push 0s
    stog.image_index* = (int32 self.pot)
0x004AEC:
    if !(== self.stab 5s) goto 0x004B18
0x004B00:
    push 1s
    stog.image_index* = (int32 self.pot)
0x004B18:
    if !(== self.stab 7s) goto 0x004B44
0x004B2C:
    push 2s
    stog.image_index* = (int32 self.pot)
0x004B44:
    if !(== self.stab 10s) goto 0x004B70
0x004B58:
    push 3s
    stog.image_index* = (int32 self.pot)
0x004B70:
    if !(< (int32 self.spear2):vspeed 0s) goto 0x004BC8
0x004B90:
    push (< (int32 self.spear2):y (- (int32 self.pot):y 50s))
    goto 0x004BCC
0x004BC8:
    push 0s
0x004BCC:
    if !pop goto 0x004BFC
0x004BD0:
    push 15s
    stog.vspeed* = (int32 self.spear2)
    call (snd_play[]:int32 (var 20s))
0x004BFC:
    if !(> self.stab 10s) goto 0x004C1C
0x004C10:
    self.con = 214s
0x004C1C:
    if !(== self.con 214s) goto 0x004CE0
0x004C30:
    push 0s
    stog.vspeed* = (int32 self.spear2)
    stog.image_alpha* = (- (int32 self.spear2):image_alpha 0.05d)
    if !(< (int32 self.spear2):image_alpha 0.08d) goto 0x004CE0
0x004CA0:
    push (int32 self.spear2)
    pushenv (int32 self.spear2) 0x004CBC
0x004CB0:
    call (instance_destroy[]:int32 )
0x004CBC:
    popenv 0x004CB0
0x004CC0:
    self.con = 215s
    stog.alarm[4s] = 20s
0x004CE0:
    if !(== self.con 216s) goto 0x004DD8
0x004CF4:
    global.facechoice = 5s
    global.msc = 0s
    global.faceemotion = 6s
    stog.msg[0s] = "\\M0* Fuhuhuhu^1!&* That's the stuff!/"
    stog.msg[1s] = "\\E0* Alright^1, now for&  the final step:/"
    stog.msg[2s] = "\\E1* TURN UP THE HEAT!/"
    stog.msg[3s] = "\\E0* Let the stovetop&  symbolize your&  passion!/"
    stog.msg[4s] = "\\E1* Let your hopes and&  dreams turn into&  burning fire!/"
    stog.msg[5s] = "\\E2* READY^1?&* Don't hold anything&  back!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 217s
0x004DD8:
    if !(== self.con 217s) goto 0x004E08
0x004DEC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004E0C
0x004E08:
    push 0s
0x004E0C:
    if !pop goto 0x004ED8
0x004E10:
    self.ph = (instance_create[]:int32 (var 1060s) (var 0s) (var 0s))
    self.pot2 = (instance_create[]:int32 (var 1059s) (+ (int32 self.pot):y 3s) (int32 self.pot):x)
    pushenv (int32 self.pot) 0x004E9C
0x004E90:
    call (instance_destroy[]:int32 )
0x004E9C:
    popenv 0x004E90
0x004EA0:
    self.pot = self.pot2
    push self.pot
    stog.pot* = (int32 self.ph)
    self.con = 218s
0x004ED8:
    if !(== self.con 250s) goto 0x004F08
0x004EEC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x004F0C
0x004F08:
    push 0s
0x004F0C:
    if !pop goto 0x004F80
0x004F10:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 44s))
    self.wht = (instance_create[]:int32 (var 113s) (var 0s) (var 0s))
    self.con = 251s
    stog.alarm[4s] = 40s
0x004F80:
    if !(== self.con 252s) goto 0x005098
0x004F94:
    push (var 1363s)
    self.blk = (instance_create[]:int32 (var -2s) -1s (- 0s:view_xview 2s))
    push (- (int32 self.wht):depth 2s)
    stog.depth* = (int32 self.blk)
    push 0s
    stog.image_alpha* = (int32 self.blk)
    push 1s
    stog.visible* = (int32 self.blk)
    push 0s
    stog.image_speed* = (int32 self.blk)
    push 996s
    stog.sprite_index* = (int32 self.blk)
    push 200s
    stog.image_xscale* = (int32 self.blk)
    push 200s
    stog.image_yscale* = (int32 self.blk)
    self.con = 253s
0x005098:
    if !(== self.con 253s) goto 0x00511C
0x0050AC:
    stog.image_alpha* = (+ (int32 self.blk):image_alpha 0.02d)
    if !(>= (int32 self.blk):image_alpha 1s) goto 0x00511C
0x0050FC:
    push (int32 self.blk)
    self.con = 254s
    stog.alarm[4s] = 60s
0x00511C:
    if !(== self.con 255s) goto 0x0054FC
0x005130:
    global.currentsong = (caster_load[]:int32 (var "music/deeploop2.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0s) global.currentsong)
    self.vol = 0s
    self.potb = (scr_marker[]:int32 (var 1494s) (+ (int32 self.pot):y 2s) (int32 self.pot):x)
    push 0.5d
    stog.image_speed* = (int32 self.potb)
    push 300000
    stog.depth* = (int32 self.potb)
    pushenv (int32 self.pot) 0x00521C
0x005210:
    call (instance_destroy[]:int32 )
0x00521C:
    popenv 0x005210
0x005220:
    stog.background_blend[0s] = 128s
    self.f = (scr_marker[]:int32 (var 1138s) (var 140s) (var 60s))
    push 0.6d
    stog.image_speed* = (int32 self.f)
    push 400000
    stog.depth* = (int32 self.f)
    self.f = (scr_marker[]:int32 (var 1138s) (var 40s) (var 80s))
    push 0.5d
    stog.image_speed* = (int32 self.f)
    push 400000
    stog.depth* = (int32 self.f)
    self.f = (scr_marker[]:int32 (var 1138s) (var 40s) (var 200s))
    push 0.4d
    stog.image_speed* = (int32 self.f)
    push 400000
    stog.depth* = (int32 self.f)
    self.f = (scr_marker[]:int32 (var 1138s) (var 100s) (var 220s))
    push 0.6d
    stog.image_speed* = (int32 self.f)
    push 400000
    stog.depth* = (int32 self.f)
    self.f = (scr_marker[]:int32 (var 1138s) (var 160s) (var 180s))
    push 0.7d
    stog.image_speed* = (int32 self.f)
    push 400000
    stog.depth* = (int32 self.f)
    push 128s
    stog.image_blend* = (int32 self.table)
    push 128s
    stog.image_blend* = (int32 self.piano)
    push 128s
    stog.image_blend* = (int32 self.sword)
    [obj_foodbreak].image_blend = 128s
    if !(bool (instance_exists[]:int32 (var 1062s))) goto 0x0054A0
0x005494:
    [obj_controlspear].image_blend = 128s
0x0054A0:
    [obj_undynewindow].image_blend = 128s
    [obj_undynewindow_foreground].image_blend = 128s
    [obj_glassshard].image_blend = 128s
    [obj_bonedrawer].image_blend = 128s
    pushenv (int32 self.wht) 0x0054EC
0x0054E0:
    call (instance_destroy[]:int32 )
0x0054EC:
    popenv 0x0054E0
0x0054F0:
    self.con = 256s
0x0054FC:
    if !(== self.con 256s) goto 0x0055D0
0x005510:
    self.vol = (+ self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    stog.image_alpha* = (- (int32 self.blk):image_alpha 0.02d)
    if !(< (int32 self.blk):image_alpha 0.03d) goto 0x0055D0
0x0055A4:
    push (int32 self.blk)
    pushenv (int32 self.blk) 0x0055C0
0x0055B4:
    call (instance_destroy[]:int32 )
0x0055C0:
    popenv 0x0055B4
0x0055C4:
    self.con = 257s
0x0055D0:
    if !(== self.con 257s) goto 0x005604
0x0055E4:
    self.con = 258s
    stog.alarm[4s] = 30s
0x005604:
    if !(== self.con 259s) goto 0x0056CC
0x005618:
    [obj_mainchara].lsprite = 1033s
    push 1419s
    stog.sprite_index* = (int32 self.undyne)
    global.facing = 3s
    global.facechoice = 5s
    global.msc = 0s
    global.faceemotion = 9s
    stog.msg[0s] = "* Ah./"
    stog.msg[1s] = "* Man^1, no wonder&  Papyrus sucks at&  cooking./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 260s
0x0056CC:
    if !(== self.con 260s) goto 0x0056FC
0x0056E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005700
0x0056FC:
    push 0s
0x005700:
    if !pop goto 0x005758
0x005704:
    push (int32 self.undyne):utsprite
    stog.sprite_index* = (int32 self.undyne)
    global.facing = 2s
    self.con = 261s
    stog.alarm[4s] = 120s
0x005758:
    if !(== self.con 262s) goto 0x005814
0x00576C:
    push 1419s
    stog.sprite_index* = (int32 self.undyne)
    global.facing = 3s
    global.facechoice = 5s
    global.msc = 0s
    global.faceemotion = 9s
    stog.msg[0s] = "* So what's next^1?&* Scrapbooking^1?&* Friendship bracelets?/"
    stog.msg[1s] = "* .../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 263s
0x005814:
    if !(== self.con 263s) goto 0x005844
0x005828:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005848
0x005844:
    push 0s
0x005848:
    if !pop goto 0x005960
0x00584C:
    push 1413s
    stog.sprite_index* = (int32 self.undyne)
    global.faceemotion = 7s
    stog.msg[0s] = "* ... oh^1, who am I&  kidding./"
    stog.msg[1s] = "* I really screwed this&  up^1, didn't I?/"
    stog.msg[2s] = "\\E4* I can't force you to&  like me^1, human./"
    stog.msg[3s] = "\\E4* Some people just&  don't get along&  with each other./"
    stog.msg[4s] = "\\E7* I understand if&  you feel that&  way about me./"
    stog.msg[5s] = "\\E4* And if we can't&  be friends.../"
    stog.msg[6s] = "\\E7* That's okay./"
    stog.msg[7s] = "\\E7* Because..^1.&* If we're not&  friends.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 264s
0x005960:
    if !(== self.con 264s) goto 0x005990
0x005974:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005994
0x005990:
    push 0s
0x005994:
    if !pop goto 0x0059F4
0x005998:
    call (caster_free[]:int32 (var -3s))
    stog.msg[0s] = "\\E2*\\M2 IT MEANS I CAN&  DESTROY YOU WITHOUT&  REGRET!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 265s
0x0059F4:
    if !(== self.con 265s) goto 0x005A24
0x005A08:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005A28
0x005A24:
    push 0s
0x005A28:
    if !pop goto 0x005A74
0x005A2C:
    global.mercy = 1s
    global.battlegroup = 58s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 266s
0x005A74:
    if !(== self.con 266s) goto 0x005AA4
0x005A88:
    push (== (instance_exists[]:int32 (var 142s)) 0s)
    goto 0x005AA8
0x005AA4:
    push 0s
0x005AA8:
    if !pop goto 0x005AD8
0x005AAC:
    self.con = 267s
    self.room_persistent = 0s
    stog.alarm[4s] = 2s
0x005AD8:
    if !(== self.con 268s) goto 0x005B4C
0x005AEC:
    self.room_persistent = 0s
    global.phasing = 0s
    stog.flag[17s] = 0s
    global.mercy = 0s
    call (snd_play[]:int32 (var 28s))
    call (room_goto[]:int32 (var 117s))
0x005B4C:
    if !(== self.con 300s) goto 0x005B7C
0x005B60:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x005B80
0x005B7C:
    push 0s
0x005B80:
    if !pop goto 0x005BD4
0x005B84:
    global.faceemotion = 0s
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    self.con = 301s
    stog.alarm[4s] = 15s
0x005BD4:
    if !(== self.con 302s) goto 0x005C68
0x005BE8:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push -3s
    stog.vspeed* = (int32 self.undyne)
    stog.alarm[4s] = 17s
    self.con = 303s
0x005C68:
    if !(== self.con 304s) goto 0x005CCC
0x005C7C:
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 305s
    stog.alarm[4s] = 32s
0x005CCC:
    if !(== self.con 306s) goto 0x005D2C
0x005CE0:
    pushenv (int32 self.undyne) 0x005D08
0x005CF0:
    call (scr_npc_halt[]:int32 (var "u"))
0x005D08:
    popenv 0x005CF0
0x005D0C:
    self.con = 307s
    stog.alarm[4s] = 20s
0x005D2C:
    if !(== self.con 308s) goto 0x005DC0
0x005D40:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push -3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    stog.alarm[4s] = 32s
    self.con = 309s
0x005DC0:
    if !(== self.con 310s) goto 0x005E20
0x005DD4:
    pushenv (int32 self.undyne) 0x005DFC
0x005DE4:
    call (scr_npc_halt[]:int32 (var "u"))
0x005DFC:
    popenv 0x005DE4
0x005E00:
    self.con = 311s
    stog.alarm[4s] = 20s
0x005E20:
    if !(== self.con 312s) goto 0x005E68
0x005E34:
    call (snd_play[]:int32 (var 22s))
    self.con = 313s
    stog.alarm[4s] = 30s
0x005E68:
    if !(== self.con 314s) goto 0x005EB0
0x005E7C:
    call (snd_play[]:int32 (var 106s))
    self.con = 315s
    stog.alarm[4s] = 30s
0x005EB0:
    if !(== self.con 316s) goto 0x005F44
0x005EC4:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 317s
    stog.alarm[4s] = 14s
0x005F44:
    if !(== self.con 318s) goto 0x005FA4
0x005F58:
    pushenv (int32 self.undyne) 0x005F80
0x005F68:
    call (scr_npc_halt[]:int32 (var "u"))
0x005F80:
    popenv 0x005F68
0x005F84:
    self.con = 319s
    stog.alarm[4s] = 15s
0x005FA4:
    if !(== self.con 320s) goto 0x006058
0x005FB8:
    self.con = 321s
    call (snd_play[]:int32 (var 106s))
    self.teapot = (scr_marker[]:int32 (var 1483s) (var 49s) (var 167s))
    push 0s
    stog.image_speed* = (int32 self.teapot)
    pushenv (int32 self.teapot) 0x006040
0x006028:
    self.depth = (+ 1061.depth 1s)
0x006040:
    popenv 0x006028
0x006044:
    stog.alarm[4s] = 30s
0x006058:
    if !(== self.con 322s) goto 0x0060A0
0x00606C:
    call (snd_play[]:int32 (var 106s))
    self.con = 323s
    stog.alarm[4s] = 30s
0x0060A0:
    if !(== self.con 324s) goto 0x00610C
0x0060B4:
    self.con = 325s
    pushenv (int32 self.undyne) 0x0060E8
0x0060D0:
    call (scr_npc_halt[]:int32 (var "d"))
0x0060E8:
    popenv 0x0060D0
0x0060EC:
    global.faceemotion = 9s
    stog.alarm[4s] = 20s
0x00610C:
    if !(== self.con 326s) goto 0x0061B4
0x006120:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 9s
    global.msc = 0s
    stog.msg[0s] = "* It'll take a moment&  for the water to&  boil./%%"
    self.con = 327s
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dg)
0x0061B4:
    if !(== self.con 327s) goto 0x0061E4
0x0061C8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0061E8
0x0061E4:
    push 0s
0x0061E8:
    if !pop goto 0x006244
0x0061EC:
    global.faceemotion = 0s
    pushenv (int32 self.undyne) 0x006220
0x006208:
    call (scr_npc_halt[]:int32 (var "u"))
0x006220:
    popenv 0x006208
0x006224:
    self.con = 328s
    stog.alarm[4s] = 180s
0x006244:
    if !(== self.con 329s) goto 0x0062A4
0x006258:
    push 1s
    stog.image_speed* = (int32 self.teapot)
    call (snd_play[]:int32 (var 48s))
    self.con = 330s
    stog.alarm[4s] = 60s
0x0062A4:
    if !(== self.con 331s) goto 0x006378
0x0062B8:
    pushenv (int32 self.undyne) 0x0062E0
0x0062C8:
    call (scr_npc_halt[]:int32 (var "d"))
0x0062E0:
    popenv 0x0062C8
0x0062E4:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 9s
    global.msc = 0s
    stog.msg[0s] = "* Okay^1, it's all&  done!/%%"
    self.con = 332s
    self.dg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dg)
0x006378:
    if !(== self.con 332s) goto 0x0063A8
0x00638C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0063AC
0x0063A8:
    push 0s
0x0063AC:
    if !pop goto 0x00643C
0x0063B0:
    global.faceemotion = 0s
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push -3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 334s
    stog.alarm[4s] = 14s
0x00643C:
    if !(== self.con 335s) goto 0x00649C
0x006450:
    pushenv (int32 self.undyne) 0x006478
0x006460:
    call (scr_npc_halt[]:int32 (var "u"))
0x006478:
    popenv 0x006460
0x00647C:
    self.con = 337s
    stog.alarm[4s] = 20s
0x00649C:
    if !(== self.con 338s) goto 0x006548
0x0064B0:
    push 0s
    stog.visible* = (int32 self.teacup)
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 339s
    stog.alarm[4s] = 17s
0x006548:
    if !(== self.con 340s) goto 0x0065A8
0x00655C:
    pushenv (int32 self.undyne) 0x006584
0x00656C:
    call (scr_npc_halt[]:int32 (var "u"))
0x006584:
    popenv 0x00656C
0x006588:
    self.con = 341s
    stog.alarm[4s] = 20s
0x0065A8:
    if !(== self.con 342s) goto 0x006620
0x0065BC:
    push 0s
    stog.image_index* = (int32 self.teapot)
    push 0s
    stog.image_speed* = (int32 self.teapot)
    call (snd_play[]:int32 (var 22s))
    self.con = 343s
    stog.alarm[4s] = 50s
0x006620:
    if !(== self.con 344s) goto 0x0066B4
0x006634:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 3s
    stog.vspeed* = (int32 self.undyne)
    self.con = 345s
    stog.alarm[4s] = 28s
0x0066B4:
    if !(== self.con 346s) goto 0x006748
0x0066C8:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 347s
    stog.alarm[4s] = 10s
0x006748:
    if !(== self.con 348s) goto 0x0067A8
0x00675C:
    pushenv (int32 self.undyne) 0x006784
0x00676C:
    call (scr_npc_halt[]:int32 (var "u"))
0x006784:
    popenv 0x00676C
0x006788:
    self.con = 349s
    stog.alarm[4s] = 20s
0x0067A8:
    if !(== self.con 350s) goto 0x006880
0x0067BC:
    push (- 1570.x 6s)
    stog.x* = (int32 self.teacup)
    push (+ 1570.y 5s)
    stog.y* = (int32 self.teacup)
    push 1s
    stog.visible* = (int32 self.teacup)
    push (+ (int32 self.undyne):depth 10s)
    stog.depth* = (int32 self.teacup)
    call (snd_play[]:int32 (var 106s))
    self.con = 351s
    stog.alarm[4s] = 30s
0x006880:
    if !(== self.con 352s) goto 0x006958
0x006894:
    pushenv (int32 self.undyne) 0x0068BC
0x0068A4:
    call (scr_npc_halt[]:int32 (var "r"))
0x0068BC:
    popenv 0x0068A4
0x0068C0:
    push 1417s
    stog.sprite_index* = (int32 self.undyne)
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "* Here we are./%%"
    self.con = 352.5d
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x006958:
    if !(== self.con 352.5d) goto 0x006990
0x006974:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006994
0x006990:
    push 0s
0x006994:
    if !pop goto 0x006A18
0x006998:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push -3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 353s
    stog.alarm[4s] = 10s
0x006A18:
    if !(== self.con 354s) goto 0x006AAC
0x006A2C:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push -3s
    stog.vspeed* = (int32 self.undyne)
    self.con = 355s
    stog.alarm[4s] = 16s
0x006AAC:
    if !(== self.con 356s) goto 0x006B88
0x006AC0:
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 357s
    stog.alarm[4s] = 12s
    push 1s
    stog.d* = (int32 self.undyne)
    push (+ (int32 self.table):depth 1s)
    stog.depth* = (int32 self.undyne)
0x006B88:
    if !(== self.con 358s) goto 0x006BE8
0x006B9C:
    pushenv (int32 self.undyne) 0x006BC4
0x006BAC:
    call (scr_npc_halt[]:int32 (var "d"))
0x006BC4:
    popenv 0x006BAC
0x006BC8:
    self.con = 359s
    stog.alarm[4s] = 20s
0x006BE8:
    if !(== self.con 360s) goto 0x006C5C
0x006BFC:
    push 1406s
    stog.sprite_index* = (int32 self.undyne)
    stog.y* = (+ (int32 self.undyne):y 15s)
    self.con = 361s
    stog.alarm[4s] = 30s
0x006C5C:
    push (int32 self.undyne)
    if !(== self.con 362s) goto 0x006CFC
0x006C70:
    stog.flag[20s] = 0s
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 9s
    global.msc = 0s
    stog.msg[0s] = "* Careful^1, it's hot./%%"
    self.con = 363s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x006CFC:
    if !(== self.con 363s) goto 0x006D2C
0x006D10:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006D30
0x006D2C:
    push 0s
0x006D30:
    if !pop goto 0x006D54
0x006D34:
    self.con = 364s
    stog.alarm[4s] = 90s
0x006D54:
    if !(== self.con 365s) goto 0x006E74
0x006D68:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 1s
    global.msc = 0s
    stog.msg[0s] = "* It's not THAT hot!^1!&* Just drink it already!/"
    stog.msg[1s] = "\\TS \\F0 \\T0 %"
    stog.msg[2s] = "* (You take a sip of the&  tea.^1)&* (It's burning...)/"
    stog.msg[3s] = "* (But other than that^1,&  it's pretty good.)/"
    call (scr_undface[]:int32 (var 9s) (var 4s))
    stog.msg[5s] = "* It's pretty good^1,&  right?/"
    stog.msg[6s] = "\\E6* Nothing but the best&  for my ABSOLUTELY&  PRECIOUS FRIEND!!/%%"
    self.con = 366s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x006E74:
    if !(== self.con 366s) goto 0x006EA4
0x006E88:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x006EA8
0x006EA4:
    push 0s
0x006EA8:
    if !pop goto 0x006ED4
0x006EAC:
    self.con = 366.1d
    stog.alarm[4s] = 80s
0x006ED4:
    if !(== self.con 367.1d) goto 0x007010
0x006EF0:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 1s
    global.msc = 0s
    stog.msg[0s] = "\\E9* Hey.../"
    stog.msg[1s] = "\\E9* You know...&* It's kind of strange&  you chose THAT tea./"
    stog.msg[2s] = "\\E4* Golden flower tea.../"
    stog.msg[3s] = "\\E0* That's ASGORE's&  favorite kind./"
    stog.msg[4s] = "\\E4* Actually^1, now that&  I think about it.../"
    stog.msg[5s] = "\\E9* You kind of remind&  me of him./"
    stog.msg[6s] = "\\E6* You're both TOTAL&  weenies!!!/"
    stog.msg[7s] = "\\E7* ... sort of./%%"
    self.con = 367s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x007010:
    if !(== self.con 367s) goto 0x007040
0x007024:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x007044
0x007040:
    push 0s
0x007044:
    if !pop goto 0x007068
0x007048:
    self.con = 368s
    stog.alarm[4s] = 60s
0x007068:
    if !(== self.con 369s) goto 0x007098
0x00707C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00709C
0x007098:
    push 0s
0x00709C:
    if !pop goto 0x0072CC
0x0070A0:
    stog.flag[20s] = 0s
    stog.msg[0s] = "\\E4* Y'know^1, I was a&  pretty hotheaded&  kid./"
    stog.msg[1s] = "* Once^1, to prove I was&  the strongest^1, I tried&  to fight ASGORE./"
    stog.msg[2s] = "\\E1* Emphasis on TRIED./"
    stog.msg[3s] = "\\E0* I couldn't land&  a single blow&  on him!/"
    stog.msg[4s] = "\\E4* And worse^1, the whole&  time^1, he refused&  to fight back!/"
    stog.msg[5s] = "\\E7* I was so&  humiliated.../"
    stog.msg[6s] = "\\E0* Afterwards^1, he&  apologized and said&  something goofy.../"
    stog.msg[7s] = "* \"Excuse me^1, do you&  want to know how&  to beat me?\"/"
    stog.msg[8s] = "\\E0* I said yes^1, and&  from then on^1, he&  trained me./"
    stog.msg[9s] = "\\E4* One day^1, during&  practice^1, I finally&  knocked him down./"
    stog.msg[10s] = "\\E7* I felt..^1. bad./"
    stog.msg[11s] = "\\E9* But he was&  beaming.../"
    stog.msg[12s] = "\\E6* I had never seen&  someone more proud to&  get their butt kicked./"
    stog.msg[13s] = "\\E4* Anyway^1, long story&  short^1, he kept training&  me.../"
    stog.msg[14s] = "\\E0* And now I'm the&  head of the Royal&  Guard!/"
    stog.msg[15s] = "\\E6* So I'm the one&  who gets to train&  dorks to fight!/"
    stog.msg[16s] = "\\E9* ... like^1, uh^1, Papyrus./%%"
    global.currentsong = (caster_load[]:int32 (var "music/musicbox.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) global.currentsong)
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 370s
0x0072CC:
    if !(== self.con 370s) goto 0x0072FC
0x0072E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x007300
0x0072FC:
    push 0s
0x007300:
    if !pop goto 0x007324
0x007304:
    self.con = 371s
    stog.alarm[4s] = 70s
0x007324:
    if !(== self.con 372s) goto 0x007518
0x007338:
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 1s
    global.msc = 0s
    stog.msg[0s] = "\\E4* But^1, um^1, to be&  honest.../"
    stog.msg[1s] = "\\E9*... I don't know if.../"
    stog.msg[2s] = "\\E7* I can ever let&  Papyrus into the&  Royal Guard./"
    stog.msg[3s] = "\\E1* Don't tell him I&  said that!/"
    stog.msg[4s] = "\\E4* He's just..^1.&* Well.../"
    stog.msg[5s] = "\\E9* I mean^1, it's not&  that he's weak./"
    stog.msg[6s] = "\\E1* He's actually&  pretty freaking&  tough!/"
    stog.msg[7s] = "\\E7* It's just that..^1.&* He's.../"
    stog.msg[8s] = "\\E1* He's too innocent&  and nice!!!/"
    stog.msg[9s] = "\\E7* I mean^1, look^1, he&  was SUPPOSED to&  capture you.../"
    stog.msg[10s] = "\\E5* And he ended up&  being FRIENDS with&  you instead!/"
    stog.msg[11s] = "\\E1* I could NEVER send&  him into battle!/"
    stog.msg[12s] = "\\E7* He'd get ripped&  into little smiling&  shreds./"
    stog.msg[13s] = "\\E7* That's part of why.../"
    stog.msg[14s] = "\\E9* I started teaching&  him how to cook^1,&  you know?/"
    stog.msg[15s] = "\\E7* So^1, um^1, maybe he&  can do something&  else with his life./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 373s
0x007518:
    if !(== self.con 373s) goto 0x007548
0x00752C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00754C
0x007548:
    push 0s
0x00754C:
    if !pop goto 0x007594
0x007550:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    self.con = 375s
    stog.alarm[4s] = 30s
0x007594:
    if !(== self.con 376s) goto 0x007608
0x0075A8:
    self.bcbc = (instance_create[]:int32 (var 1337s) (int32 self.undyne):y (int32 self.undyne):x)
    self.con = 377s
    stog.alarm[4s] = 30s
0x007608:
    if !(== self.con 378s) goto 0x00765C
0x00761C:
    pushenv (int32 self.bcbc) 0x007638
0x00762C:
    call (instance_destroy[]:int32 )
0x007638:
    popenv 0x00762C
0x00763C:
    self.con = 379s
    stog.alarm[4s] = 20s
0x00765C:
    if !(== self.con 380s) goto 0x0076E8
0x007670:
    stog.msg[0s] = "\\E1* Oh^1, sorry^1, I was&  talking for so&  long.../"
    stog.msg[1s] = "\\E9* You're out of tea^1,&  aren't you?/"
    stog.msg[2s] = "\\E0* I'll get you some&  more./%%"
    self.con = 381s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0076E8:
    if !(== self.con 381s) goto 0x007718
0x0076FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00771C
0x007718:
    push 0s
0x00771C:
    if !pop goto 0x0077C8
0x007720:
    stog.y* = (- (int32 self.undyne):y 15s)
    push 1s
    stog.npcdir* = (int32 self.undyne)
    push 0s
    stog.fun* = (int32 self.undyne)
    push -3s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 383s
    stog.alarm[4s] = 17s
0x0077C8:
    push (int32 self.undyne)
    if !(== self.con 384s) goto 0x007828
0x0077DC:
    pushenv (int32 self.undyne) 0x007804
0x0077EC:
    call (scr_npc_halt[]:int32 (var "l"))
0x007804:
    popenv 0x0077EC
0x007808:
    self.con = 385s
    stog.alarm[4s] = 90s
0x007828:
    if !(== self.con 386s) goto 0x007848
0x00783C:
    self.con = 94s
0x007848:
    exit
