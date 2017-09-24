0x000000:
    if !(== self.skiptext 1s) goto 0x000020
0x000014:
    call (scr_textskip[]:int32 )
0x000020:
    if !(== self.con 1s) goto 0x0000C0
0x000034:
    global.faceemotion = 4s
    global.border = 4s
    call (SCR_BORDERSETUP[]:int32 )
    self.fallendown = (caster_load[]:int32 (var "music/fallendown2.ogg"))
    self.tor = (instance_create[]:int32 (var 1679s) (var 96s) (var 640s))
    push -10s
    stog.hspeed* = (int32 self.tor)
    self.con = 2s
0x0000C0:
    if !(== self.con 2s) goto 0x000168
0x0000D4:
    if !(<= (int32 self.tor):x 256s) goto 0x000168
0x0000F4:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.fallendown)
    push 0s
    stog.hspeed* = (int32 self.tor)
    push 248s
    stog.x* = (int32 self.tor)
    self.con = 3s
    stog.alarm[4s] = 15s
0x000168:
    if !(== self.con 4s) goto 0x000370
0x00017C:
    global.msc = 0s
    global.typer = 8s
    global.faceemotion = 4s
    stog.msg[0s] = "\\E4What a miserable&creature^1, torturing&such a poor^1,&innocent, youth.../"
    stog.msg[1s] = "\\E0Do not be afraid^1,&my child./"
    stog.msg[2s] = "\\E0It is I^1, TORIEL^1,&your friend and&guardian./"
    stog.msg[3s] = "\\E1At first^1, I thought&I would let you&make your journey&alone.../"
    stog.msg[4s] = "\\E4But I could not&stop worrying about&you./"
    stog.msg[5s] = "\\E4Your adventure must&have been so&treacherous./"
    stog.msg[6s] = "\\E2... and ultimately^1,&it would burden you&with a horrible&choice./"
    stog.msg[7s] = "To leave this place^1,&you would have to&take the life of&another person./"
    stog.msg[8s] = "\\E2You would have to&defeat ASGORE./"
    stog.msg[9s] = "\\E4However..^1.&I realized.../"
    stog.msg[10s] = "\\E1I cannot allow that./"
    stog.msg[11s] = "It is not right to&sacrifice someone&simply to let&someone leave here./"
    stog.msg[12s] = "\\E4Is that not what&I have been trying to&prevent this&whole time?/"
    stog.msg[13s] = "\\E1So^1, for now^1, let&us suspend this&battle./"
    stog.msg[14s] = "\\E4As terrible as&ASGORE is.../"
    stog.msg[15s] = "\\E0He deserves mercy^1,&too./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (+ (int32 self.tor):x 135s))
    self.con = 5s
0x000370:
    if !(== self.con 5s) goto 0x0003A0
0x000384:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0003A4
0x0003A0:
    push 0s
0x0003A4:
    if !pop goto 0x00040C
0x0003A8:
    self.con = 6s
    self.asg = (instance_create[]:int32 (var 1674s) (var 60s) (var -340s))
    push 8s
    stog.hspeed* = (int32 self.asg)
    push 8s
    stog.hspeed* = (int32 self.tor)
0x00040C:
    if !(== self.con 6s) goto 0x000490
0x000420:
    if !(> (int32 self.asg):x -130s) goto 0x000490
0x000440:
    push 0s
    stog.hspeed* = (int32 self.asg)
    push 0s
    stog.hspeed* = (int32 self.tor)
    self.con = 7s
    stog.alarm[4s] = 10s
0x000490:
    if !(== self.con 8s) goto 0x000528
