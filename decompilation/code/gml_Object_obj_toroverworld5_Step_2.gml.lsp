0x000000:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000058
0x00001C:
    call (instance_create[]:int32 (var 865s) self.y self.x)
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000058:
    exit
