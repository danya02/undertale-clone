0x000000:
    if !(< (instance_number[]:int32 (var 381s)) 10s) goto 0x0000BC
0x00001C:
    push (var 381s)
    push -5s
    self.bl = (instance_create[]:int32 (- 2s:idealborder 10s) -5s (+ (+ 0s:idealborder 10s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 20s))))
    if !(bool (instance_exists[]:int32 self.bl)) goto 0x0000BC
0x0000A0:
    push self.dmg
    stog.dmg* = (int32 self.bl)
0x0000BC:
    stog.alarm[0s] = self.rate
0x0000D4:
    exit
