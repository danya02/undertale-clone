0x000000:
    push self.hplastturn
    if !(== -5s (int32 self.myself):monsterhp) goto 0x00003C
0x000028:
    push (== global.talked -1s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00006C
0x000044:
    self.conversation = (+ self.conversation 1s)
    self.iwilltalk = 1s
    goto 0x000078
0x00006C:
    self.iwilltalk = 0s
0x000078:
    push -5s
    self.hplastturn = (int32 self.myself):monsterhp
    push -5s
    if !(> (int32 self.myself):monsterhp 0s) goto 0x0009C4
0x0000BC:
    if !(== self.iwilltalk 1s) goto 0x0009C0
0x0000D0:
    global.turntimer = -300s
    push -1s
    stog.alarm[(+ 5s:alarm 70s)] = 5s
    if !(== self.conversation 1s) goto 0x00012C
0x000114:
    stog.msg[0s] = " ....."
0x00012C:
    if !(== self.conversation 2s) goto 0x000158
0x000140:
    stog.msg[0s] = " .....& ....."
0x000158:
    if !(== self.conversation 3s) goto 0x000184
0x00016C:
    stog.msg[0s] = " .....& .....& ....."
0x000184:
    if !(== self.conversation 4s) goto 0x0001B0
0x000198:
    stog.msg[0s] = " ...?"
0x0001B0:
    if !(== self.conversation 5s) goto 0x0001DC
0x0001C4:
    stog.msg[0s] = " What are& you& doing?"
0x0001DC:
    if !(== self.conversation 6s) goto 0x000208
0x0001F0:
    stog.msg[0s] = " Attack& or run& away!"
0x000208:
    if !(== self.conversation 7s) goto 0x000234
0x00021C:
    stog.msg[0s] = " What are& you& proving& this way?"
0x000234:
    if !(== self.conversation 8s) goto 0x000260
0x000248:
    stog.msg[0s] = " Fight me& or& leave!"
0x000260:
    if !(== self.conversation 9s) goto 0x00028C
0x000274:
    stog.msg[0s] = " Stop it."
0x00028C:
    if !(== self.conversation 10s) goto 0x0002C4
0x0002A0:
    call (instance_create[]:int32 (var 700s) self.y self.x)
0x0002C4:
    if !(== self.conversation 10s) goto 0x0002F0
0x0002D8:
    stog.msg[0s] = " Stop& looking& at me& that way."
0x0002F0:
    if !(== self.conversation 11s) goto 0x00031C
0x000304:
    stog.msg[0s] = " Go away!"
0x00031C:
    if !(== self.conversation 12s) goto 0x000348
0x000330:
    stog.msg[0s] = " ..."
0x000348:
    if !(== self.conversation 12s) goto 0x000368
0x00035C:
    self.sprite_index = 735s
0x000368:
    if !(== self.conversation 13s) goto 0x000394
0x00037C:
    stog.msg[0s] = " ...& ..."
0x000394:
    if !(== self.conversation 13s) goto 0x0003B4
0x0003A8:
    self.sprite_index = 730s
0x0003B4:
    if !(> self.conversation 13s) goto 0x000908
0x0003C8:
    push -1s
    stog.alarm[(+ 5s:alarm 400s)] = 5s
    if !(== self.conversation 14s) goto 0x000414
0x000400:
    call (caster_free[]:int32 global.batmusic)
0x000414:
    global.mercy = 1s
    if !(== self.conversation 14s) goto 0x000440
0x000434:
    self.sprite_index = 728s
0x000440:
    if !(== self.conversation 14s) goto 0x00046C
0x000454:
    stog.msg[0s] = "I know you want&to go home^1, but..."
0x00046C:
    if !(> self.conversation 15s) goto 0x00048C
0x000480:
    self.sprite_index = 727s
0x00048C:
    if !(== self.conversation 15s) goto 0x0004B8
0x0004A0:
    stog.msg[0s] = "But please... go&upstairs now."
0x0004B8:
    if !(== self.conversation 16s) goto 0x0004E4
0x0004CC:
    stog.msg[0s] = "I promise I will&take good care&of you here."
0x0004E4:
    if !(== self.conversation 17s) goto 0x000510
0x0004F8:
    stog.msg[0s] = "I know we do not&have much^1, but..."
0x000510:
    if !(== self.conversation 18s) goto 0x00053C
0x000524:
    stog.msg[0s] = "We can have a&good life here."
0x00053C:
    if !(== self.conversation 19s) goto 0x00055C
0x000550:
    self.sprite_index = 728s
0x00055C:
    if !(== self.conversation 19s) goto 0x000588
0x000570:
    stog.msg[0s] = "Why are you&making this so&difficult?"
0x000588:
    if !(== self.conversation 20s) goto 0x0005A8
0x00059C:
    self.sprite_index = 730s
0x0005A8:
    if !(== self.conversation 20s) goto 0x0005D4
0x0005BC:
    stog.msg[0s] = "Please^1, go upstairs."
0x0005D4:
    if !(== self.conversation 21s) goto 0x0005F4
0x0005E8:
    self.sprite_index = 732s
0x0005F4:
    if !(== self.conversation 21s) goto 0x000620
0x000608:
    stog.msg[0s] = "....."
0x000620:
    if !(== self.conversation 22s) goto 0x000640
0x000634:
    self.sprite_index = 733s
0x000640:
    if !(== self.conversation 22s) goto 0x00066C
0x000654:
    stog.msg[0s] = "Ha ha..."
0x00066C:
    if !(== self.conversation 23s) goto 0x000698
0x000680:
    stog.msg[0s] = "Pathetic^1, is it not^2?&I cannot save even&a single child."
0x000698:
    if !(== self.conversation 24s) goto 0x0006C4
0x0006AC:
    stog.msg[0s] = "..."
0x0006C4:
    if !(== self.conversation 24s) goto 0x0006E4
0x0006D8:
    self.sprite_index = 730s
0x0006E4:
    if !(== self.conversation 25s) goto 0x00087C
0x0006F8:
    stog.flag[27s] = 1s
    self.sprite_index = 731s
    stog.alarm[5s] = -6s
    self.conversation = 99s
    stog.flag[45s] = 5s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.TS = (ini_read_real[]:int32 (var 0s) (var "TS") (var "Toriel"))
    call (ini_write_real[]:int32 (+ self.TS 1s) (var "TS") (var "Toriel"))
    call (ini_close[]:int32 )
    stog.msg[0s] = "No^1, I understand./"
    stog.msg[1s] = "You would just be&unhappy trapped&down here./"
    stog.msg[2s] = "The RUINS are very&small once you&get used to them./"
    stog.msg[3s] = "It would not be&right for you to&grow up in a&place like this./"
    stog.msg[4s] = "My expectations...&My loneliness...&My fear.../"
    stog.msg[5s] = "For you^1, my child...&I will put them aside./%%"
    global.mnfight = 99s
    global.myfight = 0s
0x00087C:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 32s) (+ (+ self.x self.sprite_width) 3s))
    global.typer = 8s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ 187.y 10s) (+ 187.x 36s))
    goto 0x00094C
