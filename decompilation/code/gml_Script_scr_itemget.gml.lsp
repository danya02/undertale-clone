0x000000:
    self.i = 0s
    self.loop = 1s
    self.noroom = 0s
    stog.item[8s] = 999s
    if !(== self.loop 1s) goto 0x0000DC
0x00004C:
    push -5s
    if !(== (int32 self.i):item 0s) goto 0x000094
0x000070:
    stog.item[(int32 self.i)] = self.argument0
    goto 0x0000DC
0x000094:
    if !(== self.i 8s) goto 0x0000C0
0x0000A8:
    call (script_execute[]:int32 (var 87s))
    goto 0x0000DC
0x0000C0:
    self.i = (+ self.i 1s)
    goto 0x000038
0x0000DC:
    call (script_execute[]:int32 (var 75s))
    call (script_execute[]:int32 (var 82s))
0x000104:
    exit
