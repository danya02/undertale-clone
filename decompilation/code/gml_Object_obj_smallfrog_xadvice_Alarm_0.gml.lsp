0x000000:
    self.myinteract = 3s
    global.msc = 0s
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Sigh...)/"
    stog.msg[1s] = "* (My friend never listens to&  me.)/"
    stog.msg[2s] = "* (Whenever I talk^1, they skip&  through my words by pressing&  [X].)/"
    stog.msg[3s] = "* (That's right.......^1)&* (Pressing [X]............^1)&* (................)/"
    stog.msg[4s] = "* (Well^1, at least you listen&  to me.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000124
0x0000AC:
    stog.msg[0s] = "* Ribbit^1, ribbit^1.&* (Say...)/"
    stog.msg[1s] = "* (Now that your journey's&  over^1, maybe you'll have&  time to listen to me.)/"
    stog.msg[2s] = "* (Since most people just&  press [X] to skip through&  my dialogue.)/"
    stog.msg[3s] = "* (That's right.......^1)&* (Pressing [X]............^1)&* (................)/"
    stog.msg[4s] = "* (You've really matured^1,&  haven't you?)/%%"
0x000124:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000170:
    exit
