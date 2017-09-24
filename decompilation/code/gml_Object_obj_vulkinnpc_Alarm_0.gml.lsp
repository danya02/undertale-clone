0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Oh..^1.&* When you hug me^1, I feel..^1.&* So spicey./%%"
    if !(> self.talkedto 0s) goto 0x000080
0x000068:
    stog.msg[0s] = "* So spicey./%%"
0x000080:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000CC
0x00009C:
    stog.msg[0s] = "* Oh..^1.&* Freedoms./"
    stog.msg[1s] = "* Feels..^1. so spicey./%%"
0x0000CC:
    if !(== self.room 180s) goto 0x000170
0x0000E0:
    stog.msg[0s] = "* Oh..^1.&* When you encourage me^1, I&  feel..^1. so nicey./%%"
    if !(> self.talkedto 0s) goto 0x000124
0x00010C:
    stog.msg[0s] = "* So spicey./%%"
0x000124:
    push -5s
    if !(== 7s:flag 1s) goto 0x000170
0x000140:
    stog.msg[0s] = "* Hooray!/"
    stog.msg[1s] = "* Surface world will have &  so many new friends to&  help!!!/%%"
0x000170:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001B0:
    exit
