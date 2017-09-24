0x000000:
    if !(== self.normal 1s) goto 0x000028
0x000014:
    push (== self.destroy 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000110
0x000030:
    self.speed = 0s
    pushenv 287s 0x000058
0x000044:
    call (event_user[]:int32 (var 3s))
0x000058:
    popenv 0x000044
0x00005C:
    push 288s
    if !(< 5s:alarm 2s) goto 0x000098
0x000078:
    pushenv 288s 0x000094
0x000080:
    call (event_user[]:int32 (var 2s))
0x000094:
    popenv 0x000080
0x000098:
    pushenv 287s 0x0000B4
0x0000A0:
    call (event_user[]:int32 (var 7s))
0x0000B4:
    popenv 0x0000A0
0x0000B8:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000F8
0x0000D4:
    call (scr_shake[]:int32 (var 2s) (var 4s) (var 4s))
0x0000F8:
    self.destroy = 1s
    self.normal = 0s
0x000110:
    exit
