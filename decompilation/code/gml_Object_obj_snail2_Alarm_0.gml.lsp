0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (Someone has meticulously&  cleaned all the slime off of&  this snail.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000088
0x000070:
    stog.msg[0s] = "* (The snail has covered&  itself in slime again...^1)&* (Happy ending...)/%%"
0x000088:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000C8:
    exit
