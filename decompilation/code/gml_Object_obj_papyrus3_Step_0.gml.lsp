0x000000:
    if !(== self.conversation 1s) goto 0x000188
0x000014:
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.5d
    stog.fadespeed* = (int32 self.fade)
    global.currentsong = (caster_load[]:int32 (var "music/papyrus.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.6d) global.currentsong)
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    global.interact = 1s
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    stog.msg[0s] = "HUMAN!!^1!&I HOPE YOU'RE&READY FOR.../%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000188:
    if !(== self.conversation 2s) goto 0x0001B8
0x00019C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x000230
0x0001C0:
    self.conversation = 3s
    self.xxblcon = (instance_create[]:int32 (var 1337s) (- (int32 self.papyrus):y 12s) (+ (int32 self.papyrus):x 3s))
    stog.alarm[0s] = 45s
0x000230:
    if !(== self.conversation 4s) goto 0x00035C
0x000244:
    global.msc = 0s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 1s
    global.interact = 1s
    push 1337s
    stog.sprite_index* = (int32 self.papyrus)
    stog.msg[0s] = "SANS!^1!&WHERE'S THE&PUZZLE!!!/"
    call (scr_sansface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "* it's right there^1.&* on the ground./"
    stog.msg[3s] = "\\E1* trust me^1.&* there's no way they can&  get past this one./%%"
    if !(== self.murder 1s) goto 0x000328
0x000310:
    stog.msg[3s] = "\\E1* trust me^1.&* there's no way they'll&  skip this one./%%"
0x000328:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 6s
0x00035C:
    if !(== self.conversation 6s) goto 0x00038C
0x000370:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x000458
0x000394:
    call (instance_create[]:int32 (var 1008s) (var 0s) (var 10s))
    push (int32 self.papyrus):ltsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):ltsprite
    stog.sprite_index* = (int32 self.sans)
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.conversation = 7s
    self.x = 220s
    global.interact = 0s
    self.solid = 0s
0x000458:
    if !(== self.conversation 8s) goto 0x000488
0x00046C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00048C
0x000488:
    push 0s
0x00048C:
    if !pop goto 0x00049C
0x000490:
    self.conversation = 22s
0x00049C:
    if !(== self.conversation 22s) goto 0x0006A8
0x0004B0:
    global.interact = 1s
    global.msc = 228s
    global.faceemotion = 1s
    global.facechoice = 4s
    global.typer = 19s
    if !(== self.murder 1s) goto 0x000674
0x000500:
    global.msc = 0s
    push -5s
    if !(== 254s:flag 1s) goto 0x0005C4
0x000528:
    stog.msg[0s] = "WHAT THE HECK!!^1!&THEY DIDN'T SKIP&IT!?!?/"
    call (scr_sansface[]:int32 (var 2s) (var 1s))
    stog.msg[2s] = "* i'm tellin' ya^1.&* everyone likes word&  searches./"
    call (scr_papface[]:int32 (var 4s) (var 3s))
    stog.msg[4s] = "OH MY GOD!!!/"
    stog.msg[5s] = "I CAN'T WORK IN&THIS ENVIRONMENT!!/%%"
    goto 0x000674
0x0005C4:
    stog.msg[0s] = "SANS!!^1!&THAT DID NOTHING!!!/"
    call (scr_sansface[]:int32 (var 1s) (var 1s))
    stog.msg[2s] = "* whoops./"
    stog.msg[3s] = "\\E2* knew i should have&  put down junior jumble&  instead./"
    call (scr_papface[]:int32 (var 4s) (var 4s))
    stog.msg[5s] = "WHAT?!^1?&JUNIOR JUMBLE!?/"
    stog.msg[6s] = "\\E0FINALLY^1, SOMETHING&WE CAN BOTH&AGREE ON./%%"
0x000674:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 23s
0x0006A8:
    if !(== self.conversation 23s) goto 0x0006D8
0x0006BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006DC
0x0006D8:
    push 0s
0x0006DC:
    if !pop goto 0x0007C0
0x0006E0:
    push 5s
    stog.hspeed* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    self.hhh = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.hhh)
    stog.alarm[1s] = 30s
    self.conversation = 24s
0x0007C0:
    if !(== self.conversation 25s) goto 0x0008EC
0x0007D4:
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    global.plot = 47s
    global.interact = 0s
    if !(bool (instance_exists[]:int32 (var 1008s))) goto 0x000864
0x00084C:
    pushenv 1008s 0x000860
0x000854:
    call (instance_destroy[]:int32 )
0x000860:
    popenv 0x000854
0x000864:
    call (instance_create[]:int32 (var 1022s) (int32 self.sans):y (int32 self.sans):x)
    pushenv (int32 self.sans) 0x0008BC
0x0008B0:
    call (instance_destroy[]:int32 )
0x0008BC:
    popenv 0x0008B0
0x0008C0:
    pushenv (int32 self.papyrus) 0x0008DC
0x0008D0:
    call (instance_destroy[]:int32 )
0x0008DC:
    popenv 0x0008D0
0x0008E0:
    call (instance_destroy[]:int32 )
0x0008EC:
    exit
