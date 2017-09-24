0x000000:
    if !(== global.debug 1s) goto 0x000028
0x000014:
    call (event_user[]:int32 (var 0s))
0x000028:
    exit
