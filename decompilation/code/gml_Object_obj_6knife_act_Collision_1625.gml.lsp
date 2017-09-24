0x000000:
    if !(== other.type 0s) goto 0x00002C
0x000014:
    pushenv -2s 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    popenv 0x00001C
0x00002C:
    exit
