0x000000:
    global.turntimer = -1s
    global.mnfight = 3s
    if !(== self.hurted 0s) goto 0x000044
0x00002C:
    push (bool (instance_exists[]:int32 (var 247s)))
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000058
0x00004C:
    [obj_movedoge].excited = 0s
0x000058:
    exit
