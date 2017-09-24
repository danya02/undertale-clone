0x000000:
    stog.alarm[0s] = 8s
    self.cross = (instance_create[]:int32 (var 364s) (+ self.y 10s) (+ self.x 10s))
    push 3.5d
    stog.speed* = (int32 self.cross)
    if !(> (distance_to_point[]:int32 743.y 743.x) 190s) goto 0x0000B0
0x000090:
    push 5.5d
    stog.speed* = (int32 self.cross)
0x0000B0:
    self.pop = (scr_monstersum[]:int32 )
    stog.direction* = (+ (int32 self.cross):direction (- 15s (random[]:int32 (var 30s))))
    push 0.015d
    stog.friction* = (int32 self.cross)
    push 200s
    stog.exist* = (int32 self.cross)
    push self.dmg
    stog.dmg* = (int32 self.cross)
    if !(> self.pop 1s) goto 0x0001D4
0x000164:
    push (int32 self.cross)
    stog.direction* = (+ (int32 self.cross):direction (- 10s (random[]:int32 (var 20s))))
    stog.alarm[0s] = 15s
    push 2.8d
    stog.speed* = (int32 self.cross)
0x0001D4:
    push (int32 self.cross)
    if !(== self.alt 1s) goto 0x000220
0x0001E8:
    push 0.01d
    stog.friction* = (int32 self.cross)
    push 3s
    stog.speed* = (int32 self.cross)
0x000220:
    exit
