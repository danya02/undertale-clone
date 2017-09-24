0x000000:
    if !(== self.room 8s) goto 0x000028
0x000014:
    push (>= global.plot 4s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    if !(>= global.plot 5.5d) goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    self.direction = 270s
0x000070:
    exit
