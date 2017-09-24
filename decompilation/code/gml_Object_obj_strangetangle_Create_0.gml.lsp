0x000000:
    self.w = 30s
    self.h = 30s
    stog.alarm[0s] = 1s
    self.active = 0s
    self.siner = 0s
    pushenv 185s 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    popenv 0x00004C
0x00005C:
    exit
