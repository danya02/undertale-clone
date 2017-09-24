0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* We all live in the woods^1,&  so no one can tell us&  what to do!/"
    stog.msg[1s] = "* But now everyone ignores&  us.../"
    stog.msg[2s] = "* I don't want freedom if&  it means no one's gonna&  pay attention to me./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000D0
0x0000A0:
    stog.msg[0s] = "* Maybe someone on the surface&  will pay attention to me./"
    stog.msg[1s] = "* There're so many people^1,&  someone has to^1, right!?/%%"
0x0000D0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000110:
    exit
