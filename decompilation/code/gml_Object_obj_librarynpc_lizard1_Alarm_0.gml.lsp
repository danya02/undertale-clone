0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Welcome to the library^1.&* Yes^1, we know^1.&* The sign is misspelled./%%"
    if !(>= global.plot 122s) goto 0x000098
0x000068:
    stog.msg[0s] = "* Yes^1, we know^1.&* The sign is misspelled./"
    stog.msg[1s] = "* We have someone working on&  it!/%%"
0x000098:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000E4
0x0000B4:
    stog.msg[0s] = "* Welcome to the library./"
    stog.msg[1s] = "* This is the last day we'll&  be open^1, so make as much&  noise as you want./%%"
0x0000E4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000124:
    exit
