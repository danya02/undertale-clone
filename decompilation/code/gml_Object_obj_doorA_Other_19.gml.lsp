0x000000:
    global.interact = 3s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    if !(== self.touched 0s) goto 0x000064
0x000044:
    stog.alarm[2s] = 8s
    self.touched = 1s
0x000064:
    exit
