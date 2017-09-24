0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Sorry..^1. UNDYNE^1, like^1, told&  us there was totally a&  human in the area./"
    stog.msg[1s] = "* So^1, like^1, us Royal Guards are&  blocking off the elevators&  for now./"
    stog.msg[2s] = "* Ngah^1! Even if the elevators&  aren't working anyway^1, we'll&  do our best^1, Ms. UNDYNE!/%%"
    if !(== self.tt 1s) goto 0x0000F8
0x000098:
    stog.msg[0s] = "* Like^1, NO WAY you're getting&  by us./"
    stog.msg[1s] = "* But^1, between you and me...&* I think you could go through&  that creepy lab over there./"
    stog.msg[2s] = "* Between you^1, me^1, and my&  bro here^1, I mean./"
    stog.msg[3s] = "* I tell him ALL my secrets./%%"
0x0000F8:
    if !(>= self.tt 2s) goto 0x00013C
0x00010C:
    stog.msg[0s] = "* Hey^1!&* No loitering!/"
    stog.msg[1s] = "* Like^1, just kidding^1.&* I don't care^1.&* Like^1, loiter your heart out./%%"
0x00013C:
    if !(== self.room 181s) goto 0x000210
0x000150:
    stog.msg[0s] = "* Oh^1, hey./"
    stog.msg[1s] = "* We're^1, like^1, taking a rain&  check on that killing-you&  thing./"
    stog.msg[2s] = "* Like^1, don't tell Undyne&  about this^1, OK?/%%"
    if !(>= self.tt 1s) goto 0x0001C4
0x0001AC:
    stog.msg[0s] = "* You didn't tell her^1, did&  you...?/%%"
0x0001C4:
    push -5s
    if !(== 7s:flag 1s) goto 0x000210
0x0001E0:
    stog.msg[0s] = "* Undyne told us that the&  Royal Guard is being disbanded./"
    stog.msg[1s] = "* Like^1, bummer..^1.&* Guess we'll have to get&  used to Love and Peace./%%"
0x000210:
    self.tt = (+ self.tt 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000250:
    exit
