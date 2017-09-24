0x000000:
    self.myinteract = 3s
    global.msc = 866s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* bepis/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000AC
0x000070:
    global.msc = 0s
    stog.msg[0s] = "* Sorry^1, we aren't allowing&  any more guests at this time./"
    stog.msg[1s] = "* Or ever again./%%"
0x0000AC:
    push -5s
    if !(== 425s:flag 1s) goto 0x000134
0x0000C8:
    global.msc = 0s
    stog.msg[0s] = "* How unusual./"
    stog.msg[1s] = "* Mettaton usually shows up&  now to tell everyone they're&  doing a great job./"
    stog.msg[2s] = "* Even if I was having a bad&  day^1, we'll always give each&  other a thumbs-up^1, and.../"
    stog.msg[3s] = "* ... oh^1, what am I doing^1?&* I'm not being very&  professional./%%"
0x000134:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000174:
    exit
