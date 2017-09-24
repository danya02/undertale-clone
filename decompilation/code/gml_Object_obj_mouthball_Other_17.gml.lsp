0x000000:
    pushenv (int32 self.mb) 0x000024
0x000010:
    call (event_user[]:int32 (var 7s))
0x000024:
    popenv 0x000010
0x000028:
    push (- self.num 1s)
    stog.num* = (int32 self.mb)
    call (event_user[]:int32 (var 8s))
0x000060:
    exit
