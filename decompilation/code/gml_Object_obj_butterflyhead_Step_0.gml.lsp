0x000000:
    if !(> self.shake 0s) goto 0x000084
0x000014:
    self.x = (- (+ self.nowx (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.nowy (random[]:int32 self.shake)) (random[]:int32 self.shake))
0x000084:
    if !(== self.walking 1s) goto 0x0000B0
0x000098:
    self.nowx = (- self.nowx 1s)
0x0000B0:
    self.factor = (+ self.factor 0.04d)
0x0000D0:
    exit
