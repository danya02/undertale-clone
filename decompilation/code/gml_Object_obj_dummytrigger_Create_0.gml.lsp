0x000000:
    if !(> global.plot 115s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.con = 0s
    self.touched = 0s
    self.image_xscale = 100s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 9s) goto 0x000080
0x000064:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x000094
0x000088:
    self.murder = 1s
0x000094:
    exit