0x0004A4:
    global.faceemotion = 1s
    global.typer = 63s
    stog.msg[0s] = "Tori..^1.&You&came&back...!/%%"
    call (scr_blcon_x[]:int32 (int32 self.asg):y (+ (int32 self.asg):x 300s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 9s
0x000528:
    if !(== self.con 9s) goto 0x000558
0x00053C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x00055C
0x000558:
    push 0s
0x00055C:
    if !pop goto 0x000670
0x000560:
    global.typer = 8s
    stog.msg[0s] = "\\E5Do not \"Tori\" me^1,&Dreemurr!/"
    stog.msg[1s] = "\\E2You pathetic whelp./"
    stog.msg[2s] = "If you really wanted&to free our kind.../"
    stog.msg[3s] = "You could have gone&through the barrier&after you got ONE&SOUL.../"
    stog.msg[4s] = "... taken six SOULs&from the humans^1, then&come back and freed&everyone peacefully./"
    stog.msg[5s] = "\\E5But instead^1, you made&everyone live in&despair.../"
    stog.msg[6s] = "Because you would&rather wait here^1,&meekly hoping another&human never comes./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 40s) (- (int32 self.tor):x 239s))
    [obj_blconwideslave].sprite_index = 30s
    self.con = 10s
0x000670:
    if !(== self.con 10s) goto 0x00069C
0x000684:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0006A0
0x00069C:
    push 0s
0x0006A0:
    if !pop goto 0x000728
0x0006A4:
    if !(== 782.stringno 0s) goto 0x0006D0
0x0006B8:
    push 2s
    stog.face* = (int32 self.asg)
0x0006D0:
    if !(== 782.stringno 1s) goto 0x0006FC
0x0006E4:
    push 3s
    stog.face* = (int32 self.asg)
0x0006FC:
    if !(== 782.stringno 5s) goto 0x000728
0x000710:
    push 4s
    stog.face* = (int32 self.asg)
0x000728:
    if !(== self.con 10s) goto 0x000758
0x00073C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x00075C
0x000758:
    push 0s
0x00075C:
    if !pop goto 0x0007AC
0x000760:
    push 5s
    stog.face* = (int32 self.asg)
    self.con = 11s
    stog.alarm[4s] = 60s
    stog.alarm[4s] = 1s
0x0007AC:
    if !(== self.con 12s) goto 0x0008A4
0x0007C0:
    push 5s
    stog.face* = (int32 self.asg)
    global.typer = 63s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "... Tori.../"
    stog.msg[2s] = "You're right.../"
    stog.msg[3s] = "I am a miserable&creature.../"
    stog.msg[4s] = "... but^1, do you think&we can at least be&friends again?/%%"
    call (scr_blcon_x[]:int32 (int32 self.asg):y (+ (int32 self.asg):x 300s))
    self.con = 13s
0x0008A4:
    if !(== self.con 13s) goto 0x0008D0
0x0008B8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0008D4
0x0008D0:
    push 0s
0x0008D4:
    if !pop goto 0x000904
0x0008D8:
    if !(== 782.stringno 4s) goto 0x000904
0x0008EC:
    push 6s
    stog.face* = (int32 self.asg)
0x000904:
    if !(== self.con 13s) goto 0x000934
0x000918:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x000938
0x000934:
    push 0s
0x000938:
    if !pop goto 0x000988
0x00093C:
    push 6s
    stog.face* = (int32 self.asg)
    self.con = 14s
    stog.alarm[4s] = 60s
    stog.alarm[4s] = 1s
0x000988:
    if !(== self.con 15s) goto 0x000A34
0x00099C:
    global.typer = 8s
    stog.msg[0s] = "(Sigh.)/"
    stog.msg[1s] = "NO^1,&Asgore./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 40s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    self.con = 16s
0x000A34:
    if !(== self.con 16s) goto 0x000A60
0x000A48:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000A64
0x000A60:
    push 0s
0x000A64:
    if !pop goto 0x000AC0
0x000A68:
    if !(== 782.stringno 0s) goto 0x000A88
0x000A7C:
    global.faceemotion = 10s
0x000A88:
    if !(== 782.stringno 1s) goto 0x000AC0
0x000A9C:
    global.faceemotion = 11s
    push 7s
    stog.face* = (int32 self.asg)
0x000AC0:
    if !(== self.con 16s) goto 0x000AF0
0x000AD4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x000AF4
0x000AF0:
    push 0s
0x000AF4:
    if !pop goto 0x000B20
0x000AF8:
    self.con = 16.1d
    stog.alarm[4s] = 10s
0x000B20:
    if !(== self.con 17.1d) goto 0x000B94
0x000B3C:
    global.faceemotion = 3s
    self.und = (instance_create[]:int32 (var 1676s) (var 340s) (var 700s))
    push -12s
    stog.hspeed* = (int32 self.und)
    self.con = 18s
0x000B94:
    if !(== self.con 18s) goto 0x000C88
0x000BA8:
    pushenv 755s 0x000BDC
0x000BB0:
    self.depth = 300s
    self.image_alpha = (- self.image_alpha 0.08d)
0x000BDC:
    popenv 0x000BB0
0x000BE0:
    pushenv 480s 0x000C14
0x000BE8:
    self.depth = 300s
    self.image_alpha = (- self.image_alpha 0.08d)
0x000C14:
    popenv 0x000BE8
0x000C18:
    if !(<= (int32 self.und):x 510s) goto 0x000C88
0x000C38:
    push 500s
    stog.x* = (int32 self.und)
    push 0s
    stog.hspeed* = (int32 self.und)
    self.con = 19s
    stog.alarm[4s] = 8s
0x000C88:
    if !(== self.con 20s) goto 0x000D98
0x000C9C:
    global.msc = 0s
    global.typer = 81s
    stog.msg[0s] = "Ngahhhhhh!!^1!&ASGORE^1! Human!!/"
    stog.msg[1s] = "Nobody fight each&other!!!/"
    stog.msg[2s] = "Everyone's gonna&make friends^1, or&else I'll...!!/"
    stog.msg[3s] = "I'll.../"
    stog.msg[4s] = ".../%%"
    call (scr_blcon_x[]:int32 (int32 self.und):y (- (int32 self.und):x 260s))
    [obj_blconwideslave].sprite_index = 30s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 21s
0x000D98:
    if !(== self.con 21s) goto 0x000DC4
0x000DAC:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000DC8
0x000DC4:
    push 0s
0x000DC8:
    if !pop goto 0x000E18
0x000DCC:
    if !(== 782.stringno 2s) goto 0x000DEC
0x000DE0:
    global.faceemotion = 9s
0x000DEC:
    if !(== 782.stringno 3s) goto 0x000E18
0x000E00:
    push 17s
    stog.face* = (int32 self.und)
0x000E18:
    if !(== self.con 21s) goto 0x000E48
0x000E2C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x000E4C
0x000E48:
    push 0s
0x000E4C:
    if !pop goto 0x000F00
0x000E50:
    self.con = 22s
    global.typer = 8s
    stog.msg[0s] = "Hello^1.&I am&TORIEL./"
    stog.msg[1s] = "Are you&the&human's&friend?/"
    stog.msg[2s] = "It is&nice to&meet&you./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 40s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
0x000F00:
    if !(== self.con 22s) goto 0x000F30
0x000F14:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x000F34
0x000F30:
    push 0s
0x000F34:
    if !pop goto 0x000FE0
0x000F38:
    self.con = 23s
    global.typer = 81s
    push 10s
    stog.face* = (int32 self.und)
    stog.msg[0s] = "Uh^1,&yeah...?/"
    stog.msg[1s] = "Nice to&meet&you!/%%"
    call (scr_blcon_x[]:int32 (int32 self.und):y (- (int32 self.und):x 130s))
    [obj_blconwideslave].sprite_index = 20s
0x000FE0:
    if !(== self.con 23s) goto 0x001010
0x000FF4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001014
0x001010:
    push 0s
0x001014:
    if !pop goto 0x001158
0x001018:
    push 10s
    stog.face* = (int32 self.und)
    global.faceemotion = 0s
    if !(> (int32 self.und):x 170s) goto 0x001088
0x00105C:
    stog.x* = (- (int32 self.und):x 15s)
    goto 0x0010A0
0x001088:
    push (int32 self.und)
    push 160s
    stog.x* = (int32 self.und)
0x0010A0:
    if !(> (int32 self.und):y 78s) goto 0x0010EC
0x0010C0:
    stog.y* = (- (int32 self.und):y 13s)
    goto 0x001104
0x0010EC:
    push (int32 self.und)
    push 68s
    stog.y* = (int32 self.und)
0x001104:
    if !(== (int32 self.und):x 160s) goto 0x001144
0x001124:
    push (== (int32 self.und):y 68s)
    goto 0x001148
0x001144:
    push 0s
0x001148:
    if !pop goto 0x001158
0x00114C:
    self.con = 25s
0x001158:
    if !(== self.con 25s) goto 0x00121C
0x00116C:
    push 16s
    stog.face* = (int32 self.und)
    global.typer = 81s
    stog.msg[0s] = "Hey&ASGORE^1,&is that&your ex?/"
    stog.msg[1s] = "Jeez^1.&That's&rough^1,&buddy./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.und):y 30s) (+ (int32 self.und):x 80s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 26s
0x00121C:
    if !(== self.con 26s) goto 0x001248
0x001230:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00124C
0x001248:
    push 0s
0x00124C:
    if !pop goto 0x001294
0x001250:
    if !(== 782.stringno 1s) goto 0x001294
0x001264:
    push 4s
    stog.face* = (int32 self.und)
    push 8s
    stog.face* = (int32 self.asg)
0x001294:
    if !(== self.con 26s) goto 0x0012C4
0x0012A8:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0012C8
0x0012C4:
    push 0s
0x0012C8:
    if !pop goto 0x001330
0x0012CC:
    global.faceemotion = 9s
    self.con = 27s
    self.al = (instance_create[]:int32 (var 1672s) (var 348s) (var 660s))
    push -12s
    stog.hspeed* = (int32 self.al)
    self.con = 28s
0x001330:
    if !(== self.con 28s) goto 0x0013B4
0x001344:
    if !(<= (int32 self.al):x 470s) goto 0x0013B4
0x001364:
    push 0s
    stog.hspeed* = (int32 self.al)
    push 460s
    stog.x* = (int32 self.al)
    self.con = 29s
    stog.alarm[4s] = 10s
0x0013B4:
    if !(== self.con 30s) goto 0x0014C4
0x0013C8:
    push 18s
    stog.face* = (int32 self.und)
    global.typer = 74s
    stog.msg[0s] = "H-hey^1!/"
    stog.msg[1s] = "Nobody&hurt&each&other!!/"
    stog.msg[2s] = ".../"
    stog.msg[3s] = ".../%%"
    call (scr_blcon_x[]:int32 (int32 self.al):y (- (int32 self.al):x 120s))
    push 20s
    stog.sprite_index* = (int32 self.blcon)
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 31s
0x0014C4:
    if !(== self.con 31s) goto 0x0014F0
0x0014D8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0014F4
0x0014F0:
    push 0s
0x0014F4:
    if !pop goto 0x001550
0x0014F8:
    if !(== 782.stringno 2s) goto 0x001524
0x00150C:
    push 4s
    stog.face* = (int32 self.al)
0x001524:
    if !(== 782.stringno 3s) goto 0x001550
0x001538:
    push 16s
    stog.face* = (int32 self.al)
0x001550:
    if !(== self.con 31s) goto 0x001580
0x001564:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001584
0x001580:
    push 0s
0x001584:
    if !pop goto 0x0015A8
0x001588:
    self.con = 32s
    stog.alarm[4s] = 10s
0x0015A8:
    if !(== self.con 33s) goto 0x001654
0x0015BC:
    global.typer = 8s
    stog.msg[0s] = "Oh^1!&Are you&another&friend?/"
    stog.msg[1s] = "I am&TORIEL^1.&Hello!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    self.con = 34s
0x001654:
    if !(== self.con 34s) goto 0x001684
0x001668:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001688
0x001684:
    push 0s
0x001688:
    if !pop goto 0x00174C
0x00168C:
    global.typer = 74s
    stog.msg[0s] = "Uh^1,&h-h-hi!/"
    stog.msg[1s] = ".../"
    stog.msg[2s] = "(THERE'S&TWO OF&THEM???)/%%"
    call (scr_blcon_x[]:int32 (int32 self.al):y (- (int32 self.al):x 120s))
    [obj_blconwideslave].sprite_index = 20s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 35s
0x00174C:
    if !(== self.con 35s) goto 0x001778
0x001760:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00177C
0x001778:
    push 0s
0x00177C:
    if !pop goto 0x0017D8
0x001780:
    if !(== 782.stringno 1s) goto 0x0017AC
0x001794:
    push 17s
    stog.face* = (int32 self.al)
0x0017AC:
    if !(== 782.stringno 2s) goto 0x0017D8
0x0017C0:
    push 4s
    stog.face* = (int32 self.al)
0x0017D8:
    if !(== self.con 35s) goto 0x001808
0x0017EC:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x00180C
0x001808:
    push 0s
0x00180C:
    if !pop goto 0x001968
0x001810:
    push 18s
    stog.face* = (int32 self.al)
    global.faceemotion = 0s
    if !(> (int32 self.al):x 230s) goto 0x001880
0x001854:
    stog.x* = (- (int32 self.al):x 10s)
    goto 0x001898
0x001880:
    push (int32 self.al)
    push 220s
    stog.x* = (int32 self.al)
0x001898:
    if !(> (int32 self.al):y 114s) goto 0x0018E4
0x0018B8:
    stog.y* = (- (int32 self.al):y 12s)
    goto 0x0018FC
0x0018E4:
    push (int32 self.al)
    push 104s
    stog.y* = (int32 self.al)
0x0018FC:
    if !(== (int32 self.al):x 220s) goto 0x00193C
0x00191C:
    push (== (int32 self.al):y 104s)
    goto 0x001940
0x00193C:
    push 0s
0x001940:
    if !pop goto 0x001968
0x001944:
    push 18s
    stog.face* = (int32 self.al)
    self.con = 36s
0x001968:
    if !(== self.con 36s) goto 0x0019D4
0x00197C:
    global.faceemotion = 9s
    self.pap = (instance_create[]:int32 (var 1671s) (var 300s) (var 660s))
    push -16s
    stog.hspeed* = (int32 self.pap)
    self.con = 37s
0x0019D4:
    if !(== self.con 37s) goto 0x001A58
0x0019E8:
    if !(<= (int32 self.pap):x 478s) goto 0x001A58
0x001A08:
    push 0s
    stog.hspeed* = (int32 self.pap)
    push 468s
    stog.x* = (int32 self.pap)
    self.con = 38s
    stog.alarm[4s] = 10s
0x001A58:
    if !(== self.con 39s) goto 0x001A88
0x001A6C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001A8C
0x001A88:
    push 0s
0x001A8C:
    if !pop goto 0x001B74
0x001A90:
    global.msc = 0s
    global.typer = 22s
    stog.msg[0s] = "HEY^1!&NOBODY FIGHT&ANYONE!/"
    stog.msg[1s] = "IF ANYONE FIGHTS&ANYONE...!/"
    stog.msg[2s] = "THEN I'LL!!^1!&BE FORCED!!!/"
    stog.msg[3s] = "TO ASK UNDYNE&FOR HELP!!!/%%"
    call (scr_blcon_x[]:int32 (int32 self.pap):y (- (int32 self.pap):x 260s))
    [obj_blconwideslave].sprite_index = 30s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 40s
0x001B74:
    if !(== self.con 40s) goto 0x001BA0
0x001B88:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001BA4
0x001BA0:
    push 0s
0x001BA4:
    if !pop goto 0x001C00
0x001BA8:
    if !(== 782.stringno 1s) goto 0x001BD4
0x001BBC:
    push 1s
    stog.face* = (int32 self.pap)
0x001BD4:
    if !(== 782.stringno 3s) goto 0x001C00
0x001BE8:
    push 0s
    stog.face* = (int32 self.pap)
0x001C00:
    if !(== self.con 40s) goto 0x001C30
0x001C14:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001C34
0x001C30:
    push 0s
0x001C34:
    if !pop goto 0x001CD0
0x001C38:
    push 2s
    stog.face* = (int32 self.pap)
    global.typer = 8s
    stog.msg[0s] = "Hello!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    self.con = 41s
0x001CD0:
    if !(== self.con 41s) goto 0x001D00
0x001CE4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001D04
0x001D00:
    push 0s
0x001D04:
    if !pop goto 0x001DF8
0x001D08:
    push 2s
    stog.face* = (int32 self.pap)
    global.typer = 22s
    stog.msg[0s] = "OH^1!&HELLO^1, YOUR&MAJESTY!/"
    stog.msg[1s] = "PSST^1!&HEY^1, HUMAN.../"
    stog.msg[2s] = "DID ASGORE&SHAVE...?/"
    stog.msg[3s] = "AND..^1.&CLONE HIMSELF????/%%"
    call (scr_blcon_x[]:int32 (int32 self.pap):y (- (int32 self.pap):x 260s))
    [obj_blconwideslave].depth = -1000s
    [obj_blconwideslave].sprite_index = 30s
    [OBJ_WRITER].depth = -2000s
    self.con = 42s
0x001DF8:
    if !(== self.con 42s) goto 0x001E24
0x001E0C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001E28
0x001E24:
    push 0s
0x001E28:
    if !pop goto 0x001EB0
0x001E2C:
    if !(== 782.stringno 1s) goto 0x001E58
0x001E40:
    push 7s
    stog.face* = (int32 self.pap)
0x001E58:
    if !(== 782.stringno 2s) goto 0x001E84
0x001E6C:
    push 5s
    stog.face* = (int32 self.pap)
0x001E84:
    if !(== 782.stringno 3s) goto 0x001EB0
0x001E98:
    push 6s
    stog.face* = (int32 self.pap)
0x001EB0:
    if !(== self.con 42s) goto 0x001EE0
0x001EC4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x001EE4
0x001EE0:
    push 0s
0x001EE4:
    if !pop goto 0x001F40
0x001EE8:
    global.faceemotion = 0s
    self.sans = (instance_create[]:int32 (var 1673s) (var 408s) (var -108s))
    push 5s
    stog.hspeed* = (int32 self.sans)
    self.con = 43s
0x001F40:
    if !(== self.con 43s) goto 0x001FC4
0x001F54:
    if !(>= (int32 self.sans):x 16s) goto 0x001FC4
0x001F74:
    push 20s
    stog.x* = (int32 self.sans)
    push 0s
    stog.hspeed* = (int32 self.sans)
    self.con = 44s
    stog.alarm[4s] = 10s
0x001FC4:
    if !(== self.con 45s) goto 0x002094
0x001FD8:
    push 7s
    stog.face* = (int32 self.pap)
    global.faceemotion = 3s
    global.typer = 80s
    stog.msg[0s] = "hey&guys..^1.&what's&up?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.sans):y 50s) (+ (int32 self.sans):x 108s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 46s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
0x002094:
    if !(== self.con 46s) goto 0x0020C4
0x0020A8:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0020C8
0x0020C4:
    push 0s
0x0020C8:
    if !pop goto 0x00217C
0x0020CC:
    push 2s
    stog.face* = (int32 self.pap)
    global.typer = 8s
    stog.msg[0s] = "That&voice&...!!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 47s
0x00217C:
    if !(== self.con 47s) goto 0x0021AC
0x002190:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0021B0
0x0021AC:
    push 0s
0x0021B0:
    if !pop goto 0x00233C
0x0021B4:
    push 7s
    stog.face* = (int32 self.pap)
    global.faceemotion = 6s
    if !(< (int32 self.pap):x 560s) goto 0x002220
0x0021F8:
    stog.x* = (+ (int32 self.pap):x 3s)
0x002220:
    push (int32 self.pap)
    if !(> (int32 self.tor):x 365s) goto 0x00226C
0x002240:
    stog.x* = (- (int32 self.tor):x 10s)
    goto 0x002284
0x00226C:
    push (int32 self.tor)
    push 360s
    stog.x* = (int32 self.tor)
0x002284:
    if !(< (int32 self.tor):y 360s) goto 0x0022D0
0x0022A4:
    stog.y* = (+ (int32 self.tor):y 12s)
    goto 0x0022E8
0x0022D0:
    push (int32 self.tor)
    push 352s
    stog.y* = (int32 self.tor)
0x0022E8:
    if !(== (int32 self.tor):x 360s) goto 0x002328
0x002308:
    push (== (int32 self.tor):y 352s)
    goto 0x00232C
0x002328:
    push 0s
0x00232C:
    if !pop goto 0x00233C
0x002330:
    self.con = 48s
0x00233C:
    if !(== self.con 48s) goto 0x00236C
0x002350:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002370
0x00236C:
    push 0s
0x002370:
    if !pop goto 0x002490
0x002374:
    push 13s
    stog.face* = (int32 self.und)
    push 9s
    stog.face* = (int32 self.asg)
    push 3s
    stog.face* = (int32 self.al)
    push 7s
    stog.face* = (int32 self.sans)
    global.typer = 8s
    global.faceemotion = 6s
    stog.msg[0s] = "Hello^1,&I think&we&may.../"
    stog.msg[1s] = "Know&each&other?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 49s
0x002490:
    if !(== self.con 49s) goto 0x0024C0
0x0024A4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0024C4
0x0024C0:
    push 0s
0x0024C4:
    if !pop goto 0x002544
0x0024C8:
    global.typer = 80s
    push 8s
    stog.face* = (int32 self.sans)
    stog.msg[0s] = "oh hey..^1.&i recognize your&voice^1, too./%%"
    call (scr_blcon_x[]:int32 (var 360s) (var 120s))
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 50s
0x002544:
    if !(== self.con 50s) goto 0x002574
0x002558:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002578
0x002574:
    push 0s
0x002578:
    if !pop goto 0x002674
0x00257C:
    push 10s
    stog.face* = (int32 self.asg)
    push 4s
    stog.face* = (int32 self.al)
    push 19s
    stog.face* = (int32 self.und)
    global.typer = 8s
    stog.msg[0s] = "I am&TORIEL./"
    stog.msg[1s] = "So nice&to meet&you./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 51s
0x002674:
    if !(== self.con 51s) goto 0x0026A4
0x002688:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0026A8
0x0026A4:
    push 0s
0x0026A8:
    if !pop goto 0x00274C
0x0026AC:
    stog.msg[0s] = "the&name's&sans./"
    stog.msg[1s] = "and^1, uh^1,&same./%%"
    push 9s
    stog.face* = (int32 self.sans)
    global.typer = 80s
    call (scr_blcon_x[]:int32 (var 360s) (var 120s))
    [obj_blconwideslave].sprite_index = 18s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 52s
0x00274C:
    if !(== self.con 52s) goto 0x00277C
0x002760:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002780
0x00277C:
    push 0s
0x002780:
    if !pop goto 0x002840
0x002784:
    push 7s
    stog.face* = (int32 self.sans)
    global.typer = 8s
    global.faceemotion = 3s
    stog.msg[0s] = "Oh^1!&Wait^1,&then...!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (- (int32 self.tor):x 110s))
    [obj_blconwideslave].sprite_index = 20s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 53s
0x002840:
    if !(== self.con 53s) goto 0x002870
0x002854:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002874
0x002870:
    push 0s
0x002874:
    if !pop goto 0x00295C
0x002878:
    global.faceemotion = 14s
    if !(> (int32 self.pap):x 500s) goto 0x0028CC
0x0028A4:
    stog.x* = (- (int32 self.pap):x 5s)
0x0028CC:
    push (int32 self.pap)
    if !(> (int32 self.tor):x 128s) goto 0x002918
0x0028EC:
    stog.x* = (- (int32 self.tor):x 20s)
    goto 0x002930
0x002918:
    push (int32 self.tor)
    push 108s
    stog.x* = (int32 self.tor)
0x002930:
    if !(== (int32 self.tor):x 108s) goto 0x00295C
0x002950:
    self.con = 54s
0x00295C:
    if !(== self.con 54s) goto 0x002A44
0x002970:
    push 0s
    stog.face* = (int32 self.pap)
    stog.msg[0s] = "This must be your&brother^1, Papyrus!/"
    stog.msg[1s] = "Greetings^1, Papyrus^1!&It is so nice to&finally meet you!/"
    stog.msg[2s] = "Your brother has&told me so much&about you./%%"
    global.typer = 8s
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (+ (int32 self.tor):x 135s))
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 55s
0x002A44:
    if !(== self.con 55s) goto 0x002A70
0x002A58:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x002A74
0x002A70:
    push 0s
0x002A74:
    if !pop goto 0x002AA4
0x002A78:
    if !(== 782.stringno 1s) goto 0x002AA4
0x002A8C:
    push 3s
    stog.face* = (int32 self.pap)
0x002AA4:
    if !(== self.con 55s) goto 0x002AD4
0x002AB8:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002AD8
0x002AD4:
    push 0s
0x002AD8:
    if !pop goto 0x002BB4
0x002ADC:
    global.typer = 22s
    push 3s
    stog.face* = (int32 self.pap)
    stog.msg[0s] = "WOWIE.../"
    stog.msg[1s] = "I CAN'T BELIEVE&ASGORE'S CLONE&KNOWS WHO I&AM!!!/"
    stog.msg[2s] = "THIS IS THE BEST&DAY OF MY&LIFE!!!!!!!/%%"
    call (scr_blcon_x[]:int32 (int32 self.pap):y (- (int32 self.pap):x 240s))
    [obj_blconwideslave].sprite_index = 30s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 56s
0x002BB4:
    if !(== self.con 56s) goto 0x002BE4
0x002BC8:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002BE8
0x002BE4:
    push 0s
0x002BE8:
    if !pop goto 0x002CA8
0x002BEC:
    global.typer = 8s
    push 0s
    stog.face* = (int32 self.pap)
    stog.msg[0s] = "Hey^1, Papyrus.../"
    stog.msg[1s] = "What does a skeleton&tile his roof&with?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (+ (int32 self.tor):x 135s))
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 57s
0x002CA8:
    if !(== self.con 57s) goto 0x002CD8
0x002CBC:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002CDC
0x002CD8:
    push 0s
0x002CDC:
    if !pop goto 0x002D88
0x002CE0:
    push 7s
    stog.face* = (int32 self.pap)
    global.typer = 22s
    stog.msg[0s] = "HMMM..^1.&SNOW-PROOF ROOF&TILES???/%%"
    call (scr_blcon_x[]:int32 (int32 self.pap):y (- (int32 self.pap):x 240s))
    [obj_blconwideslave].sprite_index = 30s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 58s
0x002D88:
    if !(== self.con 58s) goto 0x002DB8
0x002D9C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002DBC
0x002DB8:
    push 0s
0x002DBC:
    if !pop goto 0x002E64
0x002DC0:
    stog.msg[0s] = "No^1, silly^1!&A skeleton tiles&his roof with.../"
    stog.msg[1s] = "SHIN-gles!!!/%%"
    global.typer = 8s
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 30s) (+ (int32 self.tor):x 135s))
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 59s
0x002E64:
    if !(== self.con 59s) goto 0x002E90
