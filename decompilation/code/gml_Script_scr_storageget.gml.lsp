0x000000:
    self.i = 0s
    self.loop = 1s
    self.noroom = 0s
    stog.flag[(int32 (+ self.argument1 10s))] = 999s
    if !(== self.loop 1s) goto 0x000104
0x00005C:
    push -5s
    if !(== (int32 (+ self.i self.argument1)):flag 0s) goto 0x0000BC
0x00008C:
    stog.flag[(int32 (+ self.i self.argument1))] = self.argument0
    goto 0x000104
0x0000BC:
    if !(== self.i 10s) goto 0x0000E8
0x0000D0:
    call (script_execute[]:int32 (var 87s))
    goto 0x000104
0x0000E8:
    self.i = (+ self.i 1s)
    goto 0x000048
0x000104:
    call (script_execute[]:int32 (var 75s))
    call (script_execute[]:int32 (var 300s) (var 71s))
0x000134:
    exit
