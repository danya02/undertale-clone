0x000000:
    if !(== self.con 1s) goto 0x00012C
0x000014:
    global.interact = 1s
    self.blk = (- self.blk 0.01d)
    if !(== self.blk 1s) goto 0x000088
0x000054:
    call (caster_loop[]:int32 (var 0.9d) (var 0.9d) self.o_music)
0x000088:
    call (draw_set_alpha[]:int32 self.blk)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -100s) (var -100s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(<= self.blk 0s) goto 0x00012C
0x00010C:
    self.con = 2s
    stog.alarm[4s] = 50s
0x00012C:
    if !(== self.con 3s) goto 0x0001A0
0x000140:
    global.msc = 814s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 4s
0x0001A0:
    if !(== self.con 4s) goto 0x0001D0
0x0001B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x000220
0x0001D8:
    push (int32 self.pap):y
    stog.thisy* = (int32 self.pap)
    self.con = 5s
    stog.alarm[4s] = 3s
0x000220:
    if !(== self.con 5s) goto 0x000294
0x000234:
    push 1313s
    stog.sprite_index* = (int32 self.pap)
    stog.y* = (+ (int32 self.pap):y 5s)
    push 0.334d
    stog.image_speed* = (int32 self.pap)
0x000294:
    push (int32 self.pap)
    if !(== self.con 6s) goto 0x00032C
0x0002A8:
    push 1328s
    stog.sprite_index* = (int32 self.pap)
    stog.x* = (+ (int32 self.pap):x 7s)
    if !(> (int32 self.pap):x self.room_width) goto 0x00032C
0x00030C:
    push (int32 self.pap)
    self.con = 7s
    stog.alarm[4s] = 30s
0x00032C:
    if !(== self.con 8s) goto 0x0003E8
0x000340:
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "\\E0* welp./"
    stog.msg[1s] = "\\E1* someone's gotta keep&  him from getting&  into trouble./"
    stog.msg[2s] = "\\E2* see you guys./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 9s
0x0003E8:
    if !(== self.con 9s) goto 0x000418
0x0003FC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00041C
0x000418:
    push 0s
0x00041C:
    if !pop goto 0x0004C4
0x000420:
    stog.y* = (+ (int32 self.sans):y 2s)
    push 1353s
    stog.sprite_index* = (int32 self.sans)
    push 0.2d
    stog.image_speed* = (int32 self.sans)
    if !(> (int32 self.sans):y self.room_height) goto 0x0004C4
0x0004A4:
    push (int32 self.sans)
    self.con = 10s
    stog.alarm[4s] = 20s
0x0004C4:
    if !(== self.con 11s) goto 0x000568
0x0004D8:
    global.msc = 0s
    global.typer = 37s
    global.facechoice = 5s
    global.faceemotion = 9s
    stog.msg[0s] = "\\E0* Man^1, do I have&  to do EVERYTHING?/"
    stog.msg[1s] = "\\E6* Papyrus^1, wait!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 12s
0x000568:
    if !(== self.con 12s) goto 0x000598
0x00057C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00059C
0x000598:
    push 0s
0x00059C:
    if !pop goto 0x0005C0
0x0005A0:
    self.con = 13s
    stog.alarm[4s] = 3s
0x0005C0:
    if !(== self.con 13s) goto 0x000634
0x0005D4:
    push 1404s
    stog.sprite_index* = (int32 self.und)
    stog.y* = (+ (int32 self.und):y 5s)
    push 0.334d
    stog.image_speed* = (int32 self.und)
0x000634:
    push (int32 self.und)
    if !(== self.con 14s) goto 0x0006D4
0x000648:
    push 1416s
    stog.sprite_index* = (int32 self.und)
    stog.x* = (+ (int32 self.und):x 7s)
    if !(> (int32 self.und):x (+ self.room_width 17s)) goto 0x0006D4
0x0006B4:
    push (int32 self.und)
    self.con = 15s
    stog.alarm[4s] = 15s
0x0006D4:
    if !(== self.con 16s) goto 0x000760
0x0006E8:
    global.msc = 0s
    global.typer = 47s
    global.facechoice = 6s
    global.faceemotion = 0s
    stog.msg[0s] = "\\E0* Hey^1, Undyne!^1!&* Wait up!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 17s
0x000760:
    if !(== self.con 17s) goto 0x000790
0x000774:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000794
0x000790:
    push 0s
0x000794:
    if !pop goto 0x0007B8
0x000798:
    self.con = 18s
    stog.alarm[4s] = 3s
0x0007B8:
    if !(== self.con 18s) goto 0x00082C
0x0007CC:
    push 1638s
    stog.sprite_index* = (int32 self.al)
    stog.y* = (+ (int32 self.al):y 5s)
    push 0.334d
    stog.image_speed* = (int32 self.al)
0x00082C:
    push (int32 self.al)
    if !(== self.con 19s) goto 0x0008C4
0x000840:
    push 1643s
    stog.sprite_index* = (int32 self.al)
    stog.x* = (+ (int32 self.al):x 7s)
    if !(> (int32 self.al):x self.room_width) goto 0x0008C4
0x0008A4:
    push (int32 self.al)
    self.con = 20s
    stog.alarm[4s] = 95s
0x0008C4:
    if !(== self.con 21s) goto 0x000950
0x0008D8:
    global.msc = 0s
    global.typer = 60s
    global.facechoice = 7s
    global.faceemotion = 3s
    stog.msg[0s] = "* Whoops./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 22s
0x000950:
    if !(== self.con 22s) goto 0x000980
0x000964:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000984
0x000980:
    push 0s
0x000984:
    if !pop goto 0x0009A8
0x000988:
    self.con = 23s
    stog.alarm[4s] = 120s
0x0009A8:
    if !(== self.con 24s) goto 0x000AB4
0x0009BC:
    push 1900s
    stog.sprite_index* = (int32 self.asg)
    global.msc = 0s
    global.typer = 60s
    global.facechoice = 7s
    global.faceemotion = 3s
    stog.msg[0s] = "* Uh^1, should I do&  something?/"
    call (scr_torface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* .../"
    call (scr_asgface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "* Well^1, gotta go!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 25s
0x000AB4:
    if !(== self.con 25s) goto 0x000AE4
0x000AC8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000AE8
0x000AE4:
    push 0s
0x000AE8:
    if !pop goto 0x000B90
0x000AEC:
    push 1901s
    stog.sprite_index* = (int32 self.asg)
    push 0.25d
    stog.image_speed* = (int32 self.asg)
    stog.x* = (+ (int32 self.asg):x 5s)
    if !(> (int32 self.asg):x self.room_width) goto 0x000B90
0x000B70:
    push (int32 self.asg)
    self.con = 26s
    stog.alarm[4s] = 20s
0x000B90:
    if !(== self.con 27s) goto 0x000BDC
0x000BA4:
    push 1107s
    stog.sprite_index* = (int32 self.tor)
    self.con = 28s
    stog.alarm[4s] = 60s
0x000BDC:
    if !(== self.con 29s) goto 0x000C80
0x000BF0:
    push 1107s
    stog.sprite_index* = (int32 self.tor)
    self.con = 30s
    global.msc = 0s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 0s
    stog.msg[0s] = "* It seems that everyone&  is quite eager to&  set off./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000C80:
    if !(== self.con 30s) goto 0x000CB0
0x000C94:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000CB4
0x000CB0:
    push 0s
0x000CB4:
    if !pop goto 0x000CFC
0x000CB8:
    self.con = 31s
    push 1112s
    stog.sprite_index* = (int32 self.tor)
    self.con = 32s
    stog.alarm[4s] = 90s
0x000CFC:
    if !(== self.con 33s) goto 0x000D48
0x000D10:
    push 1108s
    stog.sprite_index* = (int32 self.tor)
    stog.alarm[4s] = 50s
    self.con = 34s
0x000D48:
    if !(== self.con 35s) goto 0x000DBC
0x000D5C:
    push 1045s
    stog.sprite_index* = (int32 self.mc)
    global.typer = 4s
    global.msc = 820s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 36s
0x000DBC:
    if !(== self.con 100s) goto 0x000DEC
0x000DD0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000DF0
0x000DEC:
    push 0s
0x000DF0:
    if !pop goto 0x000F70
0x000DF4:
    stog.flag[512s] = 0s
    global.msc = 0s
    global.facechoice = 1s
    global.faceemotion = 8s
    global.typer = 4s
    stog.msg[0s] = "* What?/"
    stog.msg[1s] = "\\E1* Frisk.../"
    stog.msg[2s] = "\\E0* You really are a&  funny child./"
    stog.msg[3s] = "\\E1* If you had said that&  earlier^1, none of this&  would have happened./"
    stog.msg[4s] = "\\E0* It is a good thing&  you took so long to&  change your mind./"
    stog.msg[5s] = "* Hee hee hee./"
    stog.msg[6s] = "* Well..^1.&* I suppose./"
    stog.msg[7s] = "* If you really do&  not have any other&  place to go.../"
    stog.msg[8s] = "* I will do my best to&  take care of you^1, for&  as long as you need./"
    stog.msg[9s] = "* All right?/"
    stog.msg[10s] = "* Now^1, come along./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 101s
0x000F70:
    if !(== self.con 101s) goto 0x000FA0
0x000F84:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FA4
0x000FA0:
    push 0s
0x000FA4:
    if !pop goto 0x001020
0x000FA8:
    stog.x* = (- (int32 self.tor):x 16s)
    push 1114s
    stog.sprite_index* = (int32 self.tor)
    push 0s
    stog.visible* = (int32 self.mc)
    self.con = 102s
    stog.alarm[4s] = 40s
0x001020:
    push (int32 self.tor)
    if !(== self.con 103s) goto 0x00107C
0x001034:
    stog.msg[0s] = "* Everyone is waiting&  for us!/%%"
    self.con = 104s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00107C:
    if !(== self.con 104s) goto 0x0010AC
0x001090:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0010B0
0x0010AC:
    push 0s
0x0010B0:
    if !pop goto 0x001134
0x0010B4:
    stog.x* = (+ (int32 self.tor):x 2s)
    push 0.125d
    stog.image_speed* = (int32 self.tor)
    if !(> (int32 self.tor):x (+ self.room_width 100s)) goto 0x001134
0x001128:
    push (int32 self.tor)
    self.con = 105s
0x001134:
    if !(== self.con 105s) goto 0x001270
0x001148:
    self.blk = (+ self.blk 0.01d)
    self.vol = (caster_get_volume[]:int32 self.o_music)
    self.vol = (- self.vol 0.01d)
    call (caster_set_volume[]:int32 self.vol self.o_music)
    call (draw_set_alpha[]:int32 self.blk)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -100s) (var -100s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(>= self.blk 1.6d) goto 0x001270
0x001248:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 278s))
0x001270:
    if !(== self.con 200s) goto 0x0012A0
0x001284:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012A4
0x0012A0:
    push 0s
0x0012A4:
    if !pop goto 0x001368
0x0012A8:
    global.msc = 0s
    global.facechoice = 1s
    global.faceemotion = 2s
    global.typer = 4s
    stog.msg[0s] = "\\E1* Ah./"
    stog.msg[1s] = "\\E0* ... I see./"
    stog.msg[2s] = "\\E1* .../"
    stog.msg[3s] = "\\E0* Well^1, I hope that&  I am not keeping&  you./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 201s
0x001368:
    if !(== self.con 201s) goto 0x001394
0x00137C:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x001398
0x001394:
    push 0s
0x001398:
    if !pop goto 0x0013F4
0x00139C:
    if !(== 782.stringno 1s) goto 0x0013C8
0x0013B0:
    push 1112s
    stog.sprite_index* = (int32 self.tor)
0x0013C8:
    if !(== 782.stringno 3s) goto 0x0013F4
0x0013DC:
    push 1108s
    stog.sprite_index* = (int32 self.tor)
0x0013F4:
    if !(== self.con 201s) goto 0x001424
0x001408:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001428
0x001424:
    push 0s
0x001428:
    if !pop goto 0x001464
0x00142C:
    push 1112s
    stog.sprite_index* = (int32 self.tor)
    self.con = 203s
    stog.alarm[4s] = 15s
0x001464:
    if !(== self.con 204s) goto 0x0014B0
0x001478:
    push 1107s
    stog.sprite_index* = (int32 self.tor)
    self.con = 205s
    stog.alarm[4s] = 15s
0x0014B0:
    if !(== self.con 206s) goto 0x0014E4
0x0014C4:
    stog.alarm[4s] = 27s
    self.con = 207s
0x0014E4:
    if !(== self.con 207s) goto 0x001540
0x0014F8:
    stog.x* = (+ (int32 self.tor):x 1s)
    push 0.1d
    stog.image_speed* = (int32 self.tor)
0x001540:
    push (int32 self.tor)
    if !(== self.con 208s) goto 0x0015A4
0x001554:
    push 0s
    stog.image_speed* = (int32 self.tor)
    push 0s
    stog.image_index* = (int32 self.tor)
    self.con = 209s
    stog.alarm[4s] = 90s
0x0015A4:
    if !(== self.con 210s) goto 0x0015F0
0x0015B8:
    push 1108s
    stog.sprite_index* = (int32 self.tor)
    self.con = 211s
    stog.alarm[4s] = 50s
0x0015F0:
    if !(== self.con 212s) goto 0x001684
0x001604:
    stog.flag[512s] = 1s
    global.faceemotion = 0s
    stog.msg[0s] = "* Frisk./"
    stog.msg[1s] = "* \"See you around.\"/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 213s
0x001684:
    if !(== self.con 213s) goto 0x0016B4
0x001698:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0016B8
0x0016B4:
    push 0s
0x0016B8:
    if !pop goto 0x0016F4
0x0016BC:
    push 1108s
    stog.sprite_index* = (int32 self.tor)
    self.con = 214s
    stog.alarm[4s] = 60s
0x0016F4:
    if !(== self.con 215s) goto 0x001740
0x001708:
    push 1107s
    stog.sprite_index* = (int32 self.tor)
    self.con = 216s
    stog.alarm[4s] = 80s
0x001740:
    if !(== self.con 217s) goto 0x0017EC
0x001754:
    push 1044s
    stog.sprite_index* = (int32 self.mc)
    stog.x* = (+ (int32 self.tor):x 3s)
    push 0.25d
    stog.image_speed* = (int32 self.tor)
    if !(>= (int32 self.tor):x (+ self.room_width 100s)) goto 0x0017EC
0x0017E0:
    push (int32 self.tor)
    self.con = 105s
0x0017EC:
    exit