0x002E78:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x002E94
0x002E90:
    push 0s
0x002E94:
    if !pop goto 0x002EC4
0x002E98:
    if !(== 782.stringno 1s) goto 0x002EC4
0x002EAC:
    push 8s
    stog.face* = (int32 self.pap)
0x002EC4:
    if !(== self.con 59s) goto 0x002EF4
0x002ED8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x002EF8
0x002EF4:
    push 0s
0x002EF8:
    if !pop goto 0x002F40
0x002EFC:
    self.con = 60s
    stog.alarm[4s] = 1s
    push 8s
    stog.face* = (int32 self.sans)
    global.faceemotion = 12s
0x002F40:
    if !(== self.con 61s) goto 0x002F70
0x002F54:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x002F74
0x002F70:
    push 0s
0x002F74:
    if !pop goto 0x003038
0x002F78:
    push 4s
    stog.face* = (int32 self.pap)
    global.typer = 22s
    stog.msg[0s] = "I CHANGED MY&MIND!!!/"
    stog.msg[1s] = "THIS IS THE WORST&DAY OF MY LIFE!!!/%%"
    call (scr_blcon_x[]:int32 (int32 self.pap):y (- (int32 self.pap):x 240s))
    [obj_blconwideslave].sprite_index = 30s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 62s
