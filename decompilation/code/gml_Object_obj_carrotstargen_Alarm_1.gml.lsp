0x000000:
    self.side = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(== self.side self.oldside) goto 0x000050
0x000038:
    self.side = (+ self.side 1s)
0x000050:
    if !(>= self.side 3s) goto 0x000070
0x000064:
    self.side = 0s
0x000070:
    self.oldside = self.side
    push (var 698s)
    self.cshot = (instance_create[]:int32 -5s 2s:idealborder (+ 276s (* self.side 30s)))
    push self.dmg
    stog.dmg* = (int32 self.cshot)
    if !(== self.shake 1s) goto 0x000124
0x0000F0:
    push 1s
    stog.shake* = (int32 self.cshot)
    push 2s
    push (int32 self.cshot)
    stog.alarm[] = 0s
0x000124:
    stog.alarm[1s] = (/ self.rate (double 2s))
    if !(== self.mode 1s) goto 0x000228
0x00015C:
    push (var 698s)
    self.cshot2 = (instance_create[]:int32 -5s 3s:idealborder (- 336s (* self.side 30s)))
    push (- (int32 self.cshot):gravity)
    stog.gravity* = (int32 self.cshot2)
    push (- (int32 self.cshot):hspeed)
    stog.hspeed* = (int32 self.cshot2)
    push self.dmg
    stog.dmg* = (int32 self.cshot2)
    stog.alarm[1s] = self.rate
0x000228:
    exit
