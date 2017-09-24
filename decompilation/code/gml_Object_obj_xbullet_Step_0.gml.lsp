0x000000:
    if !(< self.x (- self.xstart 260s)) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    if !(> self.x (+ self.xstart 260s)) goto 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    exit
