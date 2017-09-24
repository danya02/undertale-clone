0x000000:
    if !(== self.tvmode 4s) goto 0x000020
0x000014:
    self.tvmode = 0s
0x000020:
    if !(> global.floweyhp 0s) goto 0x00004C
0x000034:
    pushenv 1586s 0x000048
0x00003C:
    self.frozen = 0s
0x000048:
    popenv 0x00003C
0x00004C:
    exit
