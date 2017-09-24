0x000000:
    self.con = 0s
    self.image_yscale = 5s
    if !(> global.plot 134s) goto 0x00003C
0x00002C:
    call (instance_destroy[]:int32 )
    goto 0x000094
0x00003C:
    [obj_mainchara].cutscene = 1s
    stog.view_yview[0s] = 240s
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    stog.view_object[0s] = -4s
0x000094:
    self.yoffset1 = 240s
0x0000A0:
    exit
