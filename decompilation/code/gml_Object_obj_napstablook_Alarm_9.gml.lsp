0x000000:
    if !(== (instance_exists[]:int32 self.blconwriter) 0s) goto 0x000034
0x00001C:
    stog.alarm[10s] = 2s
    goto 0x000048
0x000034:
    stog.alarm[9s] = 2s
0x000048:
    exit
