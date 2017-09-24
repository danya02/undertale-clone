0x000000:
    if !(>= global.plot 63s) goto 0x00008C
0x000014:
    call (instance_create[]:int32 (var 1370s) self.y self.x)
    if !(~ (bool (instance_exists[]:int32 (var 1376s)))) goto 0x000080
0x000054:
    call (instance_create[]:int32 (var 1376s) self.y (+ self.x 3s))
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    exit
