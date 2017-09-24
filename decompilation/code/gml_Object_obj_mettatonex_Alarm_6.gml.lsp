0x000000:
    global.msc = 0s
    pushenv 782s 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    popenv 0x000014
0x000024:
    self.turns = (+ self.turns 1s)
    self.textsize = 0s
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    stog.msg[0s] = ".../%%"
    if !(== self.turns 1s) goto 0x0000D8
0x0000B4:
    self.textsize = 0s
    stog.msg[0s] = "Lights!&Camera!&Action!/%%"
0x0000D8:
    if !(== self.turns 2s) goto 0x000110
0x0000EC:
    self.textsize = 0s
    stog.msg[0s] = "Drama!&Romance!&Blood-&shed!/%%"
0x000110:
    if !(== self.turns 3s) goto 0x000148
0x000124:
    self.textsize = 0s
    stog.msg[0s] = "I'm the&idol&everyone&craves!/%%"
0x000148:
    if !(== self.turns 4s) goto 0x000180
0x00015C:
    self.textsize = 0s
    stog.msg[0s] = "Smile&for the&camera!/%%"
0x000180:
    if !(== self.turns 5s) goto 0x0001E8
0x000194:
    self.textsize = 1s
    stog.msg[0s] = "Oooh, it's time&for a pop quiz!/"
    stog.msg[1s] = "I hope you brought&a keyboard.../"
    stog.msg[2s] = "This one's an&essay question!/%%"
0x0001E8:
    if !(== self.turns 6s) goto 0x000244
0x0001FC:
    self.textsize = 1s
    stog.msg[0s] = "Your essay really&showed everyone&your heart./"
    stog.msg[1s] = "Why don't I show&you mine?/%%"
    [obj_mettb_body].dancewait = 20s
0x000244:
    if !(== self.turns 7s) goto 0x000288
0x000258:
    [obj_mettb_body].dancewait = 18s
    self.textsize = 0s
    stog.msg[0s] = "Ooooh,&I'm just&warming&up!/%%"
0x000288:
    if !(== self.turns 8s) goto 0x0002CC
0x00029C:
    self.textsize = 1s
    stog.msg[0s] = "But how are you&on the dance floor!?/%%"
    [obj_mettb_body].dancewait = 15s
0x0002CC:
    if !(== self.turns 9s) goto 0x000310
0x0002E0:
    self.textsize = 0s
    stog.msg[0s] = "Can you&keep up&the&pace!?/%%"
    [obj_mettb_body].dancewait = 12s
0x000310:
    if !(== self.turns 10s) goto 0x000348
0x000324:
    stog.msg[0s] = "Lights!&Camera&Bombs!/%%"
    [obj_mettb_body].dancewait = 9s
0x000348:
    if !(== self.turns 11s) goto 0x000380
0x00035C:
    stog.msg[0s] = "Things&are&blowing&up!/%%"
    [obj_mettb_body].dancewait = 6s
0x000380:
    if !(== self.turns 12s) goto 0x0003C4
0x000394:
    [obj_mettb_body].dancewait = 3s
    self.textsize = 1s
    stog.msg[0s] = "Time for our union-&regulated break!/%%"
0x0003C4:
    if !(== self.turns 13s) goto 0x000420
0x0003D8:
    [obj_mettb_body].dancewait = 60s
    self.textsize = 1s
    stog.msg[0s] = "We've grown so&distant, darling.../"
    stog.msg[1s] = "How about another&heart-to-heart?/%%"
0x000420:
    if !(== self.turns 14s) goto 0x000494
0x000434:
    self.textsize = 1s
    [obj_mettb_body].dancewait = 80s
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 8s
    stog.msg[0s] = "A.. arms?&Wh... who needs arms&with legs like&these?/"
    stog.msg[1s] = "I'm still going&to win!/%%"
0x000494:
    if !(== self.turns 15s) goto 0x0004F0
0x0004A8:
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 8s
    self.textsize = 0s
    [obj_mettb_body].dancewait = 120s
    stog.msg[0s] = "Come on&...!/%%"
0x0004F0:
    if !(== self.turns 16s) goto 0x000540
0x000504:
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 8s
    [obj_mettb_body].dancewait = 180s
    stog.msg[0s] = "The show&...&must go&on!/%%"
0x000540:
    if !(== self.turns 17s) goto 0x000590
