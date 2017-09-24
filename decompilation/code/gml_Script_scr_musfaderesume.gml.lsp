0x000000:
    if !(bool (instance_exists[]:int32 (var 93s))) goto 0x00005C
0x000018:
    [obj_musfadepause].resume = 1s
    if !(== self.argument0 0s) goto 0x00004C
0x000038:
    self.argument0 = 0.05d
0x00004C:
    [obj_musfadepause].fadespeed = self.argument0
0x00005C:
    exit
