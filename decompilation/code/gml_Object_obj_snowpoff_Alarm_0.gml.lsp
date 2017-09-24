0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.tt 0s) goto 0x000068
0x000050:
    stog.msg[0s] = "* It's a snow poff./%%"
0x000068:
    if !(== self.tt 1s) goto 0x000094
0x00007C:
    stog.msg[0s] = "* And this..^1.&* Is a snow poff./%%"
0x000094:
    if !(== self.tt 2s) goto 0x0000C0
0x0000A8:
    stog.msg[0s] = "* This^1, however^1, is a snow poff./%%"
0x0000C0:
    if !(== self.tt 3s) goto 0x0000EC
0x0000D4:
    stog.msg[0s] = "* Surprisingly^1, it's a snow poff./%%"
0x0000EC:
    if !(== self.tt 4s) goto 0x000118
0x000100:
    stog.msg[0s] = "* Snow poff.../%%"
0x000118:
    if !(== self.tt 5s) goto 0x000144
0x00012C:
    stog.msg[0s] = "* Is it really a snow poff?/%%"
0x000144:
    if !(== self.tt 6s) goto 0x000170
0x000158:
    stog.msg[0s] = "* Behold^1!&* A snow poff./%%"
0x000170:
    if !(>= self.tt 7s) goto 0x0001A0
0x000184:
    push -5s
    push (== 65s:flag 1s)
    goto 0x0001A4
0x0001A0:
    push 0s
0x0001A4:
    if !pop goto 0x0001CC
0x0001A8:
    stog.msg[0s] = "* What's this called?/%%"
    self.tt = 0s
0x0001CC:
    if !(>= self.tt 7s) goto 0x0001FC
0x0001E0:
    push -5s
    push (== 65s:flag 0s)
    goto 0x000200
0x0001FC:
    push 0s
0x000200:
    if !pop goto 0x000254
0x000204:
    stog.msg[0s] = "* Eh^1?&* There's 30 G inside&  this..^1. what is this?/%%"
    global.gold = (+ global.gold 30s)
    self.tt = 0s
    stog.flag[65s] = 1s
0x000254:
    self.gg = self.tt
    [obj_snowpoff].tt = (+ self.tt 1s)
    self.tt = self.gg
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0002B4:
    exit
