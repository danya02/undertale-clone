0x000000:
    pushenv -2s 0x000048
0x000008:
    call (instance_create[]:int32 (var 1241s) (+ self.y 10s) (+ self.x 10s))
    call (instance_destroy[]:int32 )
0x000048:
    popenv 0x000008
0x00004C:
    pushenv 1244s 0x000068
0x000054:
    call (event_user[]:int32 (var 4s))
0x000068:
    popenv 0x000054
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    exit
