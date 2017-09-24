0x000000:
    self.myinteract = 0s
    self.con = 0s
    self.heartx = 0s
    self.hearty = 0s
    self.trigger = 0s
    if !(> global.plot 160s) goto 0x00005C
0x000050:
    self.trigger = 1s
0x00005C:
    if !(> global.plot 167s) goto 0x00007C
0x000070:
    self.trigger = 2s
0x00007C:
    self.dirdir = 0s
    self.ourx = 0s
    self.oury = 0s
    self.rectaur = 0s
    self.rect = 0s
    [obj_mainchara].cutscene = 1s
0x0000C4:
    exit
