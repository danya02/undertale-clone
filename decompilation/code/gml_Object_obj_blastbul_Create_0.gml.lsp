0x000000:
    self.size = 5s
    call (snd_play[]:int32 (var 21s))
    self.maxsize = 6.2d
    self.pop = (scr_monstersum[]:int32 )
    if !(> self.pop 1s) goto 0x000080
0x000058:
    self.size = 4.5d
    self.maxsize = 5.5d
0x000080:
    exit
