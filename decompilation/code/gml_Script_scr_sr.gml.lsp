0x000000:
    if !(bool (instance_exists[]:int32 (var 264s))) goto 0x00018C
0x000018:
    if !(== self.argument0 4s) goto 0x00004C
0x00002C:
    self.argument0 = (floor[]:int32 (random[]:int32 (var 4s)))
0x00004C:
    if !(== self.argument1 3s) goto 0x000080
0x000060:
    self.argument1 = (floor[]:int32 (random[]:int32 (var 2s)))
0x000080:
    if !(== self.argument2 0s) goto 0x0000A8
0x000094:
    push (!= self.argument1 2s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000BC
0x0000B0:
    self.argument2 = 1s
0x0000BC:
    if !(== self.argument3 0s) goto 0x0000DC
0x0000D0:
    self.argument3 = 1s
0x0000DC:
    [obj_greenspeargen].spearmax = (+ 264.spearmax 1s)
    push self.argument0
    push 264s
    stog.speardir[] = (int32 self.i)
    push self.argument1
    push 264s
    stog.speartype[] = (int32 self.i)
    push self.argument2
    push 264s
    stog.timemod[] = (int32 self.i)
    push self.argument3
    push 264s
    stog.speedmod[] = (int32 self.i)
    self.i = (+ self.i 1s)
0x00018C:
    exit
