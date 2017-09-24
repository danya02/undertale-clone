0x000000:
    if !(== (instance_exists[]:int32 (var 1598s)) 0s) goto 0x000030
0x00001C:
    push (== self.con 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000058
0x000038:
    self.con = 1s
    stog.alarm[4s] = 10s
0x000058:
    if !(== self.con 2s) goto 0x000080
0x00006C:
    call (room_goto[]:int32 (var 294s))
0x000080:
    exit