0x000908:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.ystart 24s) (+ (+ self.x self.sprite_width) 21s))
0x00094C:
    global.typer = 8s
    if !(bool (instance_exists[]:int32 (var 186s))) goto 0x0009C0
0x000970:
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
0x0009C0:
    goto 0x000D54
0x0009C4:
    self.destroyed = 1s
    global.faceemotion = 0s
    call (caster_free[]:int32 global.batmusic)
    if !(bool (instance_exists[]:int32 self.dmgwriter)) goto 0x000A28
0x000A08:
    pushenv (int32 self.dmgwriter) 0x000A24
0x000A18:
    call (instance_destroy[]:int32 )
0x000A24:
    popenv 0x000A18
0x000A28:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 36s) (+ (+ self.x self.sprite_width) 2s))
    global.msc = 0s
    stog.msg[0s] = "\\E0Urgh.../"
    stog.msg[1s] = "\\E0You are stronger&than I thought.../"
    stog.msg[2s] = "Listen to me^1,& small one.../"
    stog.msg[3s] = "If you go beyond&this door,/"
    stog.msg[4s] = "Keep walking as&far as you can./"
    stog.msg[5s] = "Eventually you will&reach an exit./"
    stog.msg[6s] = "\\E1..^1.&..../"
    stog.msg[7s] = "\\RASGORE\\X..^1.&Do not let \\RASGORE\\X &take your soul./"
    stog.msg[8s] = "His plan&cannot be allowed&to succeed./"
    stog.msg[9s] = "\\E2....../"
    stog.msg[10s] = "Be good^1,&won't you?/"
    stog.msg[11s] = "\\E3My child.      %%"
    push -5s
    if !(>= 202s:flag 20s) goto 0x000C38
0x000BB4:
    global.faceemotion = 4s
    stog.msg[0s] = "Y... you...&really hate me&that much?/"
    stog.msg[1s] = "Now I see who I&was protecting by&keeping you here./"
    stog.msg[2s] = "Not you.../"
    stog.msg[3s] = "\\E5But them!/"
    stog.msg[4s] = "\\E3Ha... ha... %%"
0x000C38:
    if !(> self.conversation 13s) goto 0x000CD0
0x000C4C:
    global.faceemotion = 4s
    stog.msg[0s] = "\\E4You.../"
    stog.msg[1s] = "... at my most&vulnerable&moment.../"
    stog.msg[2s] = "To think I was&worried you&wouldn't fit&in out there.../"
    stog.msg[3s] = "\\E5Eheheheh!!!&You really are&no different than&them!/"
    stog.msg[4s] = "\\E3Ha... ha... %%"
0x000CD0:
    global.plot = 11s
    self.conversation = 1s
    self.image_speed = 0.2d
    global.typer = 12s
    self.blconwriter = (instance_create[]:int32 (var 782s) (+ 187.y 10s) (+ 187.x 36s))
    stog.alarm[9s] = 2s
0x000D54:
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    global.border = 6s
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x000E10:
    exit
