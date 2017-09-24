0x000000:
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x000034
0x000024:
    self.mode = 1s
    goto 0x000040
0x000034:
    self.mode = 0s
0x000040:
    self.side = 0s
    self.oldside = 0s
    self.dmg = 9s
    self.shake = 0s
    self.rate = global.firingrate
0x000080:
    exit
