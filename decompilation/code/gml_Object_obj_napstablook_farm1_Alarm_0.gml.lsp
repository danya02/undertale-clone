0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* awkward..^1.&* i'm working right now.../"
    stog.msg[1s] = "* i mean.../"
    stog.msg[2s] = "* welcome to blook family&  snail farm.../"
    stog.msg[3s] = "* ... yeah^1.&* i'm the only employee./"
    stog.msg[4s] = "* this place used to get a lot&  of business.../"
    stog.msg[5s] = "* but our main customer&  disappeared one day.../"
    stog.msg[6s] = "* now it's just some hairy&  guy that shows up once&  a month.../%%"
    if !(> self.talkedto 0s) goto 0x000128
0x0000F8:
    stog.msg[0s] = "* really^1, i'm working..^1.&* i don't want the boss&  to get mad at me.../"
    stog.msg[1s] = "* especially since i'm my&  own boss.../%%"
0x000128:
    push -5s
    if !(== 350s:flag 1s) goto 0x00018C
0x000144:
    stog.msg[0s] = "* hmmm..^1. i should probably&  try to make friends&  with my neighbor/"
    stog.msg[1s] = "* she's kind of scary^1, but&  i feel like i'm always&  too late to make friends.../"
    stog.msg[2s] = "* i should at least try.../%%"
0x00018C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001CC:
    exit
