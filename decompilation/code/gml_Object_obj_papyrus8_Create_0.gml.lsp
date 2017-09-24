0x000000:
    if !(> global.plot 100s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x000050
0x000024:
    stog.flag[68s] = 0s
    self.conversation = 0s
    self.image_yscale = 999s
0x000050:
    self.look = 0s
    self.spinagain = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0000A4
0x000088:
    push -5s
    push (== 27s:flag 0s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000B8
0x0000AC:
    self.murder = 1s
0x0000B8:
    exit
