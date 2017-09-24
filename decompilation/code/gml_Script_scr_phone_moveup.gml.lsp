0x000000:
    self.i = self.argument0
    if !(> self.i 0s) goto 0x000078
0x000024:
    push -5s
    stog.phone[(int32 self.i)] = (int32 (- self.i 1s)):phone
    self.i = (- self.i 1s)
    goto 0x000010
0x000078:
    stog.phone[0s] = self.argument1
    call (script_execute[]:int32 (var 70s))
0x0000A4:
    exit
