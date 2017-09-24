0x000000:
    self.g = (instance_create[]:int32 (var 324s) (+ self.y 10s) (+ self.x 15s))
    if !(bool (instance_exists[]:int32 self.g)) goto 0x00006C
0x000050:
    push self.dmg
    stog.dmg* = (int32 self.g)
0x00006C:
    stog.alarm[0s] = 12s
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x0000B8
0x0000A4:
    stog.alarm[0s] = 18s
0x0000B8:
    exit
