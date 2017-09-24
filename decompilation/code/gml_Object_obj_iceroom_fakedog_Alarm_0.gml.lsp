0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 261s:flag 0s) goto 0x0000AC
0x000058:
    stog.msg[0s] = "* (You tried to pet the dog^1,&  but it collapsed into a&  pile of fluff...)/"
    stog.msg[1s] = "* (Seems like it was actually&  just a dog-shaped husk of&  dog residue.)/%%"
    stog.flag[261s] = 1s
    self.sprite_index = 1524s
    goto 0x0000C4
0x0000AC:
    stog.msg[0s] = "* (It's a pile of dog residue.)/%%"
0x0000C4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000EC:
    exit
