0x000000:
    if !(== self.active 1s) goto 0x000470
0x000014:
    global.typer = 5s
    global.msc = 0s
    global.facechoice = 0s
    if !(== self.con 0s) goto 0x0000EC
0x00004C:
    stog.msg[0s] = "* Ahuhuhuhu.../"
    stog.msg[1s] = "* Did you hear what they&  just said?/%%"
    if !(== self.murder 1s) goto 0x0000A8
0x000090:
    stog.msg[1s] = "* Did you hear what she&  said?/%%"
0x0000A8:
    call (snd_play[]:int32 (var 35s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x0000EC:
    if !(== self.con 1s) goto 0x00015C
0x000100:
    stog.msg[0s] = "* They said a human wearing a&  striped shirt will come&  through./%%"
    call (snd_play[]:int32 (var 35s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x00015C:
    if !(== self.con 2s) goto 0x0001CC
0x000170:
    stog.msg[0s] = "* I heard that they hate&  spiders./%%"
    call (snd_play[]:int32 (var 35s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x0001CC:
    if !(== self.con 3s) goto 0x000268
0x0001E0:
    stog.msg[0s] = "* I heard that they love to&  stomp on them./%%"
    if !(== self.murder 1s) goto 0x000224
0x00020C:
    stog.msg[1s] = "* I heard that they hate&  everybody./%%"
0x000224:
    call (snd_play[]:int32 (var 35s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x000268:
    if !(== self.con 4s) goto 0x0002D8
0x00027C:
    stog.msg[0s] = "* I heard that they like to&  tear their legs off./%%"
    call (snd_play[]:int32 (var 35s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x0002D8:
    if !(== self.con 5s) goto 0x0003AC
0x0002EC:
    push -5s
    if !(< 59s:flag 9000s) goto 0x000324
0x000308:
    stog.msg[0s] = "* I heard.../%%"
    goto 0x000368
0x000324:
    stog.msg[0s] = "* However.../%%"
    if !(== self.murder 1s) goto 0x000368
0x000350:
    stog.msg[0s] = "* And even if they gave us&  money^1, I heard.../%%"
0x000368:
    call (snd_play[]:int32 (var 35s))
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 90s
0x0003AC:
    if !(== self.con 90s) goto 0x0003DC
0x0003C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003E0
0x0003DC:
    push 0s
0x0003E0:
    if !pop goto 0x000470
0x0003E4:
    global.interact = 0s
    self.active = 0s
    self.x = (+ self.x 90s)
    push -5s
    stog.flag[(+ 396s:flag 1s)] = 396s
    push -5s
    self.con = 396s:flag
    if !(== self.con 6s) goto 0x000470
0x000464:
    self.pausewait = 1s
0x000470:
    if !(== self.pausewait 1s) goto 0x00050C
0x000484:
    stog.flag[17s] = 1s
    if !(== 1570.image_speed 0s) goto 0x0004C8
0x0004AC:
    self.pausewaittime = (+ self.pausewaittime 3s)
    goto 0x0004E0
0x0004C8:
    self.pausewaittime = (+ self.pausewaittime 1s)
0x0004E0:
    if !(> self.pausewaittime 150s) goto 0x00050C
0x0004F4:
    self.pausewait = 0s
    self.con = 15s
0x00050C:
    if !(== self.con 15s) goto 0x000534
0x000520:
    push (== global.interact 0s)
    goto 0x000538
0x000534:
    push 0s
0x000538:
    if !pop goto 0x00063C
0x00053C:
    global.interact = 1s
    stog.flag[17s] = 0s
    self.bigweb = (scr_marker[]:int32 (var 1801s) (var 84s) (var 582s))
    push 99999
    stog.depth* = (int32 self.bigweb)
    self.muffet = (scr_marker[]:int32 (var 1802s) (var 96s) (var 635s))
    push 99998
    stog.depth* = (int32 self.muffet)
    push 0s
    stog.image_alpha* = (int32 self.bigweb)
    push 0s
    stog.image_alpha* = (int32 self.muffet)
    self.con = 15.1d
    stog.alarm[4s] = 30s
0x00063C:
    if !(== self.con 15.1d) goto 0x0006B8
0x000658:
    stog.image_alpha* = (+ (int32 self.bigweb):image_alpha 0.04d)
    stog.image_alpha* = (+ (int32 self.muffet):image_alpha 0.04d)
0x0006B8:
    push (int32 self.bigweb)
    push (int32 self.muffet)
    if !(== self.con 16.1d) goto 0x000A54
0x0006D4:
    stog.hspider[0s] = (instance_create[]:int32 (var 1234s) (var -20s) (var 556s))
    push 3s
    push -1s
    stog.vspeed* = (int32 0s:hspider)
    push 38s
    stog.alarm[(int32 0s:hspider)] = 5s
    stog.hspider[1s] = (instance_create[]:int32 (var 1234s) (var -20s) (var 600s))
    push 3s
    push -1s
    stog.vspeed* = (int32 1s:hspider)
    push 35s
    stog.alarm[(int32 1s:hspider)] = 5s
    stog.hspider[2s] = (instance_create[]:int32 (var 1234s) (var -20s) (var 684s))
    push 3s
    push -1s
    stog.vspeed* = (int32 2s:hspider)
    push 35s
    stog.alarm[(int32 2s:hspider)] = 5s
    stog.hspider[3s] = (instance_create[]:int32 (var 1234s) (var -20s) (var 720s))
    push 3s
    push -1s
    stog.vspeed* = (int32 3s:hspider)
    push 38s
    stog.alarm[(int32 3s:hspider)] = 5s
    self.ss1 = (scr_marker[]:int32 (var 1804s) (var 180s) (var 428s))
    self.ss2 = (scr_marker[]:int32 (var 1804s) (var 170s) (var 438s))
    push 0.25d
    stog.image_speed* = (int32 self.ss1)
    push 4s
    stog.hspeed* = (int32 self.ss1)
    push 3.5d
    stog.hspeed* = (int32 self.ss2)
    push 0.25d
    stog.image_speed* = (int32 self.ss2)
    self.ss3 = (scr_marker[]:int32 (var 1804s) (var 180s) (var 854s))
    self.ss4 = (scr_marker[]:int32 (var 1804s) (var 170s) (var 864s))
    push -4s
    stog.hspeed* = (int32 self.ss3)
    push 0.25d
    stog.image_speed* = (int32 self.ss3)
    push -3.5d
    stog.hspeed* = (int32 self.ss4)
    push 0.25d
    stog.image_speed* = (int32 self.ss4)
    self.con = 16s
    stog.alarm[4s] = 20s
0x000A54:
    if !(== self.con 17s) goto 0x000D84
0x000A68:
    push 0s
    stog.speed* = (int32 self.ss1)
    push 0s
    stog.speed* = (int32 self.ss2)
    push 0s
    stog.speed* = (int32 self.ss3)
    push 0s
    stog.speed* = (int32 self.ss4)
    push 0s
    stog.image_speed* = (int32 self.ss1)
    push 0s
    stog.image_speed* = (int32 self.ss2)
    push 0s
    stog.image_speed* = (int32 self.ss3)
    push 0s
    stog.image_speed* = (int32 self.ss4)
    self.conner = 0s
    global.facing = 2s
    global.typer = 5s
    global.msc = 0s
    global.facechoice = 0s
    push -5s
    if !(< 59s:flag 9000s) goto 0x000C58
0x000B80:
    push -5s
    if !(== 11s:tempvalue 0s) goto 0x000BB8
0x000B9C:
    stog.msg[0s] = "* ... that they're awfully&  stingy with their money./"
    goto 0x000BD0
0x000BB8:
    stog.msg[0s] = "* ... a certain stingy human&  hates spiders./%%"
0x000BD0:
    stog.msg[1s] = "* Ahuhuhuhu.../"
    stog.msg[2s] = "* You think your taste&  is too refined for our&  pastries^1, don't you^1, deary?/"
    stog.msg[3s] = "* Ahuhuhu..^1.&* I disagree with that&  notion./"
    stog.msg[4s] = "* I think your taste.../"
    stog.msg[5s] = "* Is exactly what this&  next batch needs!/%%"
    self.con = 18s
    goto 0x000CDC
0x000C58:
    stog.msg[0s] = "* ... that can't be true^1,&  can it?/"
    stog.msg[1s] = "* Ahuhuhu.../"
    stog.msg[2s] = "* You donated so much money&  to us./"
    stog.msg[3s] = "* All the spiders want you&  to know how thankful&  they are!/"
    stog.msg[4s] = "* We're in your debt^1, dearie~/%%"
    self.con = 40s
0x000CDC:
    if !(== self.murder 1s) goto 0x000D44
0x000CF0:
    stog.msg[0s] = "* ... that they have some awful&  taste./"
    stog.msg[1s] = "* What a shame^1.&* A human comes through and they&  aren't even fit to be eaten~/"
    stog.msg[2s] = "* Oh well^1!&* Rotten ingredients can&  always be discarded~/%%"
    self.con = 18s
0x000D44:
    self.dr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dr)
0x000D84:
    if !(== self.con 18s) goto 0x000DB4
0x000D98:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000DB8
0x000DB4:
    push 0s
0x000DB8:
    if !pop goto 0x000E0C
0x000DBC:
    if !(== self.conner 0s) goto 0x000DE4
0x000DD0:
    push (== 782.stringno 1s)
    goto 0x000DE8
0x000DE4:
    push 0s
0x000DE8:
    if !pop goto 0x000E0C
0x000DEC:
    call (snd_play[]:int32 (var 35s))
    self.conner = 1s
0x000E0C:
    if !(== self.con 18s) goto 0x000E3C
0x000E20:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E40
0x000E3C:
    push 0s
0x000E40:
    if !pop goto 0x000E64
0x000E44:
    self.con = 19s
    stog.alarm[4s] = 50s
0x000E64:
    if !(== self.con 19s) goto 0x000EE8
0x000E78:
    stog.image_index* = (+ (int32 self.muffet):image_index 0.25d)
    if !(>= (int32 self.muffet):image_index 5.75d) goto 0x000EE8
0x000ED0:
    push (int32 self.muffet)
    push 4s
    stog.image_index* = (int32 self.muffet)
0x000EE8:
    if !(== self.con 20s) goto 0x000F58
0x000EFC:
    global.mercy = 1s
    global.battlegroup = 56s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 21s
    stog.alarm[4s] = 33s
0x000F58:
    if !(== self.con 21s) goto 0x000F78
0x000F6C:
    global.interact = 1s
0x000F78:
    if !(== self.con 22s) goto 0x001124
0x000F8C:
    self.con = 23s
    pushenv (int32 self.ss1) 0x000FB4
0x000FA8:
    call (instance_destroy[]:int32 )
0x000FB4:
    popenv 0x000FA8
0x000FB8:
    pushenv (int32 self.ss2) 0x000FD4
0x000FC8:
    call (instance_destroy[]:int32 )
0x000FD4:
    popenv 0x000FC8
0x000FD8:
    pushenv (int32 self.ss3) 0x000FF4
0x000FE8:
    call (instance_destroy[]:int32 )
0x000FF4:
    popenv 0x000FE8
0x000FF8:
    pushenv (int32 self.ss4) 0x001014
0x001008:
    call (instance_destroy[]:int32 )
0x001014:
    popenv 0x001008
0x001018:
    push -5s
    if !(== 12s:flag 1s) goto 0x0010A4
0x001034:
    stog.flag[397s] = 1s
    pushenv (int32 self.muffet) 0x001064
0x001058:
    call (instance_destroy[]:int32 )
0x001064:
    popenv 0x001058
0x001068:
    pushenv 1234s 0x00107C
0x001070:
    call (instance_destroy[]:int32 )
0x00107C:
    popenv 0x001070
0x001080:
    pushenv (int32 self.bigweb) 0x00109C
0x001090:
    call (instance_destroy[]:int32 )
0x00109C:
    popenv 0x001090
0x0010A0:
    goto 0x0010E0
0x0010A4:
    push 0s
    stog.image_speed* = (int32 self.muffet)
    push 0s
    stog.image_index* = (int32 self.muffet)
    self.con = 30s
0x0010E0:
    pushenv 1236s 0x0010F4
0x0010E8:
    call (instance_destroy[]:int32 )
0x0010F4:
    popenv 0x0010E8
0x0010F8:
    [obj_mainchara].cutscene = 0s
    global.interact = 1s
    stog.alarm[4s] = 15s
0x001124:
    if (== self.con 23s) goto 0x00114C
0x001138:
    push (== self.con 30s)
    goto 0x001150
0x00114C:
    push 1s
0x001150:
    if !pop goto 0x001160
0x001154:
    global.interact = 1s
0x001160:
    if !(== self.con 24s) goto 0x001180
0x001174:
    self.con = 60s
0x001180:
    if !(== self.con 31s) goto 0x001248
0x001194:
    call (snd_play[]:int32 (var 35s))
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = "* Ahuhuhuhu.../"
    stog.msg[1s] = "* That was fun^1!&* See you again^1, dearie!/%%"
    self.con = 32s
    self.gr = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.gr)
0x001248:
    if !(== self.con 32s) goto 0x001278
0x00125C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00127C
0x001278:
    push 0s
0x00127C:
    if !pop goto 0x0012A0
0x001280:
    self.con = 33s
    stog.alarm[4s] = 40s
0x0012A0:
    if !(== self.con 33s) goto 0x0012D0
0x0012B4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012D4
0x0012D0:
    push 0s
0x0012D4:
    if !pop goto 0x001348
0x0012D8:
    stog.image_index* = (+ (int32 self.muffet):image_index 0.25d)
    if !(>= (int32 self.muffet):image_index 5.75d) goto 0x001348
0x001330:
    push (int32 self.muffet)
    push 4s
    stog.image_index* = (int32 self.muffet)
0x001348:
    if !(== self.con 34s) goto 0x00137C
0x00135C:
    self.con = 35s
    stog.alarm[4s] = 40s
0x00137C:
    if !(== self.con 35s) goto 0x00141C
0x001390:
    stog.image_alpha* = (- (int32 self.muffet):image_alpha 0.04d)
    stog.image_alpha* = (- (int32 self.bigweb):image_alpha 0.04d)
    pushenv 1234s 0x001418
0x0013F8:
    push (int32 self.muffet)
    push (int32 self.bigweb)
    self.vspeed = -4s
    self.image_speed = 0.2d
0x001418:
    popenv 0x0013F8
0x00141C:
    if !(== self.con 36s) goto 0x00143C
0x001430:
    self.con = 60s
0x00143C:
    if !(== self.con 40s) goto 0x00146C
0x001450:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001470
0x00146C:
    push 0s
0x001470:
    if !pop goto 0x0015A8
0x001474:
    push 0.25d
    stog.image_speed* = (int32 self.ss1)
    push -4s
    stog.hspeed* = (int32 self.ss1)
    push -3.5d
    stog.hspeed* = (int32 self.ss2)
    push 0.25d
    stog.image_speed* = (int32 self.ss2)
    push 4s
    stog.hspeed* = (int32 self.ss3)
    push 0.25d
    stog.image_speed* = (int32 self.ss3)
    push 3.5d
    stog.hspeed* = (int32 self.ss4)
    push 0.25d
    stog.image_speed* = (int32 self.ss4)
    pushenv 1236s 0x001578
0x00156C:
    call (instance_destroy[]:int32 )
0x001578:
    popenv 0x00156C
0x00157C:
    [obj_mainchara].cutscene = 0s
    self.con = 35s
    stog.alarm[4s] = 40s
0x0015A8:
    if !(== self.con 60s) goto 0x00162C
0x0015BC:
    global.plot = 165s
    global.mercy = 0s
    global.border = 0s
    stog.flag[17s] = 0s
    global.interact = 0s
    if !(== self.murder 1s) goto 0x001620
0x001614:
    global.plot = 185s
0x001620:
    call (instance_destroy[]:int32 )
0x00162C:
    exit
