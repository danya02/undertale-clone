0x000000:
    if !(== self.room 53s) goto 0x000180
0x000014:
    push -5s
    if !(== 60s:flag 0s) goto 0x0000E0
0x000030:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mouth = 1s
    stog.msg[0s] = "* I don't understand why&  these aren't selling.../"
    stog.msg[1s] = "* It's the perfect weather&  for something cold.../%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
    goto 0x000180
0x0000E0:
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
    self.myinteract = 3s
    global.msc = 230s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* You must have something better to do than read this message./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000180:
    if !(== self.room 96s) goto 0x0001B0
0x000194:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001B4
0x0001B0:
    push 0s
0x0001B4:
    if !pop goto 0x00030C
0x0001B8:
    push -5s
    if !(== 79s:flag 0s) goto 0x00026C
0x0001D4:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mouth = 1s
    stog.msg[0s] = "* I relocated my store^1, but&  there are still no&  customers.../%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
    goto 0x00030C
0x00026C:
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
    self.myinteract = 3s
    global.msc = 232s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* You must have something better to do than read this message./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00030C:
    if !(== self.room 181s) goto 0x000704
0x000320:
    push -5s
    if !(== 402s:flag 1s) goto 0x0004C4
0x00033C:
    push -5s
    if !(== 250s:flag 0s) goto 0x000420
0x000358:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mouth = 1s
    stog.msg[0s] = "* I thought for sure if I&  went to Hotland^1, I'd sell&  some Nice Creams./"
    stog.msg[1s] = "* But nobody wants them^1.&* Everyone's just eating&  Starfaits and Glamburgers./"
    stog.msg[2s] = "* So!!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 1s
    goto 0x0004C0
0x000420:
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
    self.myinteract = 3s
    global.msc = 273s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* You must have something better to do than read this message./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0004C0:
    goto 0x000704
0x0004C4:
    global.msc = 0s
    self.myinteract = 3s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(>= 250s:flag 1s) goto 0x000534
0x00051C:
    stog.msg[0s] = "* I'm so happy!^1!&* Nice Cream is really&  changing the world!!/%%"
0x000534:
    push -5s
    if !(== 250s:flag 0s) goto 0x0005F4
0x000550:
    stog.msg[0s] = "* Hey^1!&* It's you again^1!/"
    stog.msg[1s] = "* Business is excellent here^1!&* These two fellas bought&  ALL my ice cream!/"
    stog.msg[2s] = "* I've actually sold out of&  everything!!!/"
    stog.msg[3s] = "* ... sorry./"
    stog.msg[4s] = "* Wait^1!&* I've still got something&  for you!/"
    stog.msg[5s] = "* ... a big smile^1!&* How about that!/%%"
    stog.flag[250s] = 1s
0x0005F4:
    push -5s
    if !(== 7s:flag 1s) goto 0x0006DC
0x000610:
    stog.msg[0s] = "* I'm so excited to sell&  Nice Cream on the surface!/"
    push -5s
    if !(<= 60s:flag 10s) goto 0x000674
0x000644:
    stog.msg[1s] = "* If all humans are like you^1,&  then...!/"
    stog.msg[2s] = "* ... then I'll still be&  able to sell to monsters^1,&  I hope./%%"
0x000674:
    push -5s
    if !(> 60s:flag 10s) goto 0x0006A8
0x000690:
    stog.msg[1s] = "* If all humans are like you^1,&  I think it'll be a modest&  success!/%%"
0x0006A8:
    push -5s
    if !(> 60s:flag 40s) goto 0x0006DC
0x0006C4:
    stog.msg[1s] = "* If all humans are like you^1,&  I think it'll be really&  popular!/%%"
0x0006DC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000704:
    exit
