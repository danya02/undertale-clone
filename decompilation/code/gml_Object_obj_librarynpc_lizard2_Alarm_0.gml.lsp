0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I love working on the&  newspaper./"
    stog.msg[1s] = "* There's so little to report&  that we just fill it with&  comics and games./%%"
    if !(>= global.plot 122s) goto 0x0000B0
0x000080:
    stog.msg[0s] = "* Yes^1.&* I illustrate all of the&  comics myself./"
    stog.msg[1s] = "* Yes^1.&* I give everyone huge beautiful&  eyes and giant muscles./%%"
0x0000B0:
    push -5s
    if !(== 7s:flag 1s) goto 0x00012C
0x0000CC:
    stog.msg[0s] = "* Oh my^1, there's so much&  news to report^1, I don't know&  where to begin!/"
    stog.msg[1s] = "* How about this headline..^1.&* \"Monsters Go Free From The&  Underground.\"/"
    stog.msg[2s] = "* Nah^1, that doesn't have&  enough pizazz.../"
    stog.msg[3s] = "* How about \"Top 10 Monsters&  You Won't Believe Got Freed&  From The Underground?\"/%%"
0x00012C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00016C:
    exit
