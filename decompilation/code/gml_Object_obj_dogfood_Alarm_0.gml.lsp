0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (Unfortunately^1, it's just&  dry food.)/%%"
    push -5s
    if !(< 67s:flag -1s) goto 0x000088
0x000070:
    stog.msg[0s] = "* (There's a hot dog cut up&  into the kibble.)/%%"
0x000088:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000B0:
    exit
