0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 17s
    global.facechoice = 3s
    global.faceemotion = 0s
    stog.msg[0s] = "* grievous error/%%"
    push -5s
    if !(== 413s:flag 0s) goto 0x00007C
0x000070:
    global.msc = 760s
0x00007C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0000BC:
    exit
