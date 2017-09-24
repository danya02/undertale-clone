0x000000:
    self.side = 20s
    self.con = 2s
    pushenv (int32 self.s1) 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    pushenv (int32 self.s2) 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    popenv 0x000048
0x000058:
    call (event_user[]:int32 (var 0s))
0x00006C:
    exit
