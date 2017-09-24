0x000000:
    if !(== global.interact 0s) goto 0x0002D4
0x000014:
    self.touch = 1s
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring..\\E0.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello?/"
    stog.msg[3s] = "\\E1* I just realized that it&  has been a while since&  I have cleaned up./"
    stog.msg[4s] = "\\E0* I was not expecting to&  have company so soon./"
    stog.msg[5s] = "* There are probably a lot&  of things lying about&  here and there./"
    stog.msg[6s] = "* You can pick them up^1,&  but do not carry more&  than you need./"
    stog.msg[7s] = "* Someday you might see&  something you really&  like./"
    stog.msg[8s] = "* You will want to leave&  room in your pockets&  for that./"
    stog.msg[9s] = "\\TS \\F0 \\T0 %"
    stog.msg[10s] = "* Click.../%%"
    push -5s
    if !(== 6s:flag 1s) goto 0x00026C
0x00017C:
    stog.msg[0s] = "* Ring..\\E0.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello?/"
    stog.msg[3s] = "\\E1* I have a question./"
    stog.msg[4s] = "* You like things other&  than butterscotch or&  cinnamon^1, too.../"
    stog.msg[5s] = "* Do you not?/"
    stog.msg[6s] = "\\E0* ..^1. oh^1, what am I&  asking./"
    stog.msg[7s] = "* I will keep looking./%%"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* Click.../%%"
0x00026C:
    call (instance_create[]:int32 (var 1339s) (var 200s) (var 140s))
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    global.interact = 1s
0x0002D4:
    exit
