0x000000:
    self.removed = 0s
    call (scr_itemcheck[]:int32 self.argument0)
    if !(== self.haveit 1s) goto 0x000314
0x000034:
    self.loc = 0s
    self.skip = 0s
    push -5s
    if !(== 0s:item self.argument0) goto 0x000080
0x00006C:
    push (== self.skip 0s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x0000A0
0x000088:
    self.loc = 0s
    self.skip = 1s
0x0000A0:
    push -5s
    if !(== 1s:item self.argument0) goto 0x0000D4
0x0000C0:
    push (== self.skip 0s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000F4
0x0000DC:
    self.loc = 1s
    self.skip = 1s
0x0000F4:
    push -5s
    if !(== 2s:item self.argument0) goto 0x000128
0x000114:
    push (== self.skip 0s)
    goto 0x00012C
0x000128:
    push 0s
0x00012C:
    if !pop goto 0x000148
0x000130:
    self.loc = 2s
    self.skip = 1s
0x000148:
    push -5s
    if !(== 3s:item self.argument0) goto 0x00017C
0x000168:
    push (== self.skip 0s)
    goto 0x000180
0x00017C:
    push 0s
0x000180:
    if !pop goto 0x00019C
0x000184:
    self.loc = 3s
    self.skip = 1s
0x00019C:
    push -5s
    if !(== 4s:item self.argument0) goto 0x0001D0
0x0001BC:
    push (== self.skip 0s)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x0001F0
0x0001D8:
    self.loc = 4s
    self.skip = 1s
0x0001F0:
    push -5s
    if !(== 5s:item self.argument0) goto 0x000224
0x000210:
    push (== self.skip 0s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x000244
0x00022C:
    self.loc = 5s
    self.skip = 1s
0x000244:
    push -5s
    if !(== 6s:item self.argument0) goto 0x000278
0x000264:
    push (== self.skip 0s)
    goto 0x00027C
0x000278:
    push 0s
0x00027C:
    if !pop goto 0x000298
0x000280:
    self.loc = 6s
    self.skip = 1s
0x000298:
    push -5s
    if !(== 7s:item self.argument0) goto 0x0002CC
0x0002B8:
    push (== self.skip 0s)
    goto 0x0002D0
0x0002CC:
    push 0s
0x0002D0:
    if !pop goto 0x0002EC
0x0002D4:
    self.loc = 7s
    self.skip = 1s
0x0002EC:
    call (scr_itemshift[]:int32 (var 0s) self.loc)
    self.removed = 1s
0x000314:
    exit
