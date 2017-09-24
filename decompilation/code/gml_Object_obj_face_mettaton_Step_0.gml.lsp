0x000000:
    self.image_index = global.faceemotion
    if !(== global.facechoice 0s) goto 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    exit
