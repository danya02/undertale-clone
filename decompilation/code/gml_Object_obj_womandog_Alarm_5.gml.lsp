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
    global.border = 8s
    if !(bool (instance_exists[]:int32 (var 245s))) goto 0x0000A8
0x000088:
    if !(<= 245.mycommand 50s) goto 0x0000A8
0x00009C:
    global.border = 9s
0x0000A8:
    exit
