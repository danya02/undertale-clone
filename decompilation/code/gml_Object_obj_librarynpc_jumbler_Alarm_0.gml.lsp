0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Beautiful^1.&* An error message./%%"
    push -5s
    if !(== 58s:flag 0s) goto 0x0000A0
0x000070:
    stog.msg[0s] = "* That look in your eye.../"
    stog.msg[1s] = "* You're someone that has&  difficulty solving Junior&  Jumble^1, aren't you?/%%"
0x0000A0:
    push -5s
    if !(== 58s:flag 1s) goto 0x0000EC
0x0000BC:
    stog.msg[0s] = "* That look in your eye.../"
    stog.msg[1s] = "* You're someone that has&  trouble doing crosswords^1,&  aren't you?/%%"
0x0000EC:
    if !(>= global.plot 122s) goto 0x000130
0x000100:
    stog.msg[0s] = "* That look in your eye.../"
    stog.msg[1s] = "* You think Sudoku is just&  moderately challenging^1,&  don't you?/%%"
0x000130:
    push -5s
    if !(== 7s:flag 1s) goto 0x0001E4
0x00014C:
    push -5s
    if !(== 58s:flag 0s) goto 0x000198
0x000168:
    stog.msg[0s] = "* The greatest struggle of&  my life is over.../"
    stog.msg[1s] = "* I just solved today's&  Junior Jumble./%%"
0x000198:
    push -5s
    if !(== 58s:flag 1s) goto 0x0001E4
0x0001B4:
    stog.msg[0s] = "* The greatest struggle of&  my life is over.../"
    stog.msg[1s] = "* I just solved today's&  crossword./%%"
0x0001E4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000224:
    exit
