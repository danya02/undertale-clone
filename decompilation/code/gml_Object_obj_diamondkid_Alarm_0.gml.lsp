0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "\\W* My fave Mettaton Moment(TM)^1?&* Right \\Ywhen everything looks the&  baddest^1, he poses dramatically\\W./"
    stog.msg[1s] = "* Like when he's on a cooking&  show and the eggs don't turn&  out right./%%"
    if !(> self.talkedto 0s) goto 0x0000F8
0x000080:
    stog.msg[0s] = "* But^1!&* Then he says!/"
    stog.msg[1s] = "\\W* Even if you suck at cooking^1,&  you can always \\Ybuy an&  MTT-brand Glamburger\\W!/"
    stog.msg[2s] = "\\W* Then he \\Yeats one^1!\\W &* Everyone loves it!/"
    stog.msg[3s] = "* ... How does he eat it&  without a mouth?/"
    stog.msg[4s] = "* Uhhh... well..^1.&* Watch the show!/%%"
0x0000F8:
    push -5s
    if !(== 425s:flag 1s) goto 0x000144
0x000114:
    stog.msg[0s] = "* That finale was really..^1.&* That was really sad!/"
    stog.msg[1s] = "* And Mettaton's schedule&  doesn't show any other&  shows.../%%"
0x000144:
    push -5s
    if !(== 7s:flag 1s) goto 0x000178
0x000160:
    stog.msg[0s] = "* I've been thinking about&  getting a sick skateboard./%%"
0x000178:
    if !(> self.x 160s) goto 0x000298
0x00018C:
    stog.msg[0s] = "\\W* My fave Mettaton Moment(TM)&  is when he beats up the&  \\Yheel-turning villains\\W!/"
    stog.msg[1s] = "* Even if it's during what's&  supposed to be a quiz show./%%"
    if !(> self.talkedto 0s) goto 0x000200
0x0001D0:
    stog.msg[0s] = "* Oh^1! And I like when he tries&  on all kinds of different&  fashionable outfits!/"
    stog.msg[1s] = "* Even if it's during what's&  supposed to be a newscast./%%"
0x000200:
    push -5s
    if !(== 425s:flag 1s) goto 0x00024C
0x00021C:
    stog.msg[0s] = "* Did Mettaton retire...?/"
    stog.msg[1s] = "* Can't he unretire...?/%%"
0x00024C:
    push -5s
    if !(== 7s:flag 1s) goto 0x000298
0x000268:
    stog.msg[0s] = "* On the surface we'll be able&  to watch all kinds of TV.../"
    stog.msg[1s] = "* But^1, I bet none of those&  shows are as good as&  Mettaton's!/%%"
0x000298:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0002D8:
    exit
