0x000000:
    push self.y
    if !(> -5s (+ 3s:idealborder 4s)) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    exit
