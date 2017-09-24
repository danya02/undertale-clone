0x000000:
    pushenv (int32 self.mypart1) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    pushenv (int32 self.mypart2) 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    self.image_index = 2s
    stog.alarm[11s] = 30s
0x000060:
    exit
