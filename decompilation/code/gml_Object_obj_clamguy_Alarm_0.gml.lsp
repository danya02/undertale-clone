0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* O, k, k, k, k.../"
    stog.msg[1s] = "* I was thirsty^1, so I came&  over from Waterfall to get&  a drink!/%%"
    push -5s
    if !(> 353s:flag 7s) goto 0x0000B8
0x000088:
    stog.msg[0s] = "* O, k, k.../"
    stog.msg[1s] = "* What are you doing with&  all of that water?/%%"
0x0000B8:
    push -5s
    if !(> 353s:flag 15s) goto 0x000104
0x0000D4:
    stog.msg[0s] = "* O, k, k, k, k.../"
    stog.msg[1s] = "* So now we have a private pool^1?&* Worse things have happened./%%"
0x000104:
    push -5s
    if !(== 366s:flag 1s) goto 0x000168
0x000120:
    stog.msg[0s] = "* O, k, k, k, k.../"
    stog.msg[1s] = "* Are you just carrying that&  around to look sophisticated?/"
    stog.msg[2s] = "* Cause it's not working./%%"
0x000168:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001B4
0x000184:
    stog.msg[0s] = "* O, k, k, k, k.../"
    stog.msg[1s] = "* I'll be able to have a nice&  drink on the surface./%%"
0x0001B4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001F4:
    exit
