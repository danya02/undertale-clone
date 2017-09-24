0x000000:
    if !(> global.plot 10.5d) goto 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.talkedto = 0s
    if !(== (murdererlv1[]:int32 ) 1s) goto 0x000088
0x00006C:
    push (< global.plot 10.4d)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000A4
0x000090:
    global.plot = 10.4d
0x0000A4:
    exit
