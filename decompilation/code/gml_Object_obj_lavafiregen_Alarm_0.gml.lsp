0x000000:
    stog.alarm[0s] = self.rate
    push (var 333s)
    push -5s
    self.g = (instance_create[]:int32 3s:idealborder -5s (- 0s:idealborder 40s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x00008C
0x000070:
    push self.dmg
    stog.dmg* = (int32 self.g)
0x00008C:
    push (var 333s)
    push -5s
    self.g = (instance_create[]:int32 3s:idealborder -5s (- 1s:idealborder 10s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x000100
0x0000E4:
    push self.dmg
    stog.dmg* = (int32 self.g)
0x000100:
    self.lavatime = (+ self.lavatime 1s)
    if !(== self.lavatime 2s) goto 0x0001DC
0x00012C:
    push (var 332s)
    push -5s
    push 2s:idealborder
    self.g = (instance_create[]:int32 (- (+ (/ (+ -5s 3s:idealborder) (double 2s)) 60s) (random[]:int32 (var 120s))) -5s (+ 0s:idealborder 10s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x0001DC
0x0001C0:
    push self.dmg
    stog.dmg* = (int32 self.g)
0x0001DC:
    if !(== self.lavatime 4s) goto 0x0002AC
0x0001F0:
    push (var 332s)
    push -5s
    push 2s:idealborder
    self.g = (instance_create[]:int32 (- (+ (/ (+ -5s 3s:idealborder) (double 2s)) 60s) (random[]:int32 (var 120s))) -5s (- 1s:idealborder 10s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x0002A0
0x000284:
    push self.dmg
    stog.dmg* = (int32 self.g)
0x0002A0:
    self.lavatime = 0s
0x0002AC:
    exit
