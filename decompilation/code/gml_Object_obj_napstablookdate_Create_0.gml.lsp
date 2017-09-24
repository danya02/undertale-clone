0x000000:
    push -5s
    if !(== 7s:flag 0s) goto 0x000030
0x00001C:
    push (< (scr_murderlv[]:int32 ) 10s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000B0
0x000038:
    self.nap = (instance_create[]:int32 (var 1132s) (var 70s) (var 210s))
    self.image_xscale = 4s
    push -5s
    if !(> 93s:flag 0s) goto 0x000094
0x000088:
    self.y = 20s
0x000094:
    self.con = 0s
    self.wavein = 0s
    goto 0x0000C0
0x0000B0:
    call (instance_destroy[]:int32 )
    exit
0x0000C0:
    exit
