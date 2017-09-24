0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Everything's so dirty..^1.&* If I could erase everything^1,&  I would./"
    stog.msg[1s] = "* Ohhhh^1.&* Don't get the wrong idea^1.&* I don't want anyone to die./"
    stog.msg[2s] = "* People turn to dust when&  they die^1, and that's hard&  to clean up.../%%"
    if !(> self.talkedto 0s) goto 0x0000B0
0x000098:
    stog.msg[0s] = "* Don't turn to dust./%%"
0x0000B0:
    push -5s
    if !(== 7s:flag 1s) goto 0x0000FC
0x0000CC:
    stog.msg[0s] = "* The surface intimidates me./"
    stog.msg[1s] = "* The entire outer layer of the&  Earth is made of dirt./%%"
0x0000FC:
    if !(== self.room 113s) goto 0x000174
0x000110:
    stog.msg[0s] = "* I clean off all of the&  trash and arrange it into&  symmetrical piles./"
    stog.msg[1s] = "* It's hard work^1, but somebody&  has to do it./%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000174
0x00015C:
    stog.msg[0s] = "* Don't drag your dirty feet&  in here^1.&* I just cleaned this trash!/%%"
0x000174:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x0001B4:
    exit
