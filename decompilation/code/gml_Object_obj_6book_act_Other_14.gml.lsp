0x000000:
    if !(== self.con 0s) goto 0x000028
0x000014:
    push (== self.type 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000074
0x000030:
    self.type = 1s
    call (event_inherited[]:int32 )
    pushenv 1624s 0x000070
0x000050:
    self.con = 1s
    stog.alarm[4s] = 100s
0x000070:
    popenv 0x000050
0x000074:
    exit
