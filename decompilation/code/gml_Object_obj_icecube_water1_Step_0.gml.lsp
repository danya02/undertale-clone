0x000000:
    if !(== self.path_position 1s) goto 0x000044
0x000014:
    call (instance_create[]:int32 self.object_index (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x000044:
    exit
