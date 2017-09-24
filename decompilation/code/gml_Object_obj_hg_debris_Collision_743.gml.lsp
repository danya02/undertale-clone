0x000000:
    if !(bool (instance_exists[]:int32 (var 594s))) goto 0x000040
0x000018:
    if !(< 594.c_counter 280s) goto 0x000040
0x00002C:
    call (event_user[]:int32 (var 7s))
0x000040:
    exit