0x003038:
    if !(== self.con 62s) goto 0x003068
0x00304C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x00306C
0x003068:
    push 0s
0x00306C:
    if !pop goto 0x003144
0x003070:
    push 18s
    stog.face* = (int32 self.al)
    push 4s
    stog.face* = (int32 self.und)
    push 7s
    stog.face* = (int32 self.asg)
    global.typer = 81s
    stog.msg[0s] = "Come on^1, ASGORE^1!&It's gonna be OK!/"
    stog.msg[1s] = "There are plenty&of fish in the&sea.../%%"
    call (scr_blcon_x[]:int32 (- (int32 self.und):y 50s) (+ (int32 self.und):x 85s))
    self.con = 63s
0x003144:
    if !(== self.con 63s) goto 0x003170
0x003158:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x003174
0x003170:
    push 0s
0x003174:
    if !pop goto 0x0031A4
0x003178:
    if !(== 782.stringno 1s) goto 0x0031A4
0x00318C:
    push 11s
    stog.face* = (int32 self.und)
0x0031A4:
    if !(== self.con 63s) goto 0x0031D4
0x0031B8:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0031D8
0x0031D4:
    push 0s
0x0031D8:
    if !pop goto 0x003320
0x0031DC:
    global.typer = 74s
    push 18s
    stog.face* = (int32 self.und)
    push 9s
    stog.face* = (int32 self.al)
    push 8s
    stog.face* = (int32 self.asg)
    stog.msg[0s] = "Y-yeah^1, ASGORE!!/"
    stog.msg[1s] = "Undyne's totally&right about that&fish thing!/"
    stog.msg[2s] = "S-sometimes you've&just got to^1, uh.../"
    stog.msg[3s] = "S-stop going after&furry boss monsters&and^1, uh.../"
    stog.msg[4s] = "J-just get to know&a really cute&fish...?/"
    stog.msg[5s] = ".../"
    stog.msg[6s] = "It's a metaphor./%%"
    call (scr_blcon_x[]:int32 (int32 self.al):y (+ (int32 self.al):x 145s))
    self.con = 64s
0x003320:
    if !(== self.con 64s) goto 0x00334C
0x003334:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x003350
0x00334C:
    push 0s
0x003350:
    if !pop goto 0x003434
0x003354:
    if !(== 782.stringno 1s) goto 0x003380
0x003368:
    push 10s
    stog.face* = (int32 self.al)
0x003380:
    if !(== 782.stringno 4s) goto 0x0033AC
0x003394:
    push 12s
    stog.face* = (int32 self.und)
0x0033AC:
    if !(== 782.stringno 5s) goto 0x0033F0
0x0033C0:
    push 15s
    stog.face* = (int32 self.al)
    push 13s
    stog.face* = (int32 self.und)
0x0033F0:
    if !(== 782.stringno 6s) goto 0x003434
0x003404:
    push 18s
    stog.face* = (int32 self.al)
    push 11s
    stog.face* = (int32 self.und)
0x003434:
    if !(== self.con 64s) goto 0x003464
0x003448:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x003468
0x003464:
    push 0s
0x003468:
    if !pop goto 0x00351C
0x00346C:
    global.typer = 81s
    push 18s
    stog.face* = (int32 self.und)
    stog.msg[0s] = "Well./"
    stog.msg[1s] = "I think&it's a&good&analogy./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.und):y 50s) (+ (int32 self.und):x 85s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 65s
0x00351C:
    if !(== self.con 65s) goto 0x003548
0x003530:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00354C
0x003548:
    push 0s
0x00354C:
    if !pop goto 0x00357C
0x003550:
    if !(== 782.stringno 1s) goto 0x00357C
0x003564:
    push 11s
    stog.face* = (int32 self.und)
0x00357C:
    if !(== self.con 65s) goto 0x0035AC
0x003590:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0035B0
0x0035AC:
    push 0s
0x0035B0:
    if !pop goto 0x003670
