0x000000:
    self.i = 0s
    if !(< self.i 16s) goto 0x0000D0
0x000020:
    if !(!= self.i self.currentideal) goto 0x000058
0x000038:
    push (!= self.i (+ self.currentideal 1s))
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x0000B4
0x000060:
    self.sb = (instance_create[]:int32 (var 1180s) (+ self.y 20s) (+ self.x 13s))
    push self.i
    stog.idealspot* = (int32 self.sb)
0x0000B4:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000D0:
    self.currentideal = (+ self.currentideal (* (choose[]:int32 (var 2s) (var 1s)) (choose[]:int32 (var 1s) (var -1s))))
    if !(< self.currentideal 1s) goto 0x000144
0x00012C:
    self.currentideal = (+ self.currentideal 2s)
0x000144:
    if !(> self.currentideal 14s) goto 0x000170
0x000158:
    self.currentideal = (- self.currentideal 2s)
0x000170:
    exit
