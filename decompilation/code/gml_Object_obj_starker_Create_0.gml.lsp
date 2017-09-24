0x000000:
    self.subject = 2.87294723489373E+20d
    push -5s
    if !(== 85s:flag 1s) goto 0x000040
0x000030:
    call (instance_destroy[]:int32 )
    exit
0x000040:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000094
0x000058:
    [obj_mainchara].usprite = 1007s
    [obj_mainchara].rsprite = 1008s
    [obj_mainchara].dsprite = 1005s
    [obj_mainchara].lsprite = 1009s
    self.subject = 1570s
0x000094:
    exit