0x0035B4:
    self.leg = 1s
    self.leg_r = 0s
    self.legx = (+ self.room_width 200s)
    push 15s
    stog.face* = (int32 self.al)
    push 13s
    stog.face* = (int32 self.und)
    push 2s
    stog.face* = (int32 self.pap)
    global.faceemotion = 4s
    push 9s
    stog.face* = (int32 self.asg)
    self.con = 66s
    stog.alarm[4s] = 15s
0x003670:
    if !(== self.con 67s) goto 0x003720
0x003684:
    global.typer = 51s
    stog.msg[0s] = "OH MY GOD!/"
    stog.msg[1s] = "\\XWILL YOU TWO&JUST \\RSMOOCH\\X &ALREADY!?/"
    stog.msg[2s] = "THE AUDIENCE IS&DYING FOR SOME&ROMANTIC ACTION!!!/%%"
    call (scr_blcon_x[]:int32 (var 20s) (- self.room_width 255s))
    push 30s
    stog.sprite_index* = (int32 self.blcon)
    self.con = 68s
0x003720:
    if !(== self.con 68s) goto 0x003750
0x003734:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x003754
0x003750:
    push 0s
0x003754:
    if !pop goto 0x003874
0x003758:
    self.leg = 2s
    global.faceemotion = 13s
    push 7s
    stog.face* = (int32 self.pap)
    global.typer = 81s
    push 6s
    stog.face* = (int32 self.und)
    stog.msg[0s] = "HEY^1, SHUT UP!!!/"
    stog.msg[1s] = "Man^1, the nerve of&that guy!/"
    stog.msg[2s] = "Right^1,&Alphys!??/"
    stog.msg[3s] = ".../"
    stog.msg[4s] = "Uh^1, Alphys?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.und):y 50s) (+ (int32 self.und):x 85s))
    self.con = 69s
0x003874:
    if !(== self.con 69s) goto 0x0038A0
0x003888:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0038A4
0x0038A0:
    push 0s
0x0038A4:
    if !pop goto 0x00392C
0x0038A8:
    if !(== 782.stringno 1s) goto 0x0038D4
0x0038BC:
    push 10s
    stog.face* = (int32 self.und)
0x0038D4:
    if !(== 782.stringno 2s) goto 0x003900
0x0038E8:
    push 18s
    stog.face* = (int32 self.und)
0x003900:
    if !(== 782.stringno 4s) goto 0x00392C
0x003914:
    push 3s
    stog.face* = (int32 self.und)
0x00392C:
    if !(== self.con 69s) goto 0x00395C
0x003940:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x003960
0x00395C:
    push 0s
0x003960:
    if !pop goto 0x003A3C
