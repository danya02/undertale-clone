0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 60s
    global.facechoice = 7s
    global.faceemotion = 0s
    push -5s
    if !(== 197s:flag 0s) goto 0x000184
0x000058:
    stog.msg[0s] = "\\E0* Howdy^1, Frisk./"
    stog.msg[1s] = "\\E3* Sorry about almost&  trying to take&  your SOUL./"
    stog.msg[2s] = "\\E5* I feel very bad&  about it./"
    stog.msg[3s] = "\\E0* I hope we can&  still be pals./"
    call (scr_undface[]:int32 (var 0s) (var 4s))
    stog.msg[5s] = "\\E0* Hey^1, don't worry&  about it^1, ASGORE./"
    stog.msg[6s] = "\\E2* I think everybody's&  tried to kill Frisk&  at least once./"
    call (scr_asgface[]:int32 (var 2s) (var 7s))
    stog.msg[8s] = "\\E2* Oh..^1. I see!/"
    stog.msg[9s] = "\\E0* In that case^1, I'm&  not sorry^1, Frisk./"
    call (scr_undface[]:int32 (var 6s) (var 10s))
    stog.msg[11s] = "\\E6* ASGORE^1!&* That's not what I&  meant!/%%"
0x000184:
    push -5s
    if !(== 197s:flag 1s) goto 0x0001AC
0x0001A0:
    global.msc = 810s
0x0001AC:
    push -5s
    if !(>= 197s:flag 2s) goto 0x000210
0x0001C8:
    stog.msg[0s] = "\\E3* Oh^1, Frisk^1, if you're&  not busy.../"
    stog.msg[1s] = "\\E0* On nice days^1, you&  should walk around and&  have a good time./"
    stog.msg[2s] = "\\E0* That's important./%%"
0x000210:
    push -5s
    stog.flag[(+ 197s:flag 1s)] = 197s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000274:
    exit
