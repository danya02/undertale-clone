0x000000:
    self.murder = 0s
    push -5s
    if !(>= 203s:flag 16s) goto 0x000034
0x000028:
    self.murder = 1s
0x000034:
    if !(== self.murder 1s) goto 0x000058
0x000048:
    call (instance_destroy[]:int32 )
    exit
0x000058:
    call (instance_create[]:int32 (var 1017s) self.y self.x)
0x00007C:
    exit
