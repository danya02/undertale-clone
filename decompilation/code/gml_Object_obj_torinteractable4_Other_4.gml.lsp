0x000000:
    if (< global.plot 5.4d) goto 0x000038
0x00001C:
    push (> global.plot 6.5d)
    goto 0x00003C
0x000038:
    push 1s
0x00003C:
    if !pop goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    self.direction = 270s
0x000058:
    exit
