0x000000:
    if !(bool (instance_exists[]:int32 self.mb)) goto 0x000040
0x000018:
    pushenv (int32 self.mb) 0x00003C
0x000028:
    call (event_user[]:int32 (var 7s))
0x00003C:
    popenv 0x000028
0x000040:
    self.dont = 1s
    call (event_user[]:int32 (var 8s))
0x000060:
    exit
