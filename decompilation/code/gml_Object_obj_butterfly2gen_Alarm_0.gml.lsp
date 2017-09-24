0x000000:
    stog.alarm[0s] = (+ 7s (random[]:int32 (var 3s)))
    push (var 627s)
    self.blt = (instance_create[]:int32 -5s (- 3s:idealborder 4s) (- 743.x 40s))
    if !(bool (instance_exists[]:int32 self.blt)) goto 0x0000AC
0x000080:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.blt)
0x0000AC:
    push (var 627s)
    self.blt = (instance_create[]:int32 -5s (- 3s:idealborder 4s) (+ 743.x 40s))
    if !(bool (instance_exists[]:int32 self.blt)) goto 0x000130
0x000104:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.blt)
0x000130:
    exit
