0x000000:
    self.myinteract = 3s
    global.msc = 226s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x0002F4
0x000058:
    global.msc = 0s
    stog.msg[0s] = "* Oh^1?&* About that piece I gave you?/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* ... I never gave you anything./%%"
    call (scr_itemcheck[]:int32 (var 16s))
    call (scr_storagecheck[]:int32 (var 16s))
    push -5s
    if (== 56s:flag 1s) goto 0x00010C
0x0000F0:
    push -5s
    push (== 56s:flag 2s)
    goto 0x000110
0x00010C:
    push 1s
0x000110:
    if !pop goto 0x0001A4
0x000114:
    stog.msg[0s] = "* Ah..^1. I can feel that piece&  of me has been well taken&  care of./"
    stog.msg[1s] = "* Thank you./"
    stog.msg[1s] = "* Hmmm...^1?&* The barrier's opened up?/"
    stog.msg[2s] = "* Hmmm..^1.&* Then^1, if it's not too much&  to ask.../"
    stog.msg[3s] = "* ... could you take that&  piece of me to the surface?/"
    stog.msg[4s] = "* I would really appreciate&  it./%%"
0x0001A4:
    push -5s
    if (== 56s:flag 1s) goto 0x0001DC
0x0001C0:
    push -5s
    push (== 56s:flag 2s)
    goto 0x0001E0
0x0001DC:
    push 1s
0x0001E0:
    if !pop goto 0x000254
0x0001E4:
    if !(== self.haveit 0s) goto 0x000254
0x0001F8:
    if !(== self.haveit2 0s) goto 0x000254
0x00020C:
    stog.msg[0s] = "* So^1, did you take that&  piece of me very far&  away...?/"
    stog.msg[1s] = "* .../"
    stog.msg[2s] = "* Where's the piece!?/%%"
0x000254:
    push -5s
    if (== 56s:flag 4s) goto 0x00028C
0x000270:
    push -5s
    push (== 56s:flag 5s)
    goto 0x000290
0x00028C:
    push 1s
0x000290:
    if !pop goto 0x0002F4
0x000294:
    stog.msg[0s] = "* Ah^1, the barrier's open...?/"
    stog.msg[1s] = "* You know I cannot move^1.&* Why are you telling me^1?&* To mock me?/"
    stog.msg[2s] = "* Everyone may think you are a&  good person^1, but this snowman&  knows the truth./"
    stog.msg[3s] = "* Someday^1, your friends will&  realize your heart is as&  cold as my butt./%%"
0x0002F4:
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0004D4
0x000308:
    global.msc = 0s
    self.noroom = 0s
    push -5s
    if !(<= 253s:flag 2s) goto 0x000350
0x00033C:
    call (scr_itemget[]:int32 (var 16s))
0x000350:
    if !(== self.noroom 1s) goto 0x000380
0x000364:
    stog.msg[0s] = "* (You're carrying too many&  items.)/%%"
    goto 0x0004D4
0x000380:
    push -5s
    if !(== 253s:flag 0s) goto 0x0003E4
0x00039C:
    stog.msg[0s] = "* Hello^1.&* I am a snowman^1.&* I cannot move./"
    stog.msg[1s] = "* Traveller^1, if you could.../"
    stog.msg[2s] = "* (You got the Snowman Piece.)/%%"
0x0003E4:
    push -5s
    if !(== 253s:flag 1s) goto 0x000448
0x000400:
    stog.msg[0s] = "* Oh me^1, oh my^1.&* What are you doing?/"
    stog.msg[1s] = "* Soon there won't be any&  of me left.../"
    stog.msg[2s] = "* (You got the Snowman Piece.)/%%"
0x000448:
    push -5s
    if !(== 253s:flag 2s) goto 0x000494
0x000464:
    stog.msg[0s] = "* Stop..^1.&* Please.../"
    stog.msg[1s] = "* (You got the Snowman Piece.)/%%"
0x000494:
    push -5s
    if !(>= 253s:flag 3s) goto 0x0004C8
0x0004B0:
    stog.msg[0s] = "* (A useless pile of snow.)/%%"
0x0004C8:
    self.dt = 1s
0x0004D4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0004FC:
    exit
