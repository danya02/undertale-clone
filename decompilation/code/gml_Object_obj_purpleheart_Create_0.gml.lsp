0x000000:
    self.ttype = 0s
    self.yadd = 0s
    self.yadd2 = 3s
    self.yz2 = 0s
    if (== self.ttype 0s) goto 0x000058
0x000044:
    push (== self.ttype 3s)
    goto 0x00005C
0x000058:
    push 1s
0x00005C:
    if !pop goto 0x000138
0x000060:
    self.type = 0s
    push -5s
    push 0s:idealborder
    self.xmid = (/ (+ -5s 1s:idealborder) (double 2s))
    self.xlen = 100s
    self.yamt = 3s
    self.yspace = 40s
    self.yno = 2s
    push -5s
    self.yzero = (+ 2s:idealborder 30s)
    stog.alarm[9s] = 1s
    self.visible = 0s
    self.moving = 0s
    self.space = 0s
    self.yadd2 = 3s
0x000138:
    if !(== self.ttype 1s) goto 0x000210
0x00014C:
    self.type = 0s
    push -5s
    push 0s:idealborder
    self.xmid = (/ (+ -5s 1s:idealborder) (double 2s))
    self.xlen = 100s
    self.yamt = 7s
    self.yspace = 40s
    self.yno = 2s
    self.yzero = 100s
    stog.alarm[9s] = 1s
    self.visible = 0s
    self.moving = 0s
    self.space = 0s
    self.yadd = 3s
0x000210:
    self.yoff = 0s
0x00021C:
    exit
