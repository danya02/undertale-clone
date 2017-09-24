0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x000104
0x000054:
    push -5s
    if !(== 82s:flag 0s) goto 0x0000CC
0x000070:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    self.conversation = 1s
    stog.msg[1s] = "IMPRESSED^1?&I INCREASED THE&HEIGHT OF MY SINK./"
    stog.msg[2s] = "NOW I CAN FIT MORE&BONES UNDER IT^1!&TAKE A LOOKSY!/%%"
    goto 0x000100
0x0000CC:
    call (scr_papface[]:int32 (var 3s) (var 0s))
    stog.msg[1s] = "FORGET IT./%%"
0x000100:
    goto 0x000128
0x000104:
    stog.msg[0s] = "* (This sink is so tall^1, you&  can't even wash your&  hands...)/%%"
    self.conversation = 0s
0x000128:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000168:
    exit
