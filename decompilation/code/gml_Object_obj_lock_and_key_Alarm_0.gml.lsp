0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (The way is blocked by two&  padlocks.^1)&* (There's a note attached.)/"
    stog.msg[1s] = "* (Howdy^1! I'm in the garden.)/"
    stog.msg[2s] = "* (If you have anything you&  need to get off your chest^1,&  please don't hesitate to come.)/"
    stog.msg[3s] = "* (The keys are in the kitchen&  and the hallway.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0000C8
0x0000B0:
    stog.msg[0s] = "\\R* (He leaves them in the&  kitchen and the hallway.)/%%"
0x0000C8:
    push -5s
    if !(== 454s:flag 0.5d) goto 0x000130
0x0000EC:
    stog.msg[0s] = "* (You'll need both keys to&  get through.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000130
0x000118:
    stog.msg[0s] = "\\R* (There are two keys.)/%%"
0x000130:
    push -5s
    if !(== 452s:flag 1s) goto 0x000168
0x00014C:
    push -5s
    push (== 453s:flag 1s)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x0001D4
0x000170:
    stog.flag[454s] = 1s
    stog.msg[0s] = "* (You unlocked the chain.)/%%"
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x0001C8
0x0001B0:
    stog.msg[0s] = "\\R* (I unlocked the chain.)/%%"
0x0001C8:
    self.con = 2s
0x0001D4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push -5s
    if !(== 454s:flag 0s) goto 0x000234
0x000218:
    stog.flag[454s] = 0.5d
0x000234:
    exit
