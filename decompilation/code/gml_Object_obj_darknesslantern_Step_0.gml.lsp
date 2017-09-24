0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (<= self.glowtimer 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000084
0x000030:
    if !(== (snd_isplaying[]:int32 (var 13s)) 0s) goto 0x000060
0x00004C:
    call (snd_play[]:int32 (var 13s))
0x000060:
    self.myinteract = 0s
    self.glowtimer = 30s
    self.glowup = 1s
0x000084:
    self.glowtimer = (- self.glowtimer 1s)
    if !(<= self.glowtimer 0s) goto 0x0000BC
0x0000B0:
    self.glowup = 0s
0x0000BC:
    if !(== self.glowup 1s) goto 0x000104
0x0000D0:
    if !(> 1098.glowamt 0s) goto 0x000104
0x0000E4:
    [obj_darknesspuzzle].glowamt = (- 1098.glowamt 0.07d)
0x000104:
    if !(== self.myinteract 1s) goto 0x000124
0x000118:
    self.myinteract = 0s
0x000124:
    exit
