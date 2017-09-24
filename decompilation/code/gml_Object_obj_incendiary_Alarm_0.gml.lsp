0x000000:
    if !(< self.number 12s) goto 0x0000D4
0x000014:
    self.bomb2 = (instance_create[]:int32 (var 323s) (- self.y 18s) (- (+ self.x (random[]:int32 (var 8s))) 4s))
    if !(bool (instance_exists[]:int32 self.bomb2)) goto 0x0000D4
0x000078:
    push self.hspeed
    stog.hspeed* = (int32 self.bomb2)
    push (+ self.number 1s)
    stog.number* = (int32 self.bomb2)
    push self.dmg
    stog.dmg* = (int32 self.bomb2)
0x0000D4:
    exit
