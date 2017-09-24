0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 27s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Error Baby%%"
    if !(> self.type 0s) goto 0x00007C
0x000068:
    push (< self.type 7s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x0000E0
0x000084:
    self.basic = (+ 716s (* self.type 4s))
    if !(> self.talkedto 0s) goto 0x0000D0
0x0000B8:
    self.basic = (+ self.basic 2s)
0x0000D0:
    global.msc = self.basic
0x0000E0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.mydialoguer)
    self.talkedto = (+ self.talkedto 1s)
0x000138:
    exit
