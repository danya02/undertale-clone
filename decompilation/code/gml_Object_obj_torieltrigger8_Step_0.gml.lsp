0x000000:
    if !(== self.conversation 2s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000F0
0x000038:
    global.interact = 3s
    [obj_mainchara].y = 128s
    [obj_mainchara].visible = 0s
    [obj_toroverworld3].sprite_index = 1115s
    [obj_toroverworld3].lsprite = 1115s
    pushenv 1570s 0x0000A8
0x00007C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 27s))
0x0000A8:
    popenv 0x00007C
0x0000AC:
    pushenv 861s 0x0000E0
0x0000B4:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 27s))
0x0000E0:
    popenv 0x0000B4
0x0000E4:
    self.conversation = 3s
0x0000F0:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x00044C
0x000108:
    if !(== self.conversation 1s) goto 0x000130
0x00011C:
    push (== 861.path_position 1s)
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x00044C
0x000138:
    global.interact = 1s
    self.myinteract = 3s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 2s
    push -5s
    stog.flag[(+ 44s:flag 1s)] = 44s
    stog.flag[45s] = 1s
    global.msc = 0s
    push -5s
    if !(== 44s:flag 1s) goto 0x0001EC
0x0001D4:
    stog.msg[0s] = "* I think you should&  play upstairs&  instead./%%"
0x0001EC:
    push -5s
    if !(== 44s:flag 2s) goto 0x000220
0x000208:
    stog.msg[0s] = "* It is dangerous&  to play here./%%"
0x000220:
    push -5s
    if !(== 44s:flag 3s) goto 0x000254
0x00023C:
    stog.msg[0s] = "* It is drafty here.&* You will catch&  a cold./%%"
0x000254:
    push -5s
    if !(== 44s:flag 4s) goto 0x000288
0x000270:
    stog.msg[0s] = "* It is dusty here.&* You will catch&  a cough./%%"
0x000288:
    push -5s
    if !(== 44s:flag 5s) goto 0x0002BC
0x0002A4:
    stog.msg[0s] = "* There is nothing&  to see here./%%"
0x0002BC:
    push -5s
    if !(== 44s:flag 6s) goto 0x0002F0
0x0002D8:
    stog.msg[0s] = "* Do you want to&  read a book?/%%"
0x0002F0:
    push -5s
    if !(== 44s:flag 7s) goto 0x000324
0x00030C:
    stog.msg[0s] = "\\E7* I do not like&  the game you&  are playing./%%"
0x000324:
    push -5s
    if !(== 44s:flag 8s) goto 0x000358
0x000340:
    stog.msg[0s] = "\\E0* Why not go for&  a walk in the&  yard?/%%"
0x000358:
    push -5s
    if !(== 44s:flag 9s) goto 0x00038C
0x000374:
    stog.msg[0s] = "* Really now./%%"
0x00038C:
    push -5s
    if !(> 44s:flag 9s) goto 0x0003C0
0x0003A8:
    stog.msg[0s] = "\\E4* .../%%"
0x0003C0:
    if !(< global.plot 19s) goto 0x000418
0x0003D4:
    stog.flag[44s] = 0s
    stog.msg[0s] = "* Hey^1, do not go down&  here./"
    stog.msg[1s] = "* I have something&  to show you&  upstairs./%%"
0x000418:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x00044C:
    exit
