0x000000:
    self.x = (+ self.x 2.2d)
    self.y = (+ self.y 1s)
    self.yy = 0s
    self.xx = 0s
    if !(< self.yy 5s) goto 0x000254
0x000064:
    stog.snowx[(assert_neq:int16 -1 (int32 self.xx)), (assert_neq:int16 -1 (int32 self.yy))] = (+ self.x (* self.xx 4s))
    if !(== self.xx 4s) goto 0x000128
0x0000D0:
    push -1s
    stog.snowx[(- (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx 0.2d)] = (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
0x000128:
    stog.snowy[(assert_neq:int16 -1 (int32 self.xx)), (assert_neq:int16 -1 (int32 self.yy))] = (+ self.y (* self.yy 4s))
    stog.dodraw[(assert_neq:int16 -1 (int32 self.xx)), (assert_neq:int16 -1 (int32 self.yy))] = 1s
    stog.moveme[(assert_neq:int16 -1 (int32 self.xx)), (assert_neq:int16 -1 (int32 self.yy))] = 1s
    if !(== self.xx 4s) goto 0x000238
0x000214:
    self.xx = -1s
    self.yy = (+ self.yy 1s)
0x000238:
    self.xx = (+ self.xx 1s)
    goto 0x000050
0x000254:
    exit
