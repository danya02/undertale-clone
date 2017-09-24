0x000000:
    push -5s
    self.myx = (int32 (int32 self.myself):monsterinstance):x
    push -5s
    self.myy = (int32 (int32 self.myself):monsterinstance):y
    self.blt1 = (instance_create[]:int32 (var 634s) (+ self.myy 48s) (+ self.myx 52s))
    self.blt2 = (instance_create[]:int32 (var 634s) (+ self.myy 56s) (+ self.myx 82s))
    push self.dmg
    stog.dmg* = (int32 self.blt1)
    push self.dmg
    stog.dmg* = (int32 self.blt2)
    stog.alarm[0s] = global.firingrate
0x000118:
    exit
