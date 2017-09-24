0x000000:
    push -5s
    if !(== 52s:flag 1s) goto 0x000028
0x00001C:
    call (instance_destroy[]:int32 )
0x000028:
    if !(>= global.plot 64s) goto 0x00006C
0x00003C:
    call (instance_create[]:int32 (var 946s) self.y self.x)
    call (instance_destroy[]:int32 )
0x00006C:
    self.myinteract = 0s
    self.conversation = 0s
    self.td = 0s
0x000090:
    exit
