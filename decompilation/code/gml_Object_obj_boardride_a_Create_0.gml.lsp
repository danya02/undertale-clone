0x000000:
    if !(== self.room 91s) goto 0x000028
0x000014:
    push (> global.plot 108s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000060
0x000030:
    call (instance_create[]:int32 (var 2s) self.y self.x)
    call (instance_destroy[]:int32 )
0x000060:
    self.interacted = 0s
    self.active = 1s
    self.finalx = 1000s
0x000084:
    exit
