0x000000:
    pushenv (int32 self.col) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    pushenv 265s 0x000034
0x000028:
    self.down = 1s
0x000034:
    popenv 0x000028
0x000038:
    self.dir = self.idealdir
    self.flash = 5s
    call (snd_play[]:int32 self.sound0)
0x000068:
    exit
