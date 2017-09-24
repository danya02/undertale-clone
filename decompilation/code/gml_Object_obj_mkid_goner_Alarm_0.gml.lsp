0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Yo^1!&* You're a ??? too^1, right?/%%"
    if !(== self.type 1s) goto 0x0001E4
0x000068:
    stog.msg[0s] = "* Have you ever thought about&  a world where everything is&  exactly the same.../"
    stog.msg[1s] = "* Except you don't exist?/"
    stog.msg[2s] = "* Everything functions&  perfectly without you.../"
    stog.msg[3s] = "* Ha^1, ha..^1.&* The thought terrifies me./%%"
    if !(>= self.talkedto 1s) goto 0x0000F4
0x0000DC:
    stog.msg[0s] = "* .../%%"
0x0000F4:
    push -5s
    if !(== 85s:flag 1s) goto 0x0001E4
0x000110:
    stog.msg[0s] = "* An umbrella...^1?&* But it's not raining./"
    stog.msg[1s] = "* Ha^1, ha.../"
    stog.msg[2s] = "* You know^1, that does make&  me feel a little better&  about this./"
    stog.msg[3s] = "* Thank you./"
    stog.msg[4s] = "* Please forget about me./%%"
    if !(>= self.talkedto 1s) goto 0x0001B4
0x00019C:
    stog.msg[0s] = "* Please don't think about&  this anymore./%%"
0x0001B4:
    push -5s
    if !(>= 5s:flag 90s) goto 0x0001E4
0x0001D0:
    stog.flag[5s] = 0s
0x0001E4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000224:
    exit
