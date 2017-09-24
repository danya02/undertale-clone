0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* We all know the underground&  has problems^1, but we&  smile anyway./"
    stog.msg[1s] = "* Why?/"
    stog.msg[2s] = "* We can't do anything^1, so&  why be morose about it?/%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Smile smile./%%"
0x0000B0:
    if !(== self.room 44s) goto 0x000100
0x0000C4:
    global.typer = 27s
    stog.msg[0s] = "* PATHETIC HUMAN./"
    stog.msg[1s] = "\\W* I AM METTATON^2, BIG TIME&  \\RSEXY ROBOT\\W LOVER./%%"
0x000100:
    if !(>= global.plot 122s) goto 0x000144
0x000114:
    stog.msg[0s] = "* Maybe I'll try frowning&  for once./"
    stog.msg[1s] = "* ... no^1.&* I just can't do it./%%"
0x000144:
    push -5s
    if !(== 7s:flag 1s) goto 0x000190
0x000160:
    stog.msg[0s] = "* Oh^1?&* We're free?/"
    stog.msg[1s] = "* Finally..^1.&* I'll be able to stop&  smiling./%%"
0x000190:
    push -5s
    if !(== 67s:flag 1s) goto 0x0001DC
0x0001AC:
    stog.msg[0s] = "* Just now^1, I felt my smile&  falter for a moment./"
    stog.msg[1s] = "* What's wrong?/%%"
0x0001DC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00021C:
    exit