0x000554:
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 8s
    [obj_mettb_body].dancewait = 240s
    stog.msg[0s] = "Dr...&Drama!&A...&Action!/%%"
0x000590:
    if !(== self.turns 18s) goto 0x00061C
0x0005A4:
    self.textsize = 1s
    [obj_mettb_body].dance = -1s
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 5s
    stog.msg[0s] = "\\E5L... lights...&C... camera.../"
    stog.msg[1s] = "Enough of this!&Do you really want&humanity to perish!?/"
    stog.msg[2s] = "\\E7... or do you just&believe in yourself&that much?/%%"
0x00061C:
    if !(== self.turns 19s) goto 0x0006C0
0x000630:
    self.textsize = 1s
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 5s
    [obj_mettb_body].dance = -1s
    stog.msg[0s] = "Haha, how inspiring!/"
    stog.msg[1s] = "Well, darling!&It's either me&or you!/"
    stog.msg[2s] = "\\E4But I think we both&already know who's&going to win./"
    stog.msg[3s] = "\\E8Witness the true&power of humanity's&star!/%%"
0x0006C0:
    if !(== self.turns 20s) goto 0x00074C
0x0006D4:
    self.textsize = 1s
    [obj_mettb_body].face_set = 1s
    global.faceemotion = 7s
    [obj_mettb_body].dance = -1s
    stog.msg[0s] = "... then.../"
    stog.msg[1s] = "\\E8Are YOU the star?/"
    stog.msg[2s] = "Can you really&protect humanity!?/%%"
0x00074C:
    global.typer = 51s
    if !(== self.textsize 0s) goto 0x0007F0
0x00076C:
    self.blcon = (instance_create[]:int32 (var 186s) self.y (+ self.x 200s))
    self.blconwd = (instance_create[]:int32 (var 784s) (- (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 10s))
    goto 0x000870
0x0007F0:
    self.blcon = (instance_create[]:int32 (var 187s) self.y (+ self.x 200s))
    self.blconwd = (instance_create[]:int32 (var 784s) (- (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 20s))
0x000870:
    global.border = 24s
    if (== self.turns 14s) goto 0x0008B8
0x000890:
    if (== self.turns 15s) goto 0x0008B8
0x0008A4:
    push (== self.turns 23s)
    goto 0x0008BC
0x0008B8:
    push 1s
0x0008BC:
    if !pop goto 0x0008CC
0x0008C0:
    global.border = 27s
0x0008CC:
    if (== self.turns 10s) goto 0x00091C
0x0008E0:
    if (== self.turns 11s) goto 0x00091C
0x0008F4:
    if (== self.turns 18s) goto 0x00091C
0x000908:
    push (== self.turns 24s)
    goto 0x000920
0x00091C:
    push 1s
0x000920:
    if !pop goto 0x000930
0x000924:
    global.border = 26s
0x000930:
    if !(== self.turns 6s) goto 0x00096C
0x000944:
    pushenv (int32 self.mypart1) 0x000968
0x000954:
    call (event_user[]:int32 (var 1s))
0x000968:
    popenv 0x000954
0x00096C:
    if !(== self.turns 13s) goto 0x0009A8
0x000980:
    pushenv (int32 self.mypart1) 0x0009A4
0x000990:
    call (event_user[]:int32 (var 1s))
0x0009A4:
    popenv 0x000990
0x0009A8:
    if !(== self.turns 19s) goto 0x0009E4
0x0009BC:
    pushenv (int32 self.mypart1) 0x0009E0
0x0009CC:
    call (event_user[]:int32 (var 1s))
0x0009E0:
    popenv 0x0009CC
0x0009E4:
    if !(== self.turns 20s) goto 0x000A20
0x0009F8:
    pushenv (int32 self.mypart1) 0x000A1C
0x000A08:
    call (event_user[]:int32 (var 1s))
0x000A1C:
    popenv 0x000A08
0x000A20:
    if !(== self.turns 25s) goto 0x000A5C
0x000A34:
    pushenv (int32 self.mypart1) 0x000A58
0x000A44:
    call (event_user[]:int32 (var 1s))
0x000A58:
    popenv 0x000A44
0x000A5C:
    if !(== self.turns 5s) goto 0x000A7C
0x000A70:
    global.border = 0s
0x000A7C:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    self.talked = 2s
0x000B18:
    exit
