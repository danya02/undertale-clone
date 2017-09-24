0x000000:
    self.con = 0s
    self.image_xscale = 2s
    if !(> global.plot 205s) goto 0x00003C
0x00002C:
    call (instance_destroy[]:int32 )
    goto 0x000064
0x00003C:
    self.asg = (instance_create[]:int32 (var 1322s) (var 300s) (var 130s))
0x000064:
    exit
