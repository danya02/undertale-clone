0x000000:
    if !(!= self.fadercreator global.faceemotion) goto 0x00003C
0x000018:
    call (instance_create[]:int32 (var 98s) (var 0s) (var 0s))
0x00003C:
    stog.alarm[0s] = 3s
    self.fadercreator = global.faceemotion
0x000060:
    exit
