0x000000:
    if !(< self.nod self.no) goto 0x000078
0x000018:
    push -1s
    pushenv (int32 (int32 self.nod):dp) 0x000044
0x000038:
    self.con = 1s
0x000044:
    popenv 0x000038
0x000048:
    stog.alarm[5s] = 2s
    self.nod = (+ self.nod 1s)
    goto 0x000084
0x000078:
    self.con = 3s
0x000084:
    exit
