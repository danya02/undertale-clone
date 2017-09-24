0x000000:
    if !(== self.con 0s) goto 0x000040
0x000014:
    call (event_inherited[]:int32 )
    self.con = 1s
    stog.alarm[4s] = 100s
0x000040:
    exit
