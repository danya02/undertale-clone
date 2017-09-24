0x000000:
    self.image_xscale = 50s
    self.conversation = 0s
    if !(> global.plot 17s) goto 0x00003C
0x00002C:
    call (instance_destroy[]:int32 )
    goto 0x000240
0x00003C:
    global.typer = 4s
    global.interact = 1s
    global.facechoice = 1s
    global.faceemotion = 0s
    global.msc = 0s
    stog.alarm[0s] = 1s
    stog.msg[0s] = "* Do you smell that^1?/"
    stog.msg[1s] = "* Surprise!/"
    stog.msg[2s] = "* It is a butterscotch-&  cinnamon pie./"
    stog.msg[3s] = "* I thought we might&  celebrate your&  arrival./"
    stog.msg[4s] = "* I want you to have&  a nice time living&  here./"
    stog.msg[5s] = "* So I will hold off&  on snail pie for&  tonight./"
    stog.msg[6s] = "* Here^1, I have another&  surprise for you./%%"
    push -5s
    if !(== 6s:flag 1s) goto 0x000210
0x000150:
    stog.msg[0s] = "* Do you smell that^1?/"
    stog.msg[1s] = "\\E1* Er^1, I assume that&  expression means you&  do./"
    stog.msg[2s] = "\\E0* S..^1. surprise!/"
    stog.msg[3s] = "* I have baked a snail&  pie./"
    stog.msg[4s] = "* I thought we might&  celebrate your&  arrival./"
    stog.msg[5s] = "* I want you to have&  a nice time living&  here./"
    stog.msg[6s] = "\\E1* So I.../"
    stog.msg[7s] = "\\E0* Here^1, I have another&  surprise for you./%%"
0x000210:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
0x000240:
    self.volume = 1s
    self.fademusicout = 0s
0x000258:
    exit
