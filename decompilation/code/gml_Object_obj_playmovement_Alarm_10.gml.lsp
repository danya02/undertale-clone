0x000000:
    stog.alarm[10s] = 15s
    if !(> self.con 10s) goto 0x000180
0x000028:
    self.ql = 0s
    if !(> (- self.mainmove self.lastmove) 10s) goto 0x00006C
0x000054:
    self.ql = (+ self.ql 1s)
0x00006C:
    self.franto = (+ (abs[]:int32 (- 1570.x self.lastx)) (abs[]:int32 (- 1570.y self.lasty)))
    if !(< self.franto 30s) goto 0x0000D8
0x0000C4:
    push (> self.franto 3s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x0000F8
0x0000E0:
    self.ql = (+ self.ql 1s)
0x0000F8:
    if !(> self.franto 38s) goto 0x000124
0x00010C:
    self.unfrantic = (+ self.unfrantic 1s)
0x000124:
    self.lastx = 1570.x
    self.lasty = 1570.y
    if !(== self.ql 2s) goto 0x000170
0x000158:
    self.frantic = (+ self.frantic 1s)
0x000170:
    self.lastmove = self.mainmove
0x000180:
    exit