0x003964:
    global.typer = 74s
    push 4s
    stog.face* = (int32 self.al)
    stog.msg[0s] = ".../"
    stog.msg[1s] = "No./"
    stog.msg[2s] = "He's&right./"
    stog.msg[3s] = "LET'S&DO&IT./%%"
    call (scr_blcon_x[]:int32 (int32 self.al):y (+ (int32 self.al):x 145s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 70s
0x003A3C:
    if !(== self.con 70s) goto 0x003A68
0x003A50:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x003A6C
0x003A68:
    push 0s
0x003A6C:
    if !pop goto 0x003AE0
0x003A70:
    if !(== 782.stringno 2s) goto 0x003AB4
0x003A84:
    push 3s
    stog.face* = (int32 self.al)
    push 13s
    stog.face* = (int32 self.und)
0x003AB4:
    if !(== 782.stringno 3s) goto 0x003AE0
0x003AC8:
    push 11s
    stog.face* = (int32 self.al)
0x003AE0:
    if !(== self.con 70s) goto 0x003B10
0x003AF4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x003B14
0x003B10:
    push 0s
0x003B14:
    if !pop goto 0x003BEC
0x003B18:
    push 18s
    stog.face* = (int32 self.al)
    push 19s
    stog.face* = (int32 self.und)
    global.typer = 81s
    stog.msg[0s] = "??????????????/"
    stog.msg[1s] = "Well??^1? Uh??^1?&I guess??^1?&If you want to??^1?&Then????/"
    stog.msg[2s] = "Don't hold anything&back!!!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.und):y 50s) (+ (int32 self.und):x 85s))
    self.con = 71s
0x003BEC:
    if !(== self.con 71s) goto 0x003C18
0x003C00:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x003C1C
0x003C18:
    push 0s
0x003C1C:
    if !pop goto 0x003C78
0x003C20:
    if !(== 782.stringno 1s) goto 0x003C4C
0x003C34:
    push 17s
    stog.face* = (int32 self.und)
0x003C4C:
    if !(== 782.stringno 2s) goto 0x003C78
0x003C60:
    push 14s
    stog.face* = (int32 self.und)
0x003C78:
    if !(== self.con 71s) goto 0x003CA8
0x003C8C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x003CAC
0x003CA8:
    push 0s
0x003CAC:
    if !pop goto 0x003D00
0x003CB0:
    self.con = 72s
    stog.alarm[4s] = 90s
    push 1s
    stog.smooch* = (int32 self.und)
    push 1s
    stog.smooch* = (int32 self.al)
0x003D00:
    if !(== self.con 73s) goto 0x003EA4
0x003D14:
    push 2s
    stog.smooch* = (int32 self.und)
    push 2s
    stog.smooch* = (int32 self.al)
    global.faceemotion = 3s
    push 9s
    stog.face* = (int32 self.asg)
    stog.x* = (+ (int32 self.al):x 21s)
    stog.x* = (+ (int32 self.tor):x 12s)
    if !(> (int32 self.tor):x 212s) goto 0x003DF0
0x003DD8:
    push (int32 self.al)
    push (int32 self.tor)
    push 218s
    stog.x* = (int32 self.tor)
0x003DF0:
    stog.y* = (- (int32 self.tor):y 26s)
    if !(< (int32 self.tor):y 108s) goto 0x003E50
0x003E38:
    push (int32 self.tor)
    push 96s
    stog.y* = (int32 self.tor)
0x003E50:
    if !(== (int32 self.tor):x 218s) goto 0x003E90
0x003E70:
    push (== (int32 self.tor):y 96s)
    goto 0x003E94
0x003E90:
    push 0s
0x003E94:
    if !pop goto 0x003EA4
0x003E98:
    self.con = 74s
0x003EA4:
    if !(== self.con 74s) goto 0x003F50
0x003EB8:
    global.typer = 8s
    stog.msg[0s] = "W-wait!/"
    stog.msg[1s] = "Not in&front of&the&human!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 80s) (+ (int32 self.tor):x 125s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 75s
0x003F50:
    if !(== self.con 75s) goto 0x003F80
0x003F64:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x003F84
0x003F80:
    push 0s
0x003F84:
    if !pop goto 0x00408C
0x003F88:
    push 0s
    stog.smooch* = (int32 self.und)
    push 0s
    stog.s_i* = (int32 self.und)
    push 0s
    stog.smooch* = (int32 self.al)
    self.con = 76s
    global.typer = 74s
    push 18s
    stog.face* = (int32 self.al)
    push 14s
    stog.face* = (int32 self.und)
    global.faceemotion = 6s
    stog.msg[0s] = "Uhh^1, right^1!&S-sorry^1, I got a&little carried&away there./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 90s) (- (int32 self.al):x 40s))
    [obj_blconwideslave].sprite_index = 24s
0x00408C:
    if !(== self.con 76s) goto 0x0040BC
0x0040A0:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0040C0
0x0040BC:
    push 0s
0x0040C0:
    if !pop goto 0x00424C
0x0040C4:
    push 0s
    stog.face* = (int32 self.sans)
    push 0s
    stog.face* = (int32 self.pap)
    push 0s
    stog.face* = (int32 self.asg)
    push 0s
    stog.face* = (int32 self.al)
    push 0s
    stog.face* = (int32 self.und)
    self.sidecon = 1s
    global.typer = 8s
    global.faceemotion = 0s
    stog.msg[0s] = "Hee hee hee./"
    stog.msg[1s] = "My child^1, it seems&as if you must&stay here&for a while./"
    stog.msg[2s] = "\\E6But looking at&all the great&friends you have&made.../"
    stog.msg[3s] = "\\E0I think.../"
    stog.msg[4s] = "\\E7I think you will&be happy here./%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.tor):y 170s) (- (int32 self.tor):x 35s))
    [obj_blconwideslave].sprite_index = 25s
    [obj_blconwideslave].depth = -1000s
    [OBJ_WRITER].depth = -2000s
    self.con = 77s
0x00424C:
    if !(== self.con 77s) goto 0x004290
0x004260:
    if !(== (instance_exists[]:int32 (var 188s)) 0s) goto 0x004290
0x00427C:
    push (== self.sidecon 2s)
    goto 0x004294
0x004290:
    push 0s
0x004294:
    if !pop goto 0x0042B8
0x004298:
    self.con = 78s
    stog.alarm[4s] = 40s
0x0042B8:
    if !(== self.con 79s) goto 0x0043DC
0x0042CC:
    global.typer = 74s
    global.faceemotion = 0s
    self.skiptext = 0s
    push 15s
    stog.face* = (int32 self.al)
    stog.msg[0s] = "H-hey^1, that&reminds me./"
    stog.msg[1s] = "Papyrus..^1.&YOU called&everyone here^1,&right?/"
    stog.msg[2s] = "Well^1, besides^1,&uh^1, her./"
    stog.msg[3s] = "Uh^1, anyway..^1.&If I got here&before you.../"
    stog.msg[4s] = "How did you know&how to call&everybody?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 90s) (- (int32 self.al):x 80s))
    [obj_blconwideslave].sprite_index = 24s
    self.con = 80s
0x0043DC:
    if !(== self.con 80s) goto 0x00440C
0x0043F0:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x004410
0x00440C:
    push 0s
0x004410:
    if !pop goto 0x004498
0x004414:
    push 7s
    stog.face* = (int32 self.pap)
    global.typer = 22s
    stog.msg[0s] = "LET'S&JUST&SAY.../%%"
    call (scr_blcon_x[]:int32 (var 8s) (- (int32 self.pap):x 100s))
    [obj_blconwideslave].sprite_index = 20s
    self.con = 81s
0x004498:
    if !(== self.con 81s) goto 0x0044C8
0x0044AC:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0044CC
0x0044C8:
    push 0s
0x0044CC:
    if !pop goto 0x004568
0x0044D0:
    push 0s
    stog.face* = (int32 self.pap)
    global.typer = 83s
    stog.msg[0s] = "A TINY&FLOWER&HELPED&ME./%%"
    call (caster_free[]:int32 self.fallendown)
    call (scr_blcon_x[]:int32 (var 8s) (- (int32 self.pap):x 100s))
    [obj_blconwideslave].sprite_index = 20s
    self.con = 82s
0x004568:
    if !(== self.con 82s) goto 0x004598
0x00457C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x00459C
0x004598:
    push 0s
0x00459C:
    if !pop goto 0x004644
0x0045A0:
    push 9s
    stog.face* = (int32 self.al)
    global.typer = 82s
    stog.msg[0s] = "A tiny..^1.&flower?/%%"
    global.faceemotion = 1s
    call (scr_blcon_x[]:int32 (- (int32 self.tor):y 90s) (- (int32 self.al):x 80s))
    [obj_blconwideslave].sprite_index = 24s
    self.con = 83s
0x004644:
    if !(== self.con 83s) goto 0x004674
0x004658:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x004678
0x004674:
    push 0s
0x004678:
    if !pop goto 0x00469C
0x00467C:
    self.con = 84s
    stog.alarm[4s] = 50s
0x00469C:
    if !(== self.con 85s) goto 0x004728
0x0046B0:
    self.i = 0s
    call (snd_play[]:int32 (var 44s))
    stog.gigavine[(int32 self.i)] = (instance_create[]:int32 (var 1668s) (var 160s) (var -100s))
    self.con = 86s
    stog.alarm[4s] = 75s
0x004728:
    if !(== self.con 87s) goto 0x004794
0x00473C:
    global.border = 4s
    call (SCR_BORDERSETUP[]:int32 )
    self.gowhite = 1s
    self.con = 88s
    call (snd_play[]:int32 (var 30s))
    stog.alarm[4s] = 80s
0x004794:
    if !(== self.con 89s) goto 0x0047FC
0x0047A8:
    global.faceemotion = 0s
    self.flowey = (instance_create[]:int32 (var 1667s) (var 296s) (var 276s))
    self.con = 90s
    stog.alarm[4s] = 60s
0x0047FC:
    if !(== self.con 91s) goto 0x004BF4
0x004810:
    self.skiptext = 1s
    call (caster_loop[]:int32 (var 0.9d) (var 0.8d) self.fmusic)
    global.typer = 6s
    stog.msg[0s] = "\\E0You IDIOTS./"
    stog.msg[1s] = "\\E2While you guys were&having your little&pow-wow.../"
    stog.msg[2s] = "\\E6I took the human&SOULS!/"
    stog.msg[3s] = "\\E5And now^1, not only&are THOSE under my&power.../"
    stog.msg[4s] = "\\E6But all of your&FRIENDS' SOULS are&gonna be mine^1, too!/"
    stog.msg[5s] = "\\E0Hee hee hee./"
    stog.msg[6s] = "\\E1And you know what&the best part is?/"
    stog.msg[7s] = "\\E5It's all your&fault./"
    stog.msg[8s] = "\\E6It's all because&you MADE THEM&love you./"
    stog.msg[9s] = "\\E7All the time you&spent listening to&them.../"
    stog.msg[10s] = "\\E2Encouraging them..^1.&Caring about them.../"
    stog.msg[11s] = "\\E0Without that^1, they&wouldn't have come&here./"
    stog.msg[12s] = "\\E7And now^1, with their&souls and the humans'&together.../"
    stog.msg[13s] = "\\E5I will achieve my&REAL FORM./"
    stog.msg[14s] = "\\E0Hee hee.../"
    stog.msg[15s] = "\\E3Huh?/"
    stog.msg[16s] = "\\E1WHY am I still&doing this?/"
    stog.msg[17s] = "\\E7Don't you get it?/"
    stog.msg[18s] = "\\E0This is all just&a GAME./"
    stog.msg[19s] = "\\E3If you leave the&underground satisfied^1,&you'll \"win\" the&game./"
    stog.msg[20s] = "\\E4If you \"win^1,\" you&won't want to \"play\"&with me anymore./"
    stog.msg[21s] = "\\E0And what would I&do then?/"
    stog.msg[22s] = "\\E6But this game&between us will&NEVER end./"
    stog.msg[23s] = "\\E5I'll hold victory&in front of you^1,&just within your&reach.../"
    stog.msg[24s] = "\\E6And then tear it&away just before&you grasp it./"
    stog.msg[25s] = "\\E8Over^1, and over^1,&and over.../"
    stog.msg[26s] = "\\E5Hee hee hee./"
    stog.msg[27s] = "\\E1Listen./"
    stog.msg[28s] = "\\E0If you DO defeat&me^1, I'll give you&your \"happy ending.\"/"
    stog.msg[29s] = "\\E7I'll bring your&friends back./"
    stog.msg[30s] = "I'll destroy the&barrier./"
    stog.msg[31s] = "\\E0Everyone will&finally be&satisfied./"
    stog.msg[32s] = "\\E6But that WON'T&happen./"
    stog.msg[33s] = "\\E8You...!/"
    stog.msg[34s] = "\\E0I'll keep you here&no matter what!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.flowey):y 20s) (+ (int32 self.flowey):x 105s))
    self.con = 92s
0x004BF4:
    if !(== self.con 92s) goto 0x004C24
0x004C08:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x004C28
0x004C24:
    push 0s
0x004C28:
    if !pop goto 0x004C64
0x004C2C:
    push 6s
    stog.con* = (int32 self.flowey)
    stog.alarm[4s] = 60s
    self.con = 93s
0x004C64:
    if !(== self.con 94s) goto 0x004CEC
0x004C78:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 21s))
    self.border_d = 1s
    self.tx = 320s
    self.ty = 300s
    self.con = 94.1d
    stog.alarm[4s] = 40s
0x004CEC:
    if !(== self.con 95.1d) goto 0x004D50
0x004D08:
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    self.con = 95s
    stog.alarm[4s] = 60s
0x004D50:
    if !(== self.con 96s) goto 0x004DF0
0x004D64:
    global.faceemotion = 0s
    global.typer = 7s
    stog.msg[0s] = "\\E0Even if it means&killing you&1,000,000 times!!!!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.flowey):y 110s) (- (int32 self.flowey):x 65s))
    [obj_blconwideslave].sprite_index = 24s
    self.con = 97s
0x004DF0:
    if !(== self.con 97s) goto 0x004E20
0x004E04:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x004E24
0x004E20:
    push 0s
0x004E24:
    if !pop goto 0x004EA8
0x004E28:
    call (snd_play[]:int32 (var 52s))
    pushenv (int32 self.gen) 0x004E60
0x004E4C:
    call (event_user[]:int32 (var 0s))
0x004E60:
    popenv 0x004E4C
0x004E64:
    self.con = 98s
    stog.alarm[4s] = 35s
    self.done = 0s
    push 1s
    stog.laugh* = (int32 self.flowey)
0x004EA8:
    if !(== self.con 99s) goto 0x004FC4
0x004EBC:
    call (snd_stop[]:int32 (var 52s))
    call (snd_play[]:int32 (var 52s))
    self.done = (+ self.done 1s)
    pushenv (int32 self.gen) 0x004F20
0x004F0C:
    call (event_user[]:int32 (var 0s))
0x004F20:
    popenv 0x004F0C
0x004F24:
    pushenv (int32 self.gen) 0x004F40
0x004F34:
    call (instance_destroy[]:int32 )
0x004F40:
    popenv 0x004F34
0x004F44:
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    if !(== self.done 1s) goto 0x004FA4
0x004F80:
    self.con = 98s
    stog.alarm[4s] = 35s
    goto 0x004FC4
