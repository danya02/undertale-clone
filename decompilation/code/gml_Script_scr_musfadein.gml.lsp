0x000000:
    self.g = (instance_create[]:int32 (var 152s) (var 0s) (var 0s))
    if !(== self.argument0 0s) goto 0x000050
0x00003C:
    self.argument0 = 0.05d
0x000050:
    push self.argument0
    stog.fadespeed* = (int32 self.g)
0x00006C:
    exit
