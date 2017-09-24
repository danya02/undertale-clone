0x000000:
    self.hdno = 0s
    self.oncheck = 0s
    self.parent = 1570s
    if !(bool (instance_position[]:int32 (var 1273s) (- (int32 self.parent):y (* self.hdno 4s)) (+ (int32 self.parent):x 10s))) goto 0x00009C
0x000080:
    self.hdno = (+ self.hdno 1s)
    goto 0x000024
0x00009C:
    self.hd = (instance_create[]:int32 (var 1273s) (- (int32 self.parent):y (* self.hdno 4s)) (+ (int32 self.parent):x 10s))
    push 1570s
    stog.parent* = (int32 self.hd)
    push (- 1s (* self.hdno 0.1d))
    stog.friction* = (int32 self.hd)
    push (* self.hdno 4s)
    stog.relative* = (int32 self.hd)
    if !(== self.negf 0s) goto 0x0001C4
0x00017C:
    if !(< (int32 self.hd):friction 0.1d) goto 0x0001C4
0x0001A4:
    push 0.1d
    stog.friction* = (int32 self.hd)
0x0001C4:
    exit
