0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* I'm the resort comedian.&* I'm very funny^1.&* People laugh at my jokes./"
    stog.msg[1s] = "* Now^1, my son^1.&* He wants to be a comedian&  like his fathah./"
    stog.msg[2s] = "* But his jokes^1.&* Aren't funny./"
    stog.msg[3s] = "* He tells these awful puns^1.&* He's an embarrassment to&  our family./"
    stog.msg[4s] = "* Ha ha ha ha.../"
    stog.msg[5s] = "* That's not funny./"
    stog.msg[6s] = "* Since his mothah passed on^1,&  he couldn't stand^1.&* Living at home anymore./"
    stog.msg[7s] = "* So he ran away^1.&* I haven't seen him since./"
    stog.msg[8s] = "* I'm a terrible fathah^1.&* Ha ha ha ha.../"
    stog.msg[9s] = "* That's not funny./%%"
    if !(> self.talkedto 0s) goto 0x000188
0x000140:
    stog.msg[0s] = "* Talking to you about&  this..^1.&* It's breakin' my heart./"
    stog.msg[1s] = "* Ha ha ha ha.../"
    stog.msg[2s] = "* That's not funny./%%"
0x000188:
    push -5s
    if !(== 7s:flag 1s) goto 0x000204
0x0001A4:
    stog.msg[0s] = "* The doctah^1.&* She brought my wife.&* Back from the dead./"
    stog.msg[1s] = "* My son^1.&* He seems happy again./"
    stog.msg[2s] = "* Our family^1.&* It's biggah than evah./"
    stog.msg[3s] = "* Now that my wife^1.&* Is combined^1.&* With 16 othah people./%%"
0x000204:
    push -5s
    if !(== 425s:flag 1s) goto 0x000280
0x000220:
    stog.msg[0s] = "* My boss stopped answering my&  calls./"
    stog.msg[1s] = "* I don't know when my next&  performance will be./"
    stog.msg[2s] = "* Maybe I shouldn't try to be&  a comedian anymore.../"
    stog.msg[3s] = "* It's tearing my family apart./%%"
0x000280:
    push -5s
    if !(== 57s:flag 2s) goto 0x0002FC
0x00029C:
    stog.msg[0s] = "* My son..^1.&* He was always making these&  weird ice puns./"
    stog.msg[1s] = "* I hated them^1, so he ran&  away from home.../"
    stog.msg[2s] = "* I think I should try to&  patch things up with him./"
    stog.msg[3s] = "* Have you seen him^1?&* Have you seen my son?/%%"
0x0002FC:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x00033C:
    exit
