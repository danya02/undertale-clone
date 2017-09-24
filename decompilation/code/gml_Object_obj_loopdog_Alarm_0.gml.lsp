0x000000:
    if !(> (scr_monstersum[]:int32 ) 1s) goto 0x000168
0x000014:
    self.gen = (instance_create[]:int32 (var 688s) (+ self.y 10s) (- self.x 20s))
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.gen)
    push 1s
    stog.blue* = (int32 self.gen)
    self.add = (/ (floor[]:int32 (random[]:int32 (var 8s))) (double 10s))
    push (+ 2.2d self.add)
    stog.xadd* = (int32 self.gen)
    push (+ 1.2d (* self.add 1s))
    stog.speed* = (int32 self.gen)
    push 999s
    stog.specialtimer* = (int32 self.gen)
    self.sprite_index = 103s
    stog.alarm[2s] = 15s
    stog.alarm[0s] = 75s
0x000168:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0001D0
0x00017C:
    self.sprite_index = 102s
    stog.alarm[2s] = 30s
    call (instance_create[]:int32 (var 643s) (+ self.y 25s) (- self.x 20s))
0x0001D0:
    exit
