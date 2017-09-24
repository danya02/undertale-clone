0x000000:
    push (var 697s)
    self.cshot = (instance_create[]:int32 -5s 2s:idealborder (var 305s))
    if !(bool (instance_exists[]:int32 self.cshot)) goto 0x0001B8
0x000048:
    push self.dmg
    stog.dmg* = (int32 self.cshot)
    if !(== self.shake 1s) goto 0x0000AC
0x000078:
    push 1s
    stog.shake* = (int32 self.cshot)
    push 2s
    push (int32 self.cshot)
    stog.alarm[] = 0s
0x0000AC:
    stog.alarm[0s] = (/ self.rate (double 3s))
    if !(== self.mode 1s) goto 0x0001B8
0x0000E4:
    push (var 697s)
    self.cshot2 = (instance_create[]:int32 -5s 3s:idealborder (var 305s))
    if !(bool (instance_exists[]:int32 self.cshot2)) goto 0x0001A0
0x00012C:
    push (- (int32 self.cshot):gravity)
    stog.gravity* = (int32 self.cshot2)
    push (- (int32 self.cshot):hspeed)
    stog.hspeed* = (int32 self.cshot2)
    push self.dmg
    stog.dmg* = (int32 self.cshot2)
0x0001A0:
    stog.alarm[0s] = self.rate
0x0001B8:
    exit
