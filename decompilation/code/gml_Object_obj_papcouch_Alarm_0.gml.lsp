0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 83s:flag 0s) goto 0x0000D0
0x000058:
    stog.msg[0s] = "* (You touch the couch.^1)&* (It makes a jangling sound.)/"
    stog.msg[1s] = "* (You find a bunch of loose&  coins inside the couch...)/"
    stog.msg[2s] = "* (You got 20G.)/%%"
    global.gold = (+ global.gold 20s)
    stog.flag[83s] = 1s
    goto 0x0000E8
0x0000D0:
    stog.msg[0s] = "* (It's a saggy old couch.)/%%"
0x0000E8:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000128:
    exit
