0x000000:
    stog.item[8s] = self.argument1
    self.i = self.argument0
    if !(< self.i 8s) goto 0x000090
0x00003C:
    push -5s
    stog.item[(int32 self.i)] = (int32 (+ self.i 1s)):item
    self.i = (+ self.i 1s)
    goto 0x000028
0x000090:
    call (script_execute[]:int32 (var 75s))
    call (script_execute[]:int32 (var 82s))
0x0000B8:
    exit
