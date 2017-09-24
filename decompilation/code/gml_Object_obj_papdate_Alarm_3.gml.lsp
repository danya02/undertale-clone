0x000000:
    if !(== self.sha 0s) goto 0x000024
0x000014:
    self.sha = self.x
0x000024:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000074
0x000054:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000088
0x000074:
    self.shudder = (- self.shudder)
0x000088:
    if !(== self.shudder 0s) goto 0x0000C4
0x00009C:
    self.sha = 0s
    self.cn = (+ self.cn 1s)
    exit
0x0000C4:
    stog.alarm[3s] = 3s
    if !(> self.cn 60s) goto 0x000100
0x0000EC:
    stog.alarm[3s] = 2s
0x000100:
    if !(> self.cn 71s) goto 0x000128
0x000114:
    stog.alarm[3s] = 1s
0x000128:
    exit
