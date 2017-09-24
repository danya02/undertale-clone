0x000000:
    push (var 321s)
    self.gen = (instance_create[]:int32 (var 50s) -5s (+ (+ 0s:idealborder 20s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 70s))))
    if !(bool (instance_exists[]:int32 self.gen)) goto 0x0000C8
0x000074:
    push self.dmg
    stog.dmg* = (int32 self.gen)
    push self.parent
    stog.parent* = (int32 self.gen)
    push self.green
    stog.green* = (int32 self.gen)
0x0000C8:
    if !(== self.green 1s) goto 0x000104
0x0000DC:
    pushenv (int32 self.gen) 0x000100
0x0000EC:
    call (event_user[]:int32 (var 0s))
0x000100:
    popenv 0x0000EC
0x000104:
    stog.alarm[0s] = self.rate
    if !(== self.green 1s) goto 0x000154
0x000130:
    push -1s
    stog.alarm[(+ 0s:alarm 10s)] = 0s
0x000154:
    exit
