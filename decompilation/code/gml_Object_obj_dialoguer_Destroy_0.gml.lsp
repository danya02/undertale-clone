0x000000:
    if !(== (instance_exists[]:int32 (var 774s)) 1s) goto 0x000034
0x00001C:
    pushenv 774s 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    exit
