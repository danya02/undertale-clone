0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (This snail is counting dollar&  bills.)/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000088
0x000070:
    stog.msg[0s] = "* (Using its money^1, the&  snail bought a hat.)/%%"
0x000088:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000C8:
    exit
