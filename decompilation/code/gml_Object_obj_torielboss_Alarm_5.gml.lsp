0x000000:
    if !(bool (instance_exists[]:int32 (var 784s))) goto 0x000038
0x000018:
    pushenv (int32 self.blconwd) 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    popenv 0x000028
0x000038:
    if !(bool (instance_exists[]:int32 (var 186s))) goto 0x000070
0x000050:
    pushenv (int32 self.blcon) 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    popenv 0x000060
0x000070:
    if !(bool (instance_exists[]:int32 (var 187s))) goto 0x0000A0
0x000088:
    pushenv 187s 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    popenv 0x000090
0x0000A0:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    if (< self.mycommand 40s) goto 0x0000EC
0x0000D8:
    push (< global.hp 3s)
    goto 0x0000F0
0x0000EC:
    push 1s
0x0000F0:
    if !pop goto 0x000100
0x0000F4:
    global.border = 7s
0x000100:
    exit
