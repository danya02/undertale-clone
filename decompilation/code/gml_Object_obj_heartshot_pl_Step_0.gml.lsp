0x000000:
    if !(< self.y 50s) goto 0x000050
0x000014:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x000044
0x00002C:
    global.ratings = (- global.ratings 5s)
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    exit
