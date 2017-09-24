0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hey^1!&* Watch where you stand^1,&  jerk!/"
    stog.msg[1s] = "* Th-though^1, I guess if&  there's nowhere else^1, you&  can stand closer.../%%"
    if !(> self.talkedto 0s) goto 0x000098
0x000080:
    stog.msg[0s] = "* Standing so spicey./%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001E8
0x0000B4:
    stog.msg[0s] = "* A-ah..^1. H-human..^1.&* You're leaving?/"
    stog.msg[1s] = "* I have..^1.&* Something to say to you./"
    stog.msg[2s] = "* Admittedly^1, I may have had&  limerent feelings for you&  before./"
    stog.msg[3s] = "* However^1, upon examining my&  own actions^1, I now&  realize.../"
    stog.msg[4s] = "* I did not love YOU./"
    stog.msg[5s] = "* I was merely infatuated&  with the CONCEPT of love./"
    stog.msg[6s] = "* The idea of romance^1, the&  concept of sharing affection&  with another.../"
    stog.msg[7s] = "* Through these desires^1, I&  built a false concept of&  you in my head./"
    stog.msg[8s] = "* Such a relationship would&  not have ended well./"
    stog.msg[9s] = "* In closing^1, I believe it&  is better that I chose to&  say nothing./"
    stog.msg[10s] = "* Y..^1. y-you i-idiot./%%"
    if !(> self.talkedto 0s) goto 0x0001E8
0x0001D0:
    stog.msg[0s] = "* I'm not saying it again./%%"
0x0001E8:
    if !(== self.room 172s) goto 0x0002D4
0x0001FC:
    stog.msg[0s] = "* H-hey^1, why do you keep&  following me!!!&* You jerk!!!/"
    stog.msg[1s] = "* Eeeeh^1?&* You're walking in the&  opposite direction...?/"
    stog.msg[2s] = "* H-hey^1, you think you're too&  good for me^1, huh...?/%%"
    if !(> self.talkedto 0s) goto 0x000270
0x000258:
    stog.msg[0s] = "* N-not spicey enough for you^1,&  h-huh.../%%"
0x000270:
    push -5s
    if !(== 7s:flag 1s) goto 0x0002D4
0x00028C:
    stog.msg[0s] = "* I..^1. I'm thinking of going&  to the surface.../"
    stog.msg[1s] = "* Eeeeeh^1?&* You're going to go there&  too?/"
    stog.msg[2s] = "* Idiot..^1.&* Quit following me!/%%"
0x0002D4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000314:
    exit