0x004FA4:
    self.con = 100s
    stog.alarm[4s] = 35s
0x004FC4:
    if !(== self.con 101s) goto 0x0050C0
0x004FD8:
    call (snd_stop[]:int32 (var 52s))
    call (snd_play[]:int32 (var 52s))
    pushenv (int32 self.gen) 0x005024
0x005010:
    call (event_user[]:int32 (var 0s))
0x005024:
    popenv 0x005010
0x005028:
    pushenv (int32 self.gen) 0x005044
0x005038:
    call (instance_destroy[]:int32 )
0x005044:
    popenv 0x005038
0x005048:
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    push 2s
    stog.spec* = (int32 self.gen)
    push 130s
    stog.radius* = (int32 self.gen)
    self.con = 102s
    stog.alarm[4s] = 100s
0x0050C0:
    if !(== self.con 103s) goto 0x00511C
0x0050D4:
    pushenv (int32 self.gen) 0x0050F8
0x0050E4:
    call (event_user[]:int32 (var 0s))
0x0050F8:
    popenv 0x0050E4
0x0050FC:
    self.con = 104s
    stog.alarm[4s] = 105s
0x00511C:
    if !(== self.con 105s) goto 0x005168
0x005130:
    push 2s
    stog.laugh* = (int32 self.flowey)
    self.con = 106s
    stog.alarm[4s] = 60s
0x005168:
    if !(== self.con 106s) goto 0x0051BC
0x00517C:
    pushenv 1680s 0x0051B8
0x005184:
    if !(>= self.mf 0s) goto 0x0051B8
0x005198:
    self.mf = (- self.mf 0.015d)
0x0051B8:
    popenv 0x005184
0x0051BC:
    if !(== self.con 107s) goto 0x005274
0x0051D0:
    push 0s
    stog.laugh* = (int32 self.flowey)
    global.faceemotion = 4s
    global.typer = 6s
    stog.msg[0s] = "What?/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.flowey):y 110s) (- (int32 self.flowey):x 65s))
    [obj_blconwideslave].sprite_index = 24s
    self.con = 108s
0x005274:
    if !(== self.con 108s) goto 0x0052A4
0x005288:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0052A8
0x0052A4:
    push 0s
0x0052A8:
    if !pop goto 0x0052CC
0x0052AC:
    self.con = 109s
    stog.alarm[4s] = 40s
0x0052CC:
    if !(== self.con 110s) goto 0x005414
