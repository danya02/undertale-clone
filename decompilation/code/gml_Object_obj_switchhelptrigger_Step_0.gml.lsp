0x000000:
    if !(== self.conversation 2s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000074
0x000038:
    global.interact = 0s
    push -5s
    stog.flag[(+ 51s:flag 1s)] = 51s
    call (instance_destroy[]:int32 )
0x000074:
    if !(== self.conversation 1s) goto 0x00011C
0x000088:
    global.interact = 1s
    self.myinteract = 3s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    stog.msg[0s] = "* (You noticed there was&  a blue switch behind the&  top pillar.)/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x00011C:
    exit
