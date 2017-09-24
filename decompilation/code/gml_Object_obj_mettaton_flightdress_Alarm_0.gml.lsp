0x000000:
    if !(> self.sing 0s) goto 0x000028
0x000014:
    push (< self.sing 12s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000094
0x000030:
    call (event_user[]:int32 (var 1s))
    if !(== self.offsing 1s) goto 0x00006C
0x000058:
    stog.alarm[0s] = 75s
0x00006C:
    if !(== self.offsing 0s) goto 0x000094
0x000080:
    stog.alarm[0s] = 75s
0x000094:
    exit
