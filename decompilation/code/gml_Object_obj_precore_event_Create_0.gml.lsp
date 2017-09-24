0x000000:
    self.con = 0s
    if !(> global.plot 175s) goto 0x000030
0x000020:
    call (instance_destroy[]:int32 )
    goto 0x000080
0x000030:
    self.dm1 = (instance_create[]:int32 (var 1260s) (var 150s) (var 140s))
    self.dm2 = (instance_create[]:int32 (var 1260s) (var 150s) (var 160s))
0x000080:
    self.image_yscale = 1s
    self.image_xscale = 4s
0x000098:
    exit