0x0052E0:
    self.dontgiveup = (caster_load[]:int32 (var "music/dontgiveup.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) self.dontgiveup)
    push 1s
    stog.face* = (int32 self.tor2)
    global.typer = 84s
    stog.msg[0s] = "Do not be afraid^1,&my child.../"
    stog.msg[1s] = "No matter what&happens.../"
    stog.msg[2s] = "We will always&be there to&protect you!/%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.tor2):y 170s) (- (int32 self.tor2):x 5s))
    [obj_blconwideslave].sprite_index = 25s
    push -2000s
    stog.depth* = (int32 self.blcon)
    [OBJ_WRITER].depth = -3000s
    self.con = 111s
0x005414:
    if !(== self.con 111s) goto 0x005440
0x005428:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x005444
0x005440:
    push 0s
0x005444:
    if !pop goto 0x005474
0x005448:
    if !(== 782.stringno 1s) goto 0x005474
0x00545C:
    push 2s
    stog.face* = (int32 self.tor2)
0x005474:
    if !(== self.con 111s) goto 0x0054A4
0x005488:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0054A8
0x0054A4:
    push 0s
0x0054A8:
    if !pop goto 0x0054F8
0x0054AC:
    call (snd_play[]:int32 (var 155s))
    global.hp = (+ global.hp 1s)
    self.con = 112s
    stog.alarm[4s] = 45s
0x0054F8:
    if !(== self.con 113s) goto 0x0055BC
0x00550C:
    global.faceemotion = 12s
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    pushenv (int32 self.gen) 0x005598
0x005550:
    stog.alarm[0s] = -1s
    stog.alarm[1s] = -1s
    stog.alarm[2s] = 1s
    self.spec = 3s
0x005598:
    popenv 0x005550
0x00559C:
    self.con = 114s
    stog.alarm[4s] = 20s
0x0055BC:
    if !(== self.con 115s) goto 0x005674
0x0055D0:
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    pushenv (int32 self.gen) 0x005650
0x005608:
    stog.alarm[0s] = -1s
    stog.alarm[1s] = -1s
    stog.alarm[3s] = 1s
    self.spec = 4s
0x005650:
    popenv 0x005608
0x005654:
    self.con = 116s
    stog.alarm[4s] = 60s
0x005674:
    if !(== self.con 117s) goto 0x00575C
0x005688:
    global.faceemotion = 4s
    push 1s
    stog.face* = (int32 self.pap2)
    global.typer = 22s
    stog.msg[0s] = "THAT'S RIGHT^1,&HUMAN^1!&YOU CAN&WIN!!/"
    stog.msg[1s] = "JUST DO&WHAT I^1,&WOULD&DO.../"
    stog.msg[2s] = "BELIEVE&IN YOU!!!/%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.pap2):y 270s) (- (int32 self.pap2):x 45s))
    [obj_blconwideslave].sprite_index = 25s
    self.con = 118s
0x00575C:
    if !(== self.con 118s) goto 0x00578C
0x005770:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x005790
0x00578C:
    push 0s
0x005790:
    if !pop goto 0x005870
0x005794:
    call (snd_play[]:int32 (var 155s))
    global.hp = (+ global.hp 1s)
    push 1s
    stog.face* = (int32 self.und2)
    global.typer = 81s
    stog.msg[0s] = "Hey^1! Human^1! If&you got past&ME^1, you can&do ANYTHING!/"
    stog.msg[1s] = "So don't worry^1!&We're with you&all the way!/%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.und2):y 200s) (- (int32 self.und2):x 45s))
    [obj_blconwideslave].sprite_index = 25s
    self.con = 119s
0x005870:
    if !(== self.con 119s) goto 0x0058A0
0x005884:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0058A4
0x0058A0:
    push 0s
0x0058A4:
    if !pop goto 0x00599C
0x0058A8:
    call (snd_play[]:int32 (var 155s))
    global.hp = (+ global.hp 1s)
    push 1s
    stog.face* = (int32 self.sans2)
    global.typer = 80s
    stog.msg[0s] = "huh^1?&you haven't&beaten&this guy yet?/"
    stog.msg[1s] = "come on^1, this&weirdo's got&nothin' on you./%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.sans2):y 130s) (- (int32 self.sans2):x 25s))
    [obj_blconwideslave].sprite_index = 25s
    push -10s
    stog.depth* = (int32 self.blcon)
    self.con = 120s
0x00599C:
    if !(== self.con 120s) goto 0x0059CC
0x0059B0:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0059D0
0x0059CC:
    push 0s
0x0059D0:
    if !pop goto 0x005A20
0x0059D4:
    call (snd_play[]:int32 (var 155s))
    global.hp = (+ global.hp 1s)
    self.con = 121s
    stog.alarm[4s] = 40s
0x005A20:
    if !(== self.con 122s) goto 0x005AE4
0x005A34:
    global.faceemotion = 12s
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    pushenv (int32 self.gen) 0x005AC0
0x005A78:
    stog.alarm[0s] = -1s
    stog.alarm[1s] = -1s
    stog.alarm[2s] = 1s
    self.spec = 5s
0x005AC0:
    popenv 0x005A78
0x005AC4:
    self.con = 123s
    stog.alarm[4s] = 20s
0x005AE4:
    if !(== self.con 124s) goto 0x005B9C
0x005AF8:
    self.gen = (instance_create[]:int32 (var 1666s) self.ty self.tx)
    pushenv (int32 self.gen) 0x005B78
0x005B30:
    stog.alarm[0s] = -1s
    stog.alarm[1s] = -1s
    stog.alarm[3s] = 1s
    self.spec = 6s
0x005B78:
    popenv 0x005B30
0x005B7C:
    self.con = 125s
    stog.alarm[4s] = 60s
0x005B9C:
    if !(== self.con 126s) goto 0x005BCC
0x005BB0:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x005BD0
0x005BCC:
    push 0s
0x005BD0:
    if !pop goto 0x005C9C
0x005BD4:
    global.faceemotion = 14s
    push 1s
    stog.face* = (int32 self.al2)
    global.typer = 74s
    stog.msg[0s] = "Technically^1, it's&impossible for you&to beat him.../"
    stog.msg[1s] = "B-but..^1.&Somehow^1, I know&you can do it!!/%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.al2):y 190s) (- (int32 self.al2):x 75s))
    [obj_blconwideslave].sprite_index = 25s
    [obj_blconwideslave].depth = -10s
    self.con = 127s
0x005C9C:
    if !(== self.con 127s) goto 0x005CC8
0x005CB0:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x005CCC
0x005CC8:
    push 0s
0x005CCC:
    if !pop goto 0x005CFC
0x005CD0:
    if !(== 782.stringno 1s) goto 0x005CFC
0x005CE4:
    push 2s
    stog.face* = (int32 self.al2)
0x005CFC:
    if !(== self.con 127s) goto 0x005D2C
0x005D10:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x005D30
0x005D2C:
    push 0s
0x005D30:
    if !pop goto 0x005DFC
0x005D34:
    call (snd_play[]:int32 (var 155s))
    global.hp = (+ global.hp 1s)
    global.typer = 63s
    push 2s
    stog.face* = (int32 self.asg2)
    stog.msg[0s] = "Human^1, for the&future of&humans and&monsters...!/"
    stog.msg[1s] = "You have to stay&determined...!/%%"
    call (scr_blcon_x[]:int32 (+ (int32 self.asg2):y 250s) (var -10s))
    [obj_blconwideslave].sprite_index = 25s
    self.con = 128s
0x005DFC:
    if !(== self.con 128s) goto 0x005E2C
0x005E10:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x005E30
0x005E2C:
    push 0s
0x005E30:
    if !pop goto 0x005E8C
0x005E34:
    global.faceemotion = 16s
    call (snd_play[]:int32 (var 155s))
    global.hp = (+ global.hp 1s)
    self.con = 129s
    stog.alarm[4s] = 30s
0x005E8C:
    if !(== self.con 130s) goto 0x005F20
0x005EA0:
    pushenv (int32 self.flowey) 0x005ED4
0x005EB0:
    self.neut = 1s
    self.spec = 1s
    self.con = 6s
0x005ED4:
    popenv 0x005EB0
0x005ED8:
    self.biig = (instance_create[]:int32 (var 1661s) (var 0s) (var 0s))
    self.con = 131s
    stog.alarm[4s] = 60s
0x005F20:
    if !(== self.con 132s) goto 0x005F60
0x005F34:
    global.faceemotion = 17s
    self.con = 133s
    stog.alarm[4s] = 30s
0x005F60:
    if !(== self.con 134s) goto 0x005FC0
0x005F74:
    pushenv (int32 self.flowey) 0x005F9C
0x005F84:
    self.spec = 2s
    self.con = 6s
0x005F9C:
    popenv 0x005F84
0x005FA0:
    self.con = 135s
    stog.alarm[4s] = 110s
0x005FC0:
    if !(== self.con 136s) goto 0x005FF0
0x005FD4:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x005FF4
0x005FF0:
    push 0s
0x005FF4:
    if !pop goto 0x0060FC
0x005FF8:
    global.typer = 78s
    self.skiptext = 0s
    global.faceemotion = 18s
    stog.msg[0s] = "Urrrgh..^1. NO!/"
    stog.msg[1s] = "Unbelievable!!/"
    stog.msg[2s] = "This can't be&happening...!/"
    stog.msg[3s] = "You..^1. YOU...!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.flowey):y 110s) (- (int32 self.flowey):x 65s))
    [obj_blconwideslave].sprite_index = 24s
    push -2000s
    stog.depth* = (int32 self.blcon)
    [OBJ_WRITER].depth = -3000s
    self.con = 137s
0x0060FC:
    if !(== self.con 127s) goto 0x006128
0x006110:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00612C
0x006128:
    push 0s
0x00612C:
    if !pop goto 0x006170
0x006130:
    if !(== 782.stringno 2s) goto 0x006150
0x006144:
    global.faceemotion = 19s
0x006150:
    if !(== 782.stringno 3s) goto 0x006170
0x006164:
    global.faceemotion = 20s
0x006170:
    if !(== self.con 137s) goto 0x0061A0
0x006184:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0061A4
0x0061A0:
    push 0s
0x0061A4:
    if !pop goto 0x006278
0x0061A8:
    call (caster_free[]:int32 self.dontgiveup)
    call (snd_play[]:int32 (var 106s))
    push 2s
    stog.laugh* = (int32 self.flowey)
    self.con = 138s
    stog.alarm[4s] = 70s
    pushenv 1680s 0x006228
0x006210:
    self.mf = 0s
    self.freeze = 1s
0x006228:
    popenv 0x006210
0x00622C:
    pushenv 1668s 0x006240
0x006234:
    self.shimmy = 0s
0x006240:
    popenv 0x006234
0x006244:
    pushenv (int32 self.biig) 0x006268
0x006254:
    call (event_user[]:int32 (var 0s))
0x006268:
    popenv 0x006254
0x00626C:
    self.trickblack = 1s
0x006278:
    if !(== self.con 139s) goto 0x0062A8
0x00628C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0062AC
0x0062A8:
    push 0s
0x0062AC:
    if !pop goto 0x00637C
0x0062B0:
    global.typer = 77s
    self.hellsfx = (caster_load[]:int32 (var "music/f_destroyed3.ogg"))
    stog.msg[0s] = "I can't believe&you're all so&STUPID./%%"
    call (scr_blcon_x[]:int32 (- (int32 self.flowey):y 110s) (- (int32 self.flowey):x 65s))
    [obj_blconwideslave].sprite_index = 24s
    [obj_blconwideslave].depth = (- self.depth 10s)
    [OBJ_WRITER].depth = (- self.depth 20s)
    self.con = 140s
0x00637C:
    if !(== self.con 140s) goto 0x0063AC
0x006390:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x0063B0
0x0063AC:
    push 0s
0x0063B0:
    if !pop goto 0x0065A0
0x0063B4:
    call (caster_loop[]:int32 (var 0.6d) (var 0.5d) self.hellsfx)
    self.pit = 0.8d
    self.vol = 0.6d
    push 1s
    stog.laugh* = (int32 self.flowey)
    pushenv 1680s 0x006454
0x006430:
    self.freeze = 0s
    self.shock = 1s
    self.s_timer = -999s
0x006454:
    popenv 0x006430
0x006458:
    pushenv 1668s 0x00646C
0x006460:
    self.shimmy = 1s
0x00646C:
    popenv 0x006460
0x006470:
    self.wht = 0s
    self.trickblack = 0s
    self.lastwhite = 1s
    self.con = 141s
    self.white = 0s
    self.depth = -100000
    global.typer = 7s
    stog.msg[0s] = "ALL OF YOUR SOULS&ARE MINE!!!/%%"
    call (scr_blcon_x[]:int32 (- (int32 self.flowey):y 110s) (- (int32 self.flowey):x 65s))
    push (+ self.depth 2s)
    stog.depth* = (int32 self.blcon)
    [OBJ_WRITER].depth = (+ self.depth 1s)
    pushenv (int32 self.biig) 0x006584
0x006570:
    call (event_user[]:int32 (var 1s))
0x006584:
    popenv 0x006570
0x006588:
    push 24s
    stog.sprite_index* = (int32 self.blcon)
0x0065A0:
    if !(== self.con 141s) goto 0x006658
0x0065B4:
    self.pit = (+ self.pit 0.007d)
    self.vol = (+ self.vol 0.005d)
    call (caster_set_pitch[]:int32 self.pit self.hellsfx)
    call (caster_set_volume[]:int32 self.vol self.hellsfx)
    pushenv 1680s 0x006654
0x006634:
    self.mf = (+ self.mf 0.02d)
0x006654:
    popenv 0x006634
0x006658:
    if !(== self.sidecon 1s) goto 0x006858
0x00666C:
    if (< (int32 self.sans):y 140s) goto 0x0066AC
0x00668C:
    push (> (int32 self.sans):y 240s)
    goto 0x0066B0
0x0066AC:
    push 1s
0x0066B0:
    if !pop goto 0x0066E0
0x0066B4:
    stog.y* = (+ (int32 self.sans):y 12s)
    goto 0x006704
0x0066E0:
    push (int32 self.sans)
    self.sidecon = 2s
    push 152s
    stog.y* = (int32 self.sans)
0x006704:
    if !(> (int32 self.sans):y 680s) goto 0x00679C
0x006724:
    push (+ (int32 self.tor):x 120s)
    stog.x* = (int32 self.sans)
    push -200s
    stog.y* = (int32 self.sans)
    push (+ (int32 self.tor):depth 1s)
    stog.depth* = (int32 self.sans)
0x00679C:
    if !(> (int32 self.pap):y 50s) goto 0x006840
0x0067BC:
    push (+ (int32 self.al):depth 1s)
    stog.depth* = (int32 self.pap)
    stog.y* = (- (int32 self.pap):y 18s)
    stog.x* = (+ (int32 self.pap):x 1s)
    goto 0x006858
0x006840:
    push (int32 self.pap)
    push (int32 self.pap)
    push 40s
    stog.y* = (int32 self.pap)
0x006858:
    if !(== self.border_d 1s) goto 0x0068D8
0x00686C:
    self.cx = 310s
    self.cx2 = 330s
    self.cy = 290s
    self.cy2 = 310s
    [obj_heart].visible = 1s
    [obj_heart].x = (+ self.cx 2s)
    [obj_heart].y = (+ self.cy 2s)
0x0068D8:
    if !(== self.ting_s 1s) goto 0x006920
0x0068EC:
    call (snd_stop[]:int32 (var 28s))
    call (snd_play[]:int32 (var 28s))
    self.ting_s = 0s
0x006920:
    exit
