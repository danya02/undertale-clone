0x000000:
    self.slot = (floor[]:int32 (random[]:int32 (var 6s)))
    push -5s
    push 0s:idealborder
    push -5s
    self.myx = (+ 1s:idealborder (* (/ (- -5s 0s:idealborder) (double 6s)) self.slot))
    push -5s
    self.myy = (- 2s:idealborder 20s)
    self.iii = (instance_create[]:int32 (var 630s) self.myy self.myx)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00019C
0x0000D8:
    if !(< (+ 743.x 8s) self.myx) goto 0x000118
0x0000F8:
    push -0.5d
    stog.hspeed* = (int32 self.iii)
0x000118:
    if !(> (+ 743.x 8s) self.myx) goto 0x000158
0x000138:
    push 0.5d
    stog.hspeed* = (int32 self.iii)
0x000158:
    push 150s
    stog.sprite_index* = (int32 self.iii)
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x00019C:
    stog.alarm[0s] = self.firingspeed
0x0001B4:
    exit
