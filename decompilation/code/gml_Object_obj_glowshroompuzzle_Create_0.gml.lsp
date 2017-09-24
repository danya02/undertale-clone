0x000000:
    [obj_glowshroom].glow = 1s
    [obj_glowshroom].image_index = 1s
    self.solvent = 0s
    push -5s
    if !(== 270s:flag 1s) goto 0x00004C
0x000040:
    self.solvent = 1s
0x00004C:
    if !(> global.plot 117s) goto 0x00006C
0x000060:
    self.solvent = 1s
0x00006C:
    if !(== self.solvent 1s) goto 0x000098
0x000080:
    [obj_glowshroom].glow = 0s
    [obj_glowshroom].image_index = 0s
0x000098:
    self.glowtotal = 0s
0x0000A4:
    exit
