0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I'm visiting Waterfall&  from the city./"
    stog.msg[1s] = "* Synchronicity...^1?&* My neighbor's daughter looks&  about your age./"
    stog.msg[2s] = "\\W* Her name is \"\\YSuzy\\W.^1\"&* I feel like you two should&  be friends./"
    stog.msg[3s] = "* You have..^1.&* A neighbor's blessing!!!/%%"
    if !(> self.talkedto 0s) goto 0x0000E0
0x0000B0:
    stog.msg[0s] = "* Not knowing where I live&  is no issue^1.&* Fate finds a way./"
    stog.msg[1s] = "* In life's grand scheme^1, she&  might be why you came here&  in the first place.../%%"
0x0000E0:
    push -5s
    if !(== 7s:flag 0s) goto 0x000110
0x0000FC:
    stog.flag[279s] = 1s
0x000110:
    push -5s
    if !(== 350s:flag 1s) goto 0x00015C
0x00012C:
    stog.msg[0s] = "* I sense a disturbance in&  the nearby aura.../"
    stog.msg[1s] = "* I think you should leave&  that girl alone./%%"
0x00015C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000258
0x000178:
    push -5s
    if !(== 279s:flag 1s) goto 0x0001F4
0x000194:
    stog.msg[0s] = "* So you never met my&  neighbor's daughter./"
    stog.msg[1s] = "* Don't despair^1.&* This world has infinite&  opportunities./"
    stog.msg[2s] = "* But there's a limit to the&  things you can do today^1.&* Accepting this is healthy./"
    stog.msg[3s] = "* Take my neighbor's blessing^1!&* And consider this blessing&  for anything you like!/%%"
0x0001F4:
    push -5s
    if !(== 279s:flag 0s) goto 0x000258
0x000210:
    stog.msg[0s] = "* I wanted to tell you about&  my neighbor's daughter./"
    stog.msg[1s] = "* But you walked right by me&  before I could tell you./"
    stog.msg[2s] = "* Fate has decided that I&  should not tell you./%%"
0x000258:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000298:
    exit
