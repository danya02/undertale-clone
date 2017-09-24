0x000000:
    if !(== self.j 1s) goto 0x00002C
0x000014:
    global.menuno = 6s
    global.interact = 5s
0x00002C:
    if !(== self.j 2s) goto 0x000058
0x000040:
    global.menuno = 7s
    global.interact = 5s
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    exit
