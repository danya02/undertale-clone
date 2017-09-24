0x000000:
    if (> global.plot 126s) goto 0x000028
0x000014:
    push (>= (scr_murderlv[]:int32 ) 12s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    self.con = 0s
    self.image_yscale = 7s
0x000054:
    exit
