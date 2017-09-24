0x000000:
    if !(== self.finishedreading 1s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    if !(> self.line 10s) goto 0x000050
0x000034:
    push (== (instance_exists[]:int32 (var 193s)) 0s)
    goto 0x000054
0x000050:
    push 0s
0x000054:
    if !pop goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    exit
