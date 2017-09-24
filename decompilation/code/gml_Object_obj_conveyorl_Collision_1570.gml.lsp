0x000000:
    if !(== self.gone 0s) goto 0x000060
0x000014:
    if (== global.interact 0s) goto 0x00003C
0x000028:
    push (== self.rideo 1s)
    goto 0x000040
0x00003C:
    push 1s
0x000040:
    if !pop goto 0x000060
0x000044:
    self.xfer = 1570.x
    self.go = 1s
0x000060:
    push 1s
    stog.gone* = (int32 self.object_index)
    if !(bool (instance_exists[]:int32 (var 1276s))) goto 0x00009C
0x000090:
    [obj_conveyorpuzzle1].active = 3s
0x00009C:
    exit
