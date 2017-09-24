0x000000:
    stog.flag[200s] = self.argument3
    push self.argument2
    if !(> (- -5s (int32 self.argument3):flag) 0s) goto 0x0000DC
0x000048:
    push self.argument2
    self.populationfactor = (/ self.argument2 (- -5s (int32 self.argument3):flag))
    if !(> self.populationfactor 8s) goto 0x0000A0
0x000094:
    self.populationfactor = 8s
0x0000A0:
    self.steps = (* (+ self.argument0 (round[]:int32 (random[]:int32 self.argument1))) self.populationfactor)
    goto 0x000174
0x0000DC:
    if (== self.alldead 0s) goto 0x000104
0x0000F0:
    push (== self.alldead 1s)
    goto 0x000108
0x000104:
    push 1s
0x000108:
    if !pop goto 0x00011C
0x00010C:
    self.steps = 20s
    goto 0x000154
0x00011C:
    self.steps = (* (+ self.argument0 (round[]:int32 (/ self.argument1 (double 2s)))) 5s)
0x000154:
    if !(== self.alldead 0s) goto 0x000174
0x000168:
    self.alldead = 1s
0x000174:
    exit
