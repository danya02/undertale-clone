0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* You better watch where you&  sit down in here^1, kid./"
    stog.msg[1s] = "* Because that big guy WILL jump&  into your lap and give you&  lots of love and attention./%%"
    push -5s
    if !(== 67s:flag 1s) goto 0x0000A0
0x000088:
    stog.msg[0s] = "* Where's Sans..^1.&* He's supposed to give me&  a pat on the head.../%%"
0x0000A0:
    if !(>= global.plot 122s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* She hasn't been responding&  to our letters.../"
    stog.msg[1s] = "* Maybe it's because we let&  Doggo write them all./%%"
0x0000E4:
    if !(== self.sansmode 1s) goto 0x000128
0x0000F8:
    stog.msg[0s] = "* I was hoping Sans came in&  to give me a pat on the&  head./"
    stog.msg[1s] = "* Interloper...!/%%"
0x000128:
    push -5s
    if !(== 54s:flag 1s) goto 0x00015C
0x000144:
    stog.msg[0s] = "* Where's that big lug^1?&* We can't start until he&  shows up./%%"
0x00015C:
    push -5s
    if !(== 52s:flag 1s) goto 0x000194
0x000178:
    push -5s
    push (== 54s:flag 1s)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x0001B4
0x00019C:
    stog.msg[0s] = "* Smells kinda..^1. quiet./%%"
0x0001B4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000230
0x0001D0:
    stog.msg[0s] = "* Hmmm^1, now that our parents&  are the same entity.../"
    stog.msg[1s] = "* Does that mean I'm&  married to my sister?/"
    stog.msg[2s] = "* .../"
    stog.msg[3s] = "* Wait^1, we're dogs^1.&* That stuff's normal./%%"
0x000230:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000270:
    exit
