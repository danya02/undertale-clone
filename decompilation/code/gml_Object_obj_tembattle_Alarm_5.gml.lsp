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
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    global.border = 7s
    if !(>= self.mycommand 25s) goto 0x000090
0x000084:
    global.border = 10s
0x000090:
    call (SCR_BORDERSETUP[]:int32 )
    self.image_index = 0s
0x0000A8:
    exit
