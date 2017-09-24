0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0.1d
    push -5s
    if !(> 25s:flag 5s) goto 0x000070
0x000054:
    push -5s
    push (== 7s:flag 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    self.con = 0s
    self.xed = 0s
0x00009C:
    exit
