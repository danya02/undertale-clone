0x000000:
    pushenv (int32 self.blconwd) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    pushenv (int32 self.blcon) 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    pushenv (int32 self.blconwd2) 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    popenv 0x000050
0x000060:
    pushenv (int32 self.blcontweet) 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    popenv 0x000070
0x000080:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    global.border = 7s
0x0000B0:
    exit
