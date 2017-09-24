0x000000:
    if !(== self.ditch 0s) goto 0x000078
0x000014:
    pushenv (int32 self.blconwd) 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    pushenv (int32 self.blcon) 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
0x000078:
    exit
