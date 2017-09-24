0x000000:
    if !(== self.gone 0s) goto 0x000044
0x000014:
    if !(== global.interact 0s) goto 0x000044
0x000028:
    self.yfer = 1570.y
    self.go = 1s
0x000044:
    push 1s
    stog.gone* = (int32 self.object_index)
    if !(bool (instance_exists[]:int32 (var 1276s))) goto 0x000080
0x000074:
    [obj_conveyorpuzzle1].active = 3s
0x000080:
    exit
