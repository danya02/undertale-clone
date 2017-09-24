0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a plate of frozen&  spaghetti.)/"
    stog.msg[1s] = "* (It's so cold^1, it's stuck&  to the table...)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000B8
0x000088:
    stog.msg[0s] = "* (It's a plate of lukewarm&  spaghetti.)/"
    stog.msg[1s] = "* (Seems like something tried&  eating it and just..^1.)&* (Gave up.)/%%"
0x0000B8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000E0:
    exit
