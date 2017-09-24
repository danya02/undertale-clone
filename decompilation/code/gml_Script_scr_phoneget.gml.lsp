0x000000:
    self.i = 0s
    self.loop = 1s
    stog.phone[8s] = 999s
    if !(== self.loop 1s) goto 0x0000D0
0x000040:
    push -5s
    if !(== (int32 self.i):phone 0s) goto 0x000088
0x000064:
    stog.phone[(int32 self.i)] = self.argument0
    goto 0x0000D0
0x000088:
    if !(== self.i 8s) goto 0x0000B4
0x00009C:
    call (script_execute[]:int32 (var 87s))
    goto 0x0000D0
0x0000B4:
    self.i = (+ self.i 1s)
    goto 0x00002C
0x0000D0:
    call (script_execute[]:int32 (var 70s))
0x0000E4:
    exit
