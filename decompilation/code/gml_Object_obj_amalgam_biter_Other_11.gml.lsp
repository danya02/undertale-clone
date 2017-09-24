0x000000:
    if !(== self.miss -1s) goto 0x000038
0x000014:
    self.miss = (floor[]:int32 (random[]:int32 (var 11s)))
    goto 0x0000F0
0x000038:
    self.missadd = (+ 1s (floor[]:int32 (random[]:int32 (var 6s))))
    self.miss = (+ self.miss (* (choose[]:int32 (var -1s) (var 1s)) self.missadd))
    if !(< self.miss 0s) goto 0x0000C4
0x0000AC:
    self.miss = (+ 0s self.missadd)
0x0000C4:
    if !(> self.miss 10s) goto 0x0000F0
0x0000D8:
    self.miss = (- 10s self.missadd)
0x0000F0:
    self.toothno = 0s
    push -5s
    self.tx = (- 0s:idealborder 25s)
    if (<= 5s 0) goto 0x00025C
0x000134:
    push 5s
    if !(!= self.toothno self.miss) goto 0x00018C
0x00014C:
    self.downtooth = (instance_create[]:int32 (var 546s) (var 0s) self.tx)
    push 0s
    stog.top* = (int32 self.downtooth)
0x00018C:
    self.toothno = (+ self.toothno 1s)
    self.tx = (+ self.tx 25s)
    if !(!= self.toothno self.miss) goto 0x000214
0x0001D4:
    self.uptooth = (instance_create[]:int32 (var 546s) (var 0s) self.tx)
    push 1s
    stog.top* = (int32 self.uptooth)
0x000214:
    self.toothno = (+ self.toothno 1s)
    self.tx = (+ self.tx 25s)
    if (bool (- pop 1)) goto 0x000134
0x00025C:
    push (- pop 1)
    pop
    if !(!= self.toothno self.miss) goto 0x0002B8
0x000278:
    self.downtooth = (instance_create[]:int32 (var 546s) (var 0s) self.tx)
    push 0s
    stog.top* = (int32 self.downtooth)
0x0002B8:
    exit
