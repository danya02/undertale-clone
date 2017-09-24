0x000000:
    if !(== self.argument0 0s) goto 0x000028
0x000014:
    self.argument0 = 0.2d
0x000028:
    if !(== self.argument1 0s) goto 0x000048
0x00003C:
    self.argument0 = 1s
0x000048:
    if !(== self.argument2 0s) goto 0x00006C
0x00005C:
    self.argument0 = 16777215
0x00006C:
    self.g = (instance_create[]:int32 (var 118s) self.y self.x)
    push self.argument2
    stog.color* = (int32 self.g)
    push self.argument1
    stog.amt* = (int32 self.g)
    push self.argument0
    stog.fadespeed* = (int32 self.g)
0x0000E8:
    exit
