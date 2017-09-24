0x000000:
    self.gen = (instance_create[]:int32 (var 325s) (var 150s) (var 100s))
    if !(bool (instance_exists[]:int32 self.gen)) goto 0x00005C
0x000040:
    push self.dmg
    stog.dmg* = (int32 self.gen)
0x00005C:
    stog.alarm[0s] = self.rate
0x000074:
    exit
