0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Heh..^1. us teens live&  self-sufficiently off&  the fat of the land.../"
    stog.msg[1s] = "* Oh^1, and the box lunches my&  parents bring us every&  day./%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* Besides Snowy^1.&* We have to share ours&  with him../%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* Heh..^1.&* I guess we'll have to go to&  the surface./"
    stog.msg[1s] = "* There are woods there we can&  live in^1, right?/%%"
0x0000E4:
    if !(== self.room 53s) goto 0x000174
0x0000F8:
    stog.msg[0s] = "* Guh huh huh huh^1./"
    stog.msg[1s] = "* Us teens rule these woods&  with a smaller-than-&  adult fist./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000174
0x000144:
    stog.msg[0s] = "* I'm worried about getting&  older..^1.&* I'll stop being a teen./"
    stog.msg[1s] = "* No^1! I refuse^1!&* I'll just invent new numbers^1,&  like twenty-teen!/%%"
0x000174:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001B4:
    exit
