0x000000:
    global.msc = 0s
    self.con = 0s
    stog.msg[0s] = " %"
    stog.msg[1s] = " %"
    stog.msg[2s] = " %"
    stog.msg[3s] = " %"
    stog.msg[4s] = "%%%"
    global.typer = 76s
    if !(== global.floss 0s) goto 0x0000C8
0x0000B0:
    stog.msg[0s] = "* Hee hee hee^1.&* Did you really think&  you could run away?/%%"
0x0000C8:
    if !(== global.floss 1s) goto 0x000124
0x0000DC:
    stog.msg[0s] = "* Hee hee hee./"
    stog.msg[1s] = "* Did you really think&  I was gonna be&  satisfied.../"
    stog.msg[2s] = "* ... killing you only&  ONE time?/%%"
0x000124:
    if !(== global.floss 2s) goto 0x000150
0x000138:
    stog.msg[0s] = "* Pathetic..^1.&* Now you're REALLY&  gonna die!/%%"
0x000150:
    if !(== global.floss 3s) goto 0x000194
0x000164:
    stog.msg[0s] = "* Hee hee hee./"
    stog.msg[1s] = "* Do you even realize&  what will happen if&  you defeat me...?/%%"
0x000194:
    if !(== global.floss 4s) goto 0x0001F0
0x0001A8:
    stog.msg[0s] = "* Don't you get it?/"
    stog.msg[1s] = "* There's no such thing&  as happy endings./"
    stog.msg[2s] = "* This is all that's&  left...!/%%"
0x0001F0:
    if !(== global.floss 5s) goto 0x00021C
0x000204:
    stog.msg[0s] = "* Are you REALLY that&  desperate...^1?&* Hee hee hee.../%%"
0x00021C:
    if !(== global.floss 6s) goto 0x000248
0x000230:
    stog.msg[0s] = "* Are you letting me&  kill you..^1.&* ... on PURPOSE^2?&* SICKO^1. Ha ha ha./%%"
0x000248:
    if !(== global.floss 7s) goto 0x00028C
0x00025C:
    stog.msg[0s] = "* Honestly^1, fighting&  you IS pretty fun.../"
    stog.msg[1s] = "* ... So even if you&  ARE a sicko^1, I'll&  take it!/%%"
0x00028C:
    if !(== global.floss 8s) goto 0x0002D0
0x0002A0:
    stog.msg[0s] = "* Maybe you're wondering&  if I ever get tired&  of winning.../"
    stog.msg[1s] = "* Wanna see my answer?/%%"
0x0002D0:
    if !(>= global.floss 9s) goto 0x0002FC
0x0002E4:
    stog.msg[0s] = "* Don't you have anything&  better to do?/%%"
0x0002FC:
    call (instance_create[]:int32 (var 1598s) self.y self.x)
0x000320:
    exit
