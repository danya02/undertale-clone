0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Awful teens tormented&  a local monster by decorating&  its tree-like horns./"
    stog.msg[1s] = "* So we started giving that&  monster presents to make it&  feel better./"
    stog.msg[2s] = "* Now it's a tradition to put&  presents underneath a decorated&  tree./%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Guess it was a good thing&  those teens tormented that&  monster...?/%%"
0x0000B0:
    if !(>= global.plot 122s) goto 0x0000F4
0x0000C4:
    stog.msg[0s] = "* Hmm^1?&* Adjusting the presents is&  my responsibility./"
    stog.msg[1s] = "* Nah^1, to be honest^1, I&  just keep looking to see&  if I've gotten one.../%%"
0x0000F4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000140
0x000110:
    stog.msg[0s] = "* It'll be nice to show humans&  our presents-under-the-tree&  tradition./"
    stog.msg[1s] = "* They'll probably be weirded&  out by it./%%"
0x000140:
    if !(== (scr_deaddog[]:int32 ) 1s) goto 0x0001E4
0x000154:
    stog.msg[0s] = "* You know what's cute?/"
    stog.msg[1s] = "* Those two married dogs&  always put presents under&  the tree for each other./"
    stog.msg[2s] = "* It's always the same^1.&* A single bone./"
    stog.msg[3s] = "* But every time^1, they act&  like it's the first time&  they've gotten it./"
    stog.msg[4s] = "* Then Papyrus comes to take&  his bones back./"
    stog.msg[5s] = "* Anyway^1, where are those&  two...?/%%"
0x0001E4:
    push -5s
    if !(== 67s:flag 1s) goto 0x000230
0x000200:
    stog.msg[0s] = "* That's strange^1.&* There was a present here&  for Papyrus.../"
    stog.msg[1s] = "* Now it's gone^1.&* Did someone steal it?/%%"
0x000230:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000270:
    exit
