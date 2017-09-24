0x000000:
    stog.flag[(int32 (+ self.argument2 10s))] = self.argument1
    self.i = self.argument0
    if !(< self.i 10s) goto 0x0000B8
0x00004C:
    push -5s
    stog.flag[(int32 (+ self.i self.argument2))] = (int32 (+ (+ self.i self.argument2) 1s)):flag
    self.i = (+ self.i 1s)
    goto 0x000038
0x0000B8:
    call (script_execute[]:int32 (var 75s))
    call (script_execute[]:int32 (var 300s) (var 71s))
0x0000E8:
    exit
