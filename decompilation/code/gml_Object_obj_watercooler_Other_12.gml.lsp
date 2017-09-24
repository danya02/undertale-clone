0x000000:
    push -5s
    if !(> 353s:flag 0s) goto 0x000184
0x00001C:
    if !(== self.madepud 0s) goto 0x0000A8
0x000030:
    self.pud = (instance_create[]:int32 (var 1348s) (var 63s) (var 170s))
    self.pudspr = (scr_marker[]:int32 (var 1869s) (var 60s) (var 170s))
    push 900000
    stog.depth* = (int32 self.pudspr)
    self.madepud = 1s
0x0000A8:
    push -5s
    if !(> 353s:flag 0s) goto 0x000184
0x0000C4:
    push -5s
    if !(> 353s:flag 7s) goto 0x0000F8
0x0000E0:
    push 1s
    stog.image_index* = (int32 self.pudspr)
0x0000F8:
    push -5s
    if !(> 353s:flag 15s) goto 0x00012C
0x000114:
    push 2s
    stog.image_index* = (int32 self.pudspr)
0x00012C:
    push -5s
    if !(> 353s:flag 15s) goto 0x000164
0x000148:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x000184
0x00016C:
    push 3s
    stog.image_index* = (int32 self.pudspr)
0x000184:
    exit
