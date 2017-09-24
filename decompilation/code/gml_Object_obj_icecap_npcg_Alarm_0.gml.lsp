0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hey^1, stop thinking about&  my hat!/"
    stog.msg[1s] = "* ... you aren't thinking about&  my hat?/"
    stog.msg[2s] = "* ... can you^1, please?/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E8
0x0000A0:
    stog.msg[0s] = "* Ha^1!&* After all this time^1, you're&  still thinking about my hat!/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* ... please?/%%"
0x0000E8:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000128:
    exit
