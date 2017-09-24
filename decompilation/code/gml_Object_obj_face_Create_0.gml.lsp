0x000000:
    if !(bool (instance_exists[]:int32 (var 779s))) goto 0x00004C
0x000018:
    if !(== 779.count 0s) goto 0x00004C
0x00002C:
    self.visible = 0s
    stog.alarm[9s] = 1s
0x00004C:
    exit
