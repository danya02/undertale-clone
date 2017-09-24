0x000000:
    self.iii = (instance_create[]:int32 (var 616s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000084
0x000040:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    push 2s
    stog.bullettype* = (int32 self.iii)
0x000084:
    exit
