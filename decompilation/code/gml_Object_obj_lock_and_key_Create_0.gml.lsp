0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.salad = (instance_create[]:int32 (var 6s) (+ self.y 5s) self.x)
    push -5s
    if !(== 454s:flag 1s) goto 0x00009C
0x000070:
    pushenv (int32 self.salad) 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    popenv 0x000080
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    self.con = 0s
0x0000A8:
    exit
