0x000000:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000034
0x00001C:
    stog.alarm[7s] = 2s
    goto 0x000048
0x000034:
    stog.alarm[11s] = 1s
0x000048:
    exit
