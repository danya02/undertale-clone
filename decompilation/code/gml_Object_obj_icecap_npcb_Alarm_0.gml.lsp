0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Everyone's wearing hats^1.&* Should I branch into a&  different item?/"
    stog.msg[1s] = "* Ice jorts./"
    stog.msg[2s] = "* ... doesn't have the same&  ring to it./%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Ice socks and sandals./%%"
0x0000B0:
    push -5s
    if !(== 7s:flag 1s) goto 0x000114
0x0000CC:
    stog.msg[0s] = "* I know how to set myself&  apart now^1!&* An ear piercing!/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* Wait./%%"
0x000114:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000154:
    exit
