0x000000:
    pushenv 1584s 0x000014
0x000008:
    self.soulmax = 1000s
0x000014:
    popenv 0x000008
0x000018:
    if !(== 1585.dcon 30s) goto 0x000044
0x00002C:
    [obj_flowey_master].dcon = 31s
    call (instance_destroy[]:int32 )
0x000044:
    exit
