0x000000:
    stog.flag[17s] = 0s
    push -5s
    if !(== 389s:flag 4s) goto 0x000044
0x000030:
    stog.flag[389s] = 5s
0x000044:
    if !(> global.plot 116s) goto 0x00006C
0x000058:
    call (instance_destroy[]:int32 )
    exit
    goto 0x0000C4
0x00006C:
    self.nap = (instance_create[]:int32 (var 1055s) (var 60s) (var 300s))
    push 1130s
    stog.sprite_index* = (int32 self.nap)
    push 1s
    stog.float* = (int32 self.nap)
0x0000C4:
    self.image_xscale = 5s
    self.con = 0s
    self.tc = 0s
0x0000E8:
    exit
