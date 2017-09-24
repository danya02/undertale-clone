0x000000:
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "* actually^1, hey..^1.&* hate to bother ya^1, but&  can you do me a favor?/"
    stog.msg[1s] = "* i was thinking..^1.&* my brother's been&  kind of down lately.../"
    stog.msg[2s] = "* he's never seen a human&  before^1. and seeing you&  might just make his day./"
    stog.msg[3s] = "* don't worry^1, he's not&  dangerous./"
    stog.msg[4s] = "\\E1* even if he tries to be./"
    stog.msg[5s] = "\\E0* thanks a million^1.&* i'll be up ahead./%%"
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x00017C
0x00011C:
    stog.msg[0s] = "\\E0* well^1, i'll be straight-&  forward with you./"
    stog.msg[1s] = "\\E1* my brother'd really&  like to see a human.../"
    stog.msg[2s] = "\\E2* so^1, y'know^1, it'd&  really help me out.../"
    stog.msg[3s] = "\\E1* if you kept pretending&  to be one./%%"
0x00017C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x0001B0:
    exit
