0x000000:
    if !(bool (instance_exists[]:int32 (var 1196s))) goto 0x0000A4
0x000018:
    if !(> 1196.fakev -1s) goto 0x000044
0x00002C:
    [obj_counterscroller].fakev = (- 1196.fakev 6s)
0x000044:
    if !(< 1196.fakev -1s) goto 0x000064
0x000058:
    [obj_counterscroller].fakev = -1s
0x000064:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000A4
0x000080:
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
0x0000A4:
    exit
