0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 28s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* hOI!^1!&* im temmie!!!/"
    stog.msg[1s] = "* and dis is my friend..^1.&* temmie!!!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000A0
0x000088:
    stog.msg[0s] = "* woa..^1. tem hear news..^1.&* VERY GOODS!!!/%%"
0x0000A0:
    if !(> self.x 190s) goto 0x000118
0x0000B4:
    stog.msg[0s] = "* hOI!^1!&* im temmie!!!/"
    stog.msg[1s] = "* don forget my friend!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000118
0x000100:
    stog.msg[0s] = "* yaYA!!^1!&* tems can go free!!/%%"
0x000118:
    if !(> self.x 220s) goto 0x000190
0x00012C:
    stog.msg[0s] = "* Hi./"
    stog.msg[1s] = "* I'm Bob./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000190
0x000178:
    stog.msg[0s] = "* A pleasing development^1, no?/%%"
0x000190:
    if !(> self.x 360s) goto 0x000238
0x0001A4:
    stog.msg[0s] = "* awawawawah!!/"
    stog.msg[1s] = "* humans..^1.&* such a.../"
    stog.msg[2s] = "* CUTE!!!!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000238
0x000208:
    stog.msg[0s] = "* woa..^1.&* if tems can go on surface^1,&  can see,/"
    stog.msg[1s] = "* LOT OF CUTES HUNAN!!!/%%"
0x000238:
    if !(> self.x 440s) goto 0x0002F8
0x00024C:
    stog.msg[0s] = "* tem..^1. WATCH EGG!!!/"
    stog.msg[1s] = "* eg..^1. wil HATCH!!!/"
    stog.msg[2s] = "* tem..^1. PROUD PARENT!!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0002F8
0x0002B0:
    stog.msg[0s] = "* everyones go free..^1.&* BUT TEM!!!/"
    stog.msg[1s] = "* TEM NOT LEAV!!!&* TEM WATCH EG!!!/"
    stog.msg[2s] = "* tem will be happily fambily,/%%"
0x0002F8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000338:
    exit
