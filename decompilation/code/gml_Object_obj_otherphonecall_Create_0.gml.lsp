0x000000:
    self.con = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    push -5s
    if !(== 277s:flag 1s) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    self.type = 0s
    push -5s
    if !(>= 5s:flag 40s) goto 0x0000A0
0x000084:
    push -5s
    push (<= 5s:flag 45s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000B4
0x0000A8:
    self.type = 1s
0x0000B4:
    push -5s
    if !(> 5s:flag 45s) goto 0x0000EC
0x0000D0:
    push -5s
    push (<= 5s:flag 50s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000100
0x0000F4:
    self.type = 2s
0x000100:
    if !(== global.debug 1s) goto 0x000134
0x000114:
    self.type = (choose[]:int32 (var 2s) (var 1s))
0x000134:
    if !(== self.type 0s) goto 0x000154
0x000148:
    call (instance_destroy[]:int32 )
0x000154:
    if !(>= global.plot 120s) goto 0x000174
0x000168:
    call (instance_destroy[]:int32 )
0x000174:
    exit
